//
//  User.swift
//  threads
//
//  Created by Yazan Ghunaim on 8/24/23.
//

import Foundation

struct User: Identifiable, Codable {
    let id: String
    let fullName: String
    let email: String
    let userName: String
    
    let profileImageURL: String?
    let bio: String?
}
