//
//  ChatData.swift
//  Line
//
//  Created by 양시관 on 3/9/24.
//

import Foundation

struct ChatData: Hashable, Identifiable {
    var dateStr: String
    var chats: [Chat]
    var id: String { dateStr }
}
