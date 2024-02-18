//
//  ProfileView.swift
//  ThreadsClone
//
//  Created by Nanda WK on 10/02/2024.
//

import SwiftUI

struct ProfileView: View {
    
    let user: User
    
    var body: some View {
        ScrollView {
            
            // MARK - bio and stats
            VStack(spacing: 20) {
                ProfileHeaderView(user: user)
                
                Button {
                    
                } label: {
                    Text("Follow")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .frame(width: 352, height: 32)
                        .background(.black)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                }
                
                // MARK user content list view
                UserContentListView()
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .padding(.horizontal)
        .scrollIndicators(.never)
        
    }
}

#Preview {
    ProfileView(user: DeveloperPreview.shared.user)
}
