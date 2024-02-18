//
//  ExploreViewModel.swift
//  ThreadsClone
//
//  Created by Nanda WK on 18/02/2024.
//

import Foundation

class ExploreViewModel: ObservableObject {
    
    @Published var users = [User]()
    
    init() {
        Task { try await fetchUsers() }
    }

    @MainActor
    private func fetchUsers() async throws {
        self.users = try await UserService.fetchUsers()
    }
}
