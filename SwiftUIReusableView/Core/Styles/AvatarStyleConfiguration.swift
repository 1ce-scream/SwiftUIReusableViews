//
//  AvatarStyleConfiguration.swift
//  SwiftUIReusableView
//
//  Created by Vitaliy Talalay on 14.11.2023.
//

import SwiftUI

struct AvatarStyleConfiguration {
    let title: String
    let subTitle: String
    let detailsTitle: String
    let imageName: String
}

struct DefaultAvatarStyle: AvatarStyle {
    @Environment(\.avatarImageShape) var imageShape
    @Environment(\.editProfileHandler) var editProfileHandler
    
    @ViewBuilder
    private func profileImage(_ configuration: Configuration) -> some View {
        if imageShape == .round {
            Image(configuration.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 75, height: 75, alignment: .center)
                .clipShape(.circle)
                .accessibilityLabel(configuration.title)
        }
        else {
            Image(configuration.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 75, height: 75, alignment: .center)
                .accessibilityLabel(configuration.title)
        }
    }
    
    private func titleLabel(_ text: String) -> some View {
        Text(text)
            .font(.headline)
    }
    
    private func detailsLabel(_ text: String) -> some View {
        Text(text)
            .font(.subheadline)
    }
    
    func makeBody(configuration: Configuration) -> some View {
        HStack(alignment: .top) {
            profileImage(configuration)
                .onTapGesture {
                    if let editProfileHandler {
                        editProfileHandler()
                    }
                }
            VStack(alignment: .leading) {
                titleLabel(configuration.title)
                detailsLabel(configuration.subTitle)
                detailsLabel(configuration.detailsTitle)
            }
            Spacer()
        }
        .accessibilityElement(children: .contain)
        .accessibilityLabel(configuration.title)
    }
}
