//
//  ListModel.swift
//  ListWhatToDo
//
//  Created by Tran Hieu on 11/05/2023.
//

import Foundation

struct ListModel: Codable, Identifiable {
    var id = UUID().uuidString
    let itemName: String
    var isCompleted: Bool
}
