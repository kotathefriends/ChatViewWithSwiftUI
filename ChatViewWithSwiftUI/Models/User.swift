//
//  User.swift
//  ChatViewWithSwiftUI
//
//  Created by KOTA TAKAHASHI on 2023/11/26.
//

import Foundation

struct User: Decodable {
    let id: String
    let name: String
    let image: String
    
    var isCurrentUser: Bool {
        self.id == User.currentuser.id
    }
    
    static var currentuser: User {
        User(id: "1", name: "カーキ", image: "user01")
    }
}
