//
//  PreviewProvider.swift
//  ThreadsClone
//
//  Created by Nanda WK on 18/02/2024.
//

import SwiftUI
import Firebase

extension PreviewProvider {
    static var dev: DeveloperPreview {
        return DeveloperPreview.shared
    }
}

class DeveloperPreview {
    static let shared = DeveloperPreview()
    
    let user = User(id: UUID().uuidString, fullName: "Bruce Wayne", email: "bruce@batman.com", username: "batman")
    
    let thread = Thread(ownerUid: "123", caption: "This is a test thread", timestamp: Timestamp(), likes: 0)
}
