//
//  TableView.swift
//  SwiftUICell
//
//  Created by Алексей on 27.12.2022.
//

import SwiftUI

struct TableView: View {
    var body: some View {
        VStack {
            UserCell(firstName: "Alexey", secondName: "Sidorenko", avatarImageName: "person.fill")
            GroupCell(groupName: "My group", groupAvatarName: "rectangle.3.group.fill")
        }.padding(10)
    }
}

struct TableView_Previews: PreviewProvider {
    static var previews: some View {
        TableView()
    }
}
