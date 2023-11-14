//
//  View+Ext.swift
//  SwiftUIReusableView
//
//  Created by Vitaliy Talalay on 14.11.2023.
//

import protocol SwiftUI.View

extension View {
    func avatarImageShape(_ imageShape: AvatarImageShape) -> some View {
        environment(\.avatarImageShape, imageShape)
    }
}

extension View {
    public func onEditProfile(editProfileHandler: @escaping () -> Void) -> some View {
        environment(\.editProfileHandler, editProfileHandler)
    }
}

extension View {
    func avatarStyle(_ style: some AvatarStyle) -> some View {
        environment(\.avatarStyle, style)
    }
}
