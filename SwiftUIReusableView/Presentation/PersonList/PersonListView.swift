//
//  PersonListView.swift
//  SwiftUIReusableView
//
//  Created by Vitaliy Talalay on 14.11.2023.
//

import SwiftUI

struct PersonListView: View {
    @State private var people: [Person] = Person.samples
    
    var body: some View {
        NavigationStack {
            List(people) { person in
                PersonView(person)
            }
            .navigationTitle(ScreenTitles.personList.localized())
            .navigationBarTitleDisplayMode(.automatic)
        }
    }
}

#Preview {
    PersonListView()
}
