//
//  MessageCellView.swift
//  ios-chat-app
//
//  Created by Varun Makwana on 2/18/24.
//

import SwiftUI

struct MessageCell: View {
    var contentMessage: String
    var isCurrentUser: Bool
    
    var body: some View {
        Text(contentMessage)
            .padding(10)
            .foregroundColor(isCurrentUser ? Color.white : Color.black)
            .background(isCurrentUser ? Color.blue : Color(UIColor.systemGray6 ))
            .cornerRadius(10)
    }
}

struct MessageCellView_Previews: PreviewProvider {
    static var previews: some View {
        MessageCell(contentMessage: "message cell.", isCurrentUser: false)
    }
}
