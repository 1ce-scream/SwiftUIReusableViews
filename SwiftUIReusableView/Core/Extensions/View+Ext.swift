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
