//
//  ListView.swift
//  ios-listview
//
//  Created by Varun Makwana on 12/15/23.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        List(items, id: \.id) { item in
            ListViewRow(item: item)
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
