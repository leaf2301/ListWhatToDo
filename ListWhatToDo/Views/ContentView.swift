//
//  ContentView.swift
//  ListWhatToDo
//
//  Created by Tran Hieu on 11/05/2023.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var vm: ListViewModel
    
    var body: some View {
        List {
            if vm.items.isEmpty {
                Text("""
                     Click Add to begin...
                    """)
                    .foregroundColor(.gray.opacity(0.9))
            }
            ForEach(vm.items) { item in
                HStack {
                    
                    Text(item.itemName)
                }
            }
            .onDelete(perform: vm.deleteRow)
            .onMove(perform: vm.moveRow)
        }
        .listStyle(.plain)
        .navigationTitle("Todo List 📝")
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                EditButton()
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink {
                    AddView()
                } label: {
                    Text("Add")
                }
            }
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView()
        }
        .environmentObject(ListViewModel())
    }
}
