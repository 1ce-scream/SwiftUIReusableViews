//
//  EnvironmentValues+Ext.swift
//  SwiftUIReusableView
//
//  Created by Vitaliy Talalay on 14.11.2023.
//

import struct SwiftUI.EnvironmentValues

extension EnvironmentValues {
    var avatarImageShape: AvatarImageShape {
        get { self[AvatarImageShapeKey.self] }
        set { self[AvatarImageShapeKey.self] = newValue }
    }
}

extension EnvironmentValues {
    var editProfileHandler: (() -> Void)? {
        get { self[AvatarEditProfileHandler.self] }
        set { self[AvatarEditProfileHandler.self] = newValue }
    }
}
