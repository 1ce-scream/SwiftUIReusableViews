//
//  PersonView.swift
//  SwiftUIReusableView
//
//  Created by Vitaliy Talalay on 14.11.2023.
//

import SwiftUI

struct PersonView: View {
    @Environment(\.avatarImageShape) private var imageShape
    private var person: Person
    
    init(
        _ person: Person
    ) {
        self.person = person
    }
    
    var body: some View {
        HStack(alignment: .top) {
            profileImage
            
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
    @ViewBuilder
    private var profileImage: some View {
        if imageShape == .round {
            Image(person.profileImageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 75, height: 75, alignment: .center)
                .clipShape(.circle)
                .accessibilityLabel(person.fullName)
        } else {
            Image(person.profileImageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 75, height: 75, alignment: .center)
                .accessibilityLabel(person.fullName)
        }
    }
    
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
    VStack {
        PersonView(Person.sample)
            .padding()
            .avatarImageShape(.rectangle)
        
        PersonView(Person.sample)
            .padding()
    }
}
