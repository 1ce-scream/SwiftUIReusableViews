//
//  PersonListView.swift
//  SwiftUIReusableView
//
//  Created by Vitaliy Talalay on 14.11.2023.
//

import SwiftUI

struct PersonListView: View {
    @State private var people: [Person] = Person.samples
    @State private var participants = Person.samples.filter { $0.isParticipant }
    
    var body: some View {
        List {
            Section("person.list.participants.section.title") {
                ForEach(participants) { person in
                    PersonView(
                        person.fullName,
                        subTitle: person.jobtitle,
                        detailsTitle: person.affiliation,
                        image: person.profileImageName
                    )
                        .avatarImageShape(.rectangle)
                }
            }
            Section("person.list.speakers.section.title") {
                ForEach(people) { person in
                    PersonView(
                        person.fullName,
                        subTitle: person.jobtitle,
                        detailsTitle: person.affiliation,
                        image: person.profileImageName
                    )
                        .avatarImageShape(.round)
                }
            }
        }
        .navigationTitle(ScreenTitles.personList.localized())
        .navigationBarTitleDisplayMode(.automatic)
    }
}

#Preview {
    NavigationStack {
        PersonListView()
    }
}
