//
//  ProfileViewModel.swift
//  ThreadsClone
//
//  Created by Nanda WK on 17/02/2024.
//

import Foundation
import Combine

class CurrentUserProfileViewModel: ObservableObject {
    
    @Published var currentUser: User?
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        setupSubscribers()
    }
    
    private func setupSubscribers() {
        UserService.shared.$currentUser.sink { [weak self] user in
            self?.currentUser = user
        }.store(in: &cancellables)
    }
}
