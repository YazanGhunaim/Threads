//
//  LoginViewModel.swift
//  threads
//
//  Created by Yazan Ghunaim on 8/24/23.
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var passowrd = ""
    
    @MainActor // guaranteed to run on main thread
    func login() async throws {
        try await AuthService.shared.login(withEmail: email, password: passowrd)
    }
}
