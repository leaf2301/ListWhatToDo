//
//  AddView.swift
//  ListWhatToDo
//
//  Created by Tran Hieu on 11/05/2023.
//

import SwiftUI

struct AddView: View {
    
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var vm: ListViewModel
    
    @State private var textField: String = ""
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("Text something here...", text: $textField)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color.pink.opacity(0.3))
                    .cornerRadius(10)
                
                Button {
                    vm.addNote(text: textField)
                    dismiss()
                } label: {
                    Text("save".uppercased())
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(checkAppropriate() ? Color.blue : Color.gray.opacity(0.9))
                        .cornerRadius(10)
                }
                .disabled(!checkAppropriate())
            }
            .padding(14)
        }
        .navigationTitle("Add some note ✏️")
    }
    
    func checkAppropriate() -> Bool{
        if textField.count < 3 {
            return false
        }
        return true
    }
    
    
    
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AddView()
        }
        .environmentObject(ListViewModel())
    }
}
