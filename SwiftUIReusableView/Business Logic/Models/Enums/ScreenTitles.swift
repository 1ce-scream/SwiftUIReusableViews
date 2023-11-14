//
//  ScreenTitles.swift
//  SwiftUIReusableView
//
//  Created by Vitaliy Talalay on 14.11.2023.
//

import Foundation

enum ScreenTitles: String {
    case personList = "person.list.screen.title"
    case mainView = "main.view.screen.title"
    case todos = "todo.list.screen.title"
    
    func localized() -> String {
        NSLocalizedString(self.rawValue, comment: "")
    }
}
