//
//  BeginView.swift
//  ListWhatToDo
//
//  Created by Tran Hieu on 12/05/2023.
//

import SwiftUI

struct BeginView: View {
    var body: some View {
        Text("""
             Click Add to begin...
            """)
            .foregroundColor(.gray.opacity(0.9))
        
    }
}

struct BeginView_Previews: PreviewProvider {
    static var previews: some View {
        BeginView()
    }
}
