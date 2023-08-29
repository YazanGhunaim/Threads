//
//  ThreadService.swift
//  threads
//
//  Created by Yazan Ghunaim on 8/29/23.
//

import Firebase
import Foundation
import FirebaseFirestoreSwift

struct ThreadService {
    
    static func uploadThread(_ thread: Thread) async throws {
        guard let threadData = try? Firestore.Encoder().encode(thread) else { return }
        try await Firestore.firestore().collection("threads").addDocument(data: threadData)
    }
    
}
