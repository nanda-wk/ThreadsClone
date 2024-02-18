//
//  User.swift
//  ThreadsClone
//
//  Created by Nanda WK on 17/02/2024.
//

import Foundation

struct User: Identifiable, Codable {
    let id: String
    let fullName: String
    let email: String
    let username: String
    var profileImageUrl: String?
    var bio: String?
}
