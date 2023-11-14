//
//  MainView.swift
//  SwiftUIReusableView
//
//  Created by Vitaliy Talalay on 14.11.2023.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink("main.view.link.title.people.list") {
                    PersonListView()
                }
                
                NavigationLink("main.view.link.title.custom.toggle") {
                    TodoListView()
                }
            }
            .navigationTitle(ScreenTitles.mainView.localized())
        }
    }
}

#Preview {
    MainView()
}
