//
//  ContentMessageView.swift
//  ios-chat-app
//
//  Created by Varun Makwana on 2/16/24.
//

import SwiftUI
import Combine

struct ContentView: View {
    @State var messages = MessageData.messages
    @State var newMessage: String = ""
    
    var body: some View {
        VStack {
            ScrollViewReader { svr in
                ScrollView {
                    LazyVStack {
                        ForEach(messages, id: \.self) { message in
                            MessageView(currentMessage: message)
                                .id(message)
                        }
                    }
                    .onReceive(Just(messages)) { _ in
                        withAnimation {
                            svr.scrollTo(messages.last, anchor: .bottom)
                        }
                        
                    }.onAppear {
                        withAnimation {
                            svr.scrollTo(messages.last, anchor: .bottom)
                        }
                    }
                }
                
                HStack {
                    TextField("Send a message", text: $newMessage)
                        .textFieldStyle(.roundedBorder)
                    Button(action: sendMessage)   {
                        Image(systemName: "paperplane")
                    }
                }
                .padding()
            }
        }
    }
    
    func sendMessage() {
        if !newMessage.isEmpty{
            messages.append(Message(content: newMessage, isCurrentUser: true))
            messages.append(Message(content: "Reply : " + newMessage , isCurrentUser: false))
            newMessage = ""
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
