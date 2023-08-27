//
//  UserService.swift
//  threads
//
//  Created by Yazan Ghunaim on 8/24/23.
//

import Firebase
import FirebaseFirestoreSwift

class UserService {
    @Published var currentUser: User?
    
    static let shared = UserService()
    
    init() {
        Task { try await fetchCurrentUser() }
    }
    
    @MainActor
    func fetchCurrentUser() async throws {
        guard let uid = Auth.auth().currentUser?.uid else { return } // make sure we have a currently logged in user and get their uid
        let snapshot = try await Firestore.firestore().collection("users").document(uid).getDocument()
        let user = try snapshot.data(as: User.self)
        self.currentUser = user
    }
    
    static func fetchUsers() async throws -> [User] {
        guard let currentUID = Auth.auth().currentUser?.uid else { return [] }
        let snapshot = try await Firestore.firestore().collection("users").getDocuments()
        let users = snapshot.documents.compactMap({ try? $0.data(as: User.self)})
        return users.filter({$0.id != currentUID})
    }
    
    func reset() {
        self.currentUser = nil
    }
    
    @MainActor
    func updateUserProfileImage(withImageURL imageURL: String) async throws {
        guard let currentUID = Auth.auth().currentUser?.uid else { return }
        try await Firestore.firestore().collection("users").document(currentUID).updateData([
            "profileImageURL" : imageURL
        ])
        
        self.currentUser?.profileImageURL = imageURL
    }
}
