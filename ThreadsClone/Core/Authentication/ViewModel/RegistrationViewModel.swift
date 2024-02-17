//
//  RegistrationViewModel.swift
//  ThreadsClone
//
//  Created by Nanda WK on 17/02/2024.
//

import Foundation

class RegistrationViewModel: ObservableObject {
    
    @Published var fullName = ""
    @Published var username = ""
    @Published var email = ""
    @Published var password = ""
    
    
    @MainActor
    func createUser() async throws {
        try await AuthService.shared.createUser(
            withEmail: email,
            password: password,
            fullName: fullName,
            username: username
        )
    }
}
