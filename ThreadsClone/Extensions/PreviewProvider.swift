//
//  PreviewProvider.swift
//  ThreadsClone
//
//  Created by Nanda WK on 18/02/2024.
//

import SwiftUI

extension PreviewProvider {
    static var dev: DeveloperPreview {
        return DeveloperPreview.shared
    }
}

class DeveloperPreview {
    static let shared = DeveloperPreview()
    
    let user = User(id: UUID().uuidString, fullName: "Bruce Wayne", email: "bruce@batman.com", username: "batman")
}
