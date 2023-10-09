//
//  ListView.swift
//  ToDoApp
//
//  Created by Saba Gogrichiani on 09.10.23.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [String] = [
        "This is the first title",
        "This is the second!",
        "Third"
    ]
    
    var body: some View {
            List {
                ForEach(items, id: \.self) { item in
                    ListRowView(title: item)
                }
            }
            .listStyle(PlainListStyle())
            .navigationTitle("Todo List 📝")
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    EditButton()
                }
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink("Add", destination: AddView())
                }
            }
            
    }
}

#Preview {
    NavigationStack {
        ListView()
    }
}

