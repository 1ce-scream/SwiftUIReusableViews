//
//  Todo.swift
//  SwiftUIReusableView
//
//  Created by Vitaliy Talalay on 14.11.2023.
//

import Foundation

struct Todo: Identifiable {
    let id = UUID()
    var title: String
    var isCompleted: Bool = false
}

extension Todo {
    static let samples = [
        Todo(title: "Build sample app", isCompleted: true),
        Todo(title: "Implement custom Toggle style"),
        Todo(title: "???"),
        Todo(title: "PROFIT!!!")
    ]
}
