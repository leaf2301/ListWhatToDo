//
//  ItemView.swift
//  ListWhatToDo
//
//  Created by Tran Hieu on 13/05/2023.
//

import SwiftUI

struct ItemView: View {
    var item: ListModel
    
    var body: some View {
        HStack {
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
            
            Text(item.itemName)
            Spacer()
        }
        .padding(.vertical, 8)
    }
}

struct ItemView_Previews: PreviewProvider {
    static var item1 = ListModel(itemName: "Test1", isCompleted: false)
    static var item2 = ListModel(itemName: "Test2", isCompleted: true)
    
    static var previews: some View {
        Group {
            ItemView(item: item1)
            ItemView(item: item2)
        }
        
    }
}
