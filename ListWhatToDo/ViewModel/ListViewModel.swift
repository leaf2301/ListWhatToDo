//
//  ListViewModel.swift
//  ListWhatToDo
//
//  Created by Tran Hieu on 11/05/2023.
//

import Foundation

class ListViewModel: ObservableObject {
    @Published var items: [ListModel] = []
    
    
    
    
    
    
    func deleteRow(index: IndexSet) {
        items.remove(atOffsets: index)
    }
    
    func moveRow(index: IndexSet, int: Int) {
        items.move(fromOffsets: index, toOffset: int)
    }
}
