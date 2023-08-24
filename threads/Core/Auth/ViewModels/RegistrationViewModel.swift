//
//  RegistrationViewModel.swift
//  threads
//
//  Created by Yazan Ghunaim on 8/24/23.
//

import Foundation

class RegistrationViewModel: ObservableObject {
    @Published var email = ""
    @Published var passowrd = ""
    @Published var fullName = ""
    @Published var userName = ""
    
    @MainActor // guaranteed to run on main thread
    func createUser() async throws {
        try await AuthService.shared.createUser(
            withEmail: email,
            password: passowrd,
            fullname: fullName,
            username: userName
        )
    }
}
