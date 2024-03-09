//
//  NavigationDestination.swift
//  Line
//
//  Created by 양시관 on 3/9/24.
//

import Foundation


import Foundation

enum NavigationDestination: Hashable {
    case chat(chatRoomId: String, myUserId: String, otherUserId: String)
    case search(userId: String)
}
