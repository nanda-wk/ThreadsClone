//
//  CreateThreadViewModel.swift
//  ThreadsClone
//
//  Created by Nanda WK on 22/02/2024.
//

import Foundation
import Firebase

class CreateThreadViewModel: ObservableObject {
    
    @Published var caption = ""
    
    func uploadThread() async throws {
        guard let uid = Auth.auth().currentUser?.uid else { return }
        let thread  = Thread(ownerUid: uid, caption: caption, timestamp: Timestamp(), likes: 0)
        try await ThreadService.uploadThread(thread)
    }
}
