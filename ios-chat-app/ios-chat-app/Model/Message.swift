//
//  Message.swift
//  ios-chat-app
//
//  Created by Varun Makwana on 2/16/24.
//

import Foundation

struct Message: Hashable {
    var id = UUID()
    var content: String
    var isCurrentUser: Bool
}

