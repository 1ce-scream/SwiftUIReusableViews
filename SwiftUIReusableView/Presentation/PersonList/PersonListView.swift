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
                HStack(alignment: .top) {
                    Image(person.profileImageName)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 75, height: 75, alignment: .center)
                        .clipShape(.circle)
                        .accessibilityLabel(person.fullName)
                    
                    VStack(alignment: .leading) {
                        Text(person.fullName)
                            .font(.headline)
                        Text(person.jobtitle)
                            .font(.subheadline)
                        Text(person.affiliation)
                            .font(.subheadline)
                    }
                }
                .accessibilityElement(children: .contain)
                .accessibilityLabel(person.fullName)
            }
            .navigationTitle(ScreenTitles.personList.localized())
            .navigationBarTitleDisplayMode(.automatic)
        }
    }
}

#Preview {
    PersonListView()
}
