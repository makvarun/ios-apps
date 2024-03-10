//
//  MessageData.swift
//  ios-chat-app
//
//  Created by Varun Makwana on 3/9/24.
//

import Foundation

struct MessageData {
    
    static let messages = [
        
        Message(content: "Hello !", isCurrentUser: true),
        
        Message(content: "Good morning", isCurrentUser: false),
        Message(content: "How can I assist you?", isCurrentUser: true),
        Message(content: "I am looking for latest deals and discounts.", isCurrentUser: false),
        Message(content: "you can vist this website to find latest discounts.", isCurrentUser: true),
        Message(content: "Looks like discounts are really good.", isCurrentUser: false),
        Message(content: "I am plannin to buy few items.", isCurrentUser: true),
        Message(content: "Enjoy !!", isCurrentUser: false)
      
    ]
}
