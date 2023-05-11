//
//  ListViewModel.swift
//  ListWhatToDo
//
//  Created by Tran Hieu on 11/05/2023.
//

import Foundation

class ListViewModel: ObservableObject {
    @Published var items: [ListModel] = [] {
        didSet {
            if let encoded = try? JSONEncoder().encode(items) {
                UserDefaults.standard.set(encoded, forKey: "Keyy")
            }
        }
    }
    
    init() {
        if let savedItems = UserDefaults.standard.data(forKey: "Keyy") {
            if let decodedItem = try? JSONDecoder().decode([ListModel].self, from: savedItems) {
                items = decodedItem
                return
            }
        }
        
        items = []
    }
    
    
    
    
    
    func deleteRow(index: IndexSet) {
        items.remove(atOffsets: index)
    }
    
    func moveRow(index: IndexSet, int: Int) {
        items.move(fromOffsets: index, toOffset: int)
    }
    
    func addNote(text: String) {
        let textNote = ListModel(itemName: text, isCompleted: false)
        items.insert(textNote, at: 0)
    }
}
