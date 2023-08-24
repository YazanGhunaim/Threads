//
//  ContentViewModel.swift
//  threads
//
//  Created by Yazan Ghunaim on 8/24/23.
//

import Combine
import Foundation
import Firebase

class ContentViewModel: ObservableObject {
    @Published var userSession: FirebaseAuth.User?
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        setupSubscribers()
    }
    
    private func setupSubscribers() {
        AuthService.shared.$userSession.sink { [weak self] userSession in // weak reference to avoid memory leaks
            self?.userSession = userSession
        }.store(in: &cancellables)
    }
}
