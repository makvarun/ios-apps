//
//  MessageView.swift
//  ios-chat-app
//
//  Created by Varun Makwana on 2/16/24.
//

import SwiftUI

struct MessageView: View {
    var currentMessage: Message
        
        var body: some View {
            HStack(alignment: .bottom, spacing: 10) {
                if !currentMessage.isCurrentUser {
                    Image(systemName: "person.circle.fill")
                        .resizable()
                        .frame(width: 40, height: 40, alignment: .center)
                        .cornerRadius(20)
                } else {
                    Spacer()
                }
                MessageCell(contentMessage: currentMessage.content,
                            isCurrentUser: currentMessage.isCurrentUser)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
        }
}

struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            
            MessageView(currentMessage: Message(content: "current user: message 1", isCurrentUser: true))
            
            MessageView(currentMessage: Message(content: "message 2", isCurrentUser: false))
            
            MessageView(currentMessage: Message(content: "current user: message 3", isCurrentUser: true))
            
        }
    }
}
