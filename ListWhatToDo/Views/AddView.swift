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
    
    @State private var alertTitle: String = ""
    @State private var alertMessage: String = ""
    @State private var alertShowing: Bool = false
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("Text something here...", text: $textField)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color.pink.opacity(0.3))
                    .cornerRadius(10)
                
                Button {
                    getItem()
                    
                } label: {
                    Text("save".uppercased())
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(textField.count < 3 ? Color.gray.opacity(0.9): Color.accentColor)
                        .cornerRadius(10)
                }
            }
            .padding(14)
        }
        .navigationTitle("Add some note ✏️")
        .alert(alertTitle, isPresented: $alertShowing) {
            Button("OK") {}
        } message: {
            Text(alertMessage)
        }
    }
    
    func getItem() {
        if checkAppropriate() {
            vm.addNote(text: textField)
            dismiss()
        }
    }
    
    func checkAppropriate() -> Bool{
        if textField.count < 3 {
            alertTitle = "Remind"
            alertMessage = "Your content should contain at least 3 letters."
            alertShowing = true
            
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
