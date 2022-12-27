//
//  Extension.swift
//  SwiftUICell
//
//  Created by Алексей on 27.12.2022.
//

import SwiftUI

extension View {
    func borderShadow(color: Color, shadowRadius: CGFloat) -> some View {
        self
            .modifier(
            BorderShadowModifier(color: color, shadowRadius: shadowRadius)
        )
    }
    
    func roundedBackground(color: Color) -> some View {
        self
            .modifier(
                RoundedBackgroundModifier(color: color)
            )
    }
}
