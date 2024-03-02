//
//  Activity.swift
//  ios-listview
//
//  Created by Varun Makwana on 12/15/23.
//

import Foundation
import SwiftUI

struct Item: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var description: String
    var time: String
}
