//
//  LoginViewModel.swift
//  ThreadsClone
//
//  Created by Nanda WK on 17/02/2024.
//

import Foundation

class LoginViewModel: ObservableObject {
    
    @Published var email = ""
    @Published var password = ""
    
    
    @MainActor
    func login() async throws {
        try await AuthService.shared.login(withEmail: email, password: password)
    }
}
