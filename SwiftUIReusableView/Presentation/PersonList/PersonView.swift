//
//  PersonView.swift
//  SwiftUIReusableView
//
//  Created by Vitaliy Talalay on 14.11.2023.
//

import SwiftUI

struct PersonView: View {
    @Environment(\.avatarStyle) private var style
    
    private var title: String
    private var subTitle: String
    private var detailsTitle: String
    private var imageName: String
    
    init(
        _ title: String,
        subTitle: String,
        detailsTitle: String,
        image name: String
    ) {
        self.title = title
        self.subTitle = subTitle
        self.detailsTitle = detailsTitle
        self.imageName = name
    }
    
    var body: some View {
        let configuration = AvatarStyleConfiguration(
            title: title,
            subTitle: subTitle,
            detailsTitle: detailsTitle,
            imageName: imageName
        )
        
        AnyView(style.resolve(configuration: configuration))
    }
}

#Preview {
    VStack {
        let person = Person.sample
        
        PersonView(person.fullName,
                   subTitle: person.jobtitle,
                   detailsTitle: person.affiliation,
                   image: person.profileImageName)
        .avatarImageShape(.rectangle)
        .onEditProfile {
            print("You've tapped on the profile image!")
        }
        .padding()
        
        PersonView(person.fullName,
                   subTitle: person.jobtitle,
                   detailsTitle: person.affiliation,
                   image: person.profileImageName)
        .padding()
    }
}
