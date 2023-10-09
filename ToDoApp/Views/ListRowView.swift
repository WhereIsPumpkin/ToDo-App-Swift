//
//  ListRowView.swift
//  ToDoApp
//
//  Created by Saba Gogrichiani on 09.10.23.
//

import SwiftUI

struct ListRowView: View {
    
    let title: String
    
    var body: some View {
        HStack {
            Image(systemName: "checkmark.circle")
            Text(title)
            Spacer()
        }
    }
}

#Preview {
    ListRowView(title: "This is the first title!")
}
