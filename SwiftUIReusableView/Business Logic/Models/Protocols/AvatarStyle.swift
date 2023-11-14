//
//  AvatarStyle.swift
//  SwiftUIReusableView
//
//  Created by Vitaliy Talalay on 14.11.2023.
//

import SwiftUI

protocol AvatarStyle: DynamicProperty {
    associatedtype Body: View
    
    @ViewBuilder
    func makeBody(configuration: Configuration) -> Body
    
    typealias Configuration = AvatarStyleConfiguration
}

extension AvatarStyle {
    func resolve(configuration: Configuration) -> some View {
        ResolvedAvatarStyle(configuration: configuration, style: self)
    }
}

struct ResolvedAvatarStyle<Style: AvatarStyle>: View {
    var configuration: Style.Configuration
    var style: Style
    
    var body: Style.Body {
        style.makeBody(configuration: configuration)
    }
}
