//
//  ListViewRow.swift
//  ios-listview
//
//  Created by Varun Makwana on 12/15/23.
//

import SwiftUI

struct ListViewRow: View {
    
    var item : Item
    
    var body: some View {
        HStack {
            Text(item.name)
            Spacer()
        }
    }
}

struct ListViewRow_Previews: PreviewProvider {
    static var previews: some View {
        ListViewRow(item: items[0])
    }
}
