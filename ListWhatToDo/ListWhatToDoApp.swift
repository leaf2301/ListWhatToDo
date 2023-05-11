//
//  ListWhatToDoApp.swift
//  ListWhatToDo
//
//  Created by Tran Hieu on 11/05/2023.
//

import SwiftUI

@main
struct ListWhatToDoApp: App {
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
            .environmentObject(listViewModel)
        }
    }
}
