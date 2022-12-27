//
//  GroupCell.swift
//  SwiftUICell
//
//  Created by Алексей on 27.12.2022.
//

import SwiftUI

struct GroupCell: View {
    
    let groupName: String
    let groupAvatarName: String
    
    var body: some View {
        GroupCellBuilder {
            Image(systemName: groupAvatarName)
            
            Text(groupName)
            
            Spacer()
            
        }
        .borderShadow(color: Color.green, shadowRadius: 5)
    }
}

struct GroupCellBuilder<Content: View>: View {
    
    let content: Content
    
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        HStack {
            content
        }
        .padding(5)
        .roundedBackground(color: Color.white)
    }
}

struct GroupCellView_Prewies: PreviewProvider {
    static var previews: some View {
        GroupCell(groupName: "My group", groupAvatarName: "rectangle.3.group.fill")
    }
}
