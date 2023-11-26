//
//  Chat.swift
//  ChatViewWithSwiftUI
//
//  Created by KOTA TAKAHASHI on 2023/11/26.
//

import Foundation

struct Chat: Decodable {
    let id: String
    let message: [Message]
}
