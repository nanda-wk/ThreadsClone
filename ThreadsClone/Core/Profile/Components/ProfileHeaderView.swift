//
//  ProfileHeaderView.swift
//  ThreadsClone
//
//  Created by Nanda WK on 18/02/2024.
//

import SwiftUI

struct ProfileHeaderView: View {
    
    var user: User?
    
    init(user: User?) {
        self.user = user
    }
    
    var body: some View {
        HStack(alignment: .top) {
            VStack(alignment: .leading, spacing: 12) {
                
                // MARK - fullName and username
                VStack(alignment: .leading, spacing: 4) {
                    Text(user?.fullName ?? "")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    Text(user?.username ?? "")
                        .font(.subheadline)
                }
                
                if let bio = user?.bio {
                    Text(bio)
                        .font(.footnote)
                }
                
                Text("2 follower")
                    .font(.caption)
                    .foregroundStyle(.gray)
            }
            
            Spacer()
            
            CircularImageView(user: user, size: .medium)
        }
    }
}

#Preview {
    ProfileHeaderView(user: DeveloperPreview.shared.user)
}
