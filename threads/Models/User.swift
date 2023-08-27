//
//  User.swift
//  threads
//
//  Created by Yazan Ghunaim on 8/24/23.
//

import Foundation

struct User: Identifiable, Codable, Hashable {
    let id: String
    let fullName: String
    let email: String
    let userName: String
    
    var profileImageURL: String?
    var bio: String?
}
