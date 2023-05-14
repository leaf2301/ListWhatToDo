//
//  ListModel.swift
//  ListWhatToDo
//
//  Created by Tran Hieu on 11/05/2023.
//

import Foundation

struct ListModel: Codable, Identifiable {
    let id: String
    var itemName: String
    var isCompleted: Bool
    
    init(id: String = UUID().uuidString, itemName: String, isCompleted: Bool) {
        self.id = UUID().uuidString
        self.itemName = itemName
        self.isCompleted = isCompleted
    }
    
    func updateCompletion() -> ListModel {
        return ListModel(id: id, itemName: itemName, isCompleted: !isCompleted)
    }
    

}
