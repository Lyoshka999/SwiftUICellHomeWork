//
//  BorderShadowModifier.swift
//  SwiftUICell
//
//  Created by Алексей on 27.12.2022.
//

import SwiftUI

struct BorderShadowModifier: ViewModifier {
    var color: Color
    var shadowRadius: CGFloat
    
    func body(content: Content) -> some View {
        content
            .overlay(RoundedRectangle(cornerRadius: 20)
                .stroke(Color.blue)
                .shadow(color: self.color, radius: self.shadowRadius)
            )
    }
}
