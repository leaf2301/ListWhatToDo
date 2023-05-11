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
    
    var body: some View {
        ScrollView {
            Text("Note something here")
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button("Back") {
                    dismiss()
                }
            }
        }
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
