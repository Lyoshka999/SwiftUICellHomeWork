//
//  RoundedBackgroundModifier.swift
//  SwiftUICell
//
//  Created by Алексей on 27.12.2022.
//

import SwiftUI

struct RoundedBackgroundModifier: ViewModifier {
    var color: Color
    
    func body(content: Content) -> some View {
        content
            .background(RoundedRectangle(cornerRadius: 20)
                .fill(color)
        )
    }
}
