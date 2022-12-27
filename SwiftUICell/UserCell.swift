//
//  UserCell.swift
//  SwiftUICell
//
//  Created by Алексей on 27.12.2022.
//

import SwiftUI

struct UserCell: View {
    
    let firstName: String
    let secondName: String
    let avatarImageName: String
    
    var body: some View {
        UserCellBuilder {
            Image(systemName: avatarImageName)
            
            Text(firstName)
                .foregroundColor(Color.purple)
            
            Text(secondName).foregroundColor(Color.purple)
            
            Spacer()
        }
    }
}

struct UserCellBuilder<Content: View>: View {
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
        .borderShadow(color: Color.blue, shadowRadius: 5)
    }
}

struct UserCellView_Previews: PreviewProvider {
    static var previews: some View {
        UserCell(firstName: "Alexey", secondName: "Sidorenko", avatarImageName: "person.fill")
    }
}
