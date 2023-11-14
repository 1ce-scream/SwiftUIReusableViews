//
//  PersonView.swift
//  SwiftUIReusableView
//
//  Created by Vitaliy Talalay on 14.11.2023.
//

import SwiftUI

struct PersonView: View {
    private var person: Person
    
    init(
        _ person: Person
    ) {
        self.person = person
    }
    
    var body: some View {
        HStack(alignment: .top) {
            Image(person.profileImageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 75, height: 75, alignment: .center)
                .clipShape(.circle)
                .accessibilityLabel(person.fullName)
            
            VStack(alignment: .leading) {
                titleLabel
                detailsLabel(person.jobtitle)
                detailsLabel(person.affiliation)
            }
            
            Spacer()
        }
        .accessibilityElement(children: .contain)
        .accessibilityLabel(person.fullName)
    }
}

private extension PersonView {
    private var titleLabel: some View {
        Text(person.fullName)
            .font(.headline)
    }
    
    private func detailsLabel(_ text: String) -> some View {
        Text(text)
            .font(.subheadline)
    }
}

#Preview {
    PersonView(Person.sample)
        .padding()
}
