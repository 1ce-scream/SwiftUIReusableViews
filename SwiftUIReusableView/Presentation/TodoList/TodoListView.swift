//
//  TodoListView.swift
//  SwiftUIReusableView
//
//  Created by Vitaliy Talalay on 14.11.2023.
//

import SwiftUI

struct TodoListView: View {
    @State private var todos = Todo.samples
    
    var body: some View {
        List($todos) { $todo in
            HStack {
                Toggle(isOn: $todo.isCompleted) {
                    Text(todo.title)
                }
                .toggleStyle(.reminder)
            }
        }
        .navigationTitle(ScreenTitles.todos.localized())
        .navigationBarTitleDisplayMode(.automatic)
    }
}

#Preview {
    NavigationStack {
        TodoListView()
    }
}
