//
//  PreviewProvider.swift
//  threads
//
//  Created by Yazan Ghunaim on 8/26/23.
//

import SwiftUI
import Firebase

extension PreviewProvider {
    static var dev: DeveloperPreview {
        return DeveloperPreview.shared
    }
}

class DeveloperPreview {
    static let shared = DeveloperPreview()
    
    let user = User(id: NSUUID().uuidString, fullName: "Louai Ghunaim", email: "louaighunaim@gmail.con", userName: "louaighunaim", profileImageURL: nil, bio: nil)
    
    let thread = Thread(ownerUid: "123", caption: "Dev thread", timeStamp: Timestamp(), likes: 0)
}
