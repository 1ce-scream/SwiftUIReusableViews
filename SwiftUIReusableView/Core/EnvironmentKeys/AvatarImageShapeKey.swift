//
//  AvatarImageShapeKey.swift
//  SwiftUIReusableView
//
//  Created by Vitaliy Talalay on 14.11.2023.
//

import protocol SwiftUI.EnvironmentKey

struct AvatarImageShapeKey: EnvironmentKey {
  static var defaultValue: AvatarImageShape = .round
}