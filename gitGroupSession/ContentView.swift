//
//  ContentView.swift
//  gitGroupSession
//
//  Created by 정혜정 on 4/18/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Item]

    var body: some View {
        Text("branch Test")
            .foregroundColor(.blue)
        Text("Hello Git Session")
        Text("branch Test")
        Text("branch Test")
        Text("branch Test")
        Text("branch Test")
        Text("branch Test")
    }

    private func addItem() {
        withAnimation {
            let newItem = Item(timestamp: Date())
            modelContext.insert(newItem)
        }
    }

    private func deleteItems(offsets: IndexSet) {
        withAnimation {
            for index in offsets {
                modelContext.delete(items[index])
            }
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
