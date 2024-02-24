//
//  Thread.swift
//  ThreadsClone
//
//  Created by Nanda WK on 22/02/2024.
//

import Firebase
import FirebaseFirestoreSwift

struct Thread: Identifiable, Codable {
    
    @DocumentID var threadId: String?
    let ownerUid: String
    let caption: String
    let timestamp: Timestamp
    var likes: Int
    
    var user: User?
    
    var id: String {
        return threadId ?? NSUUID().uuidString
    }
}
