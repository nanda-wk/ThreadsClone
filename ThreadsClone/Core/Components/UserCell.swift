//
//  UserCell.swift
//  ThreadsClone
//
//  Created by Nanda WK on 13/02/2024.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack {
            CircularImageView()
            
            VStack(alignment: .leading) {
                Text("lichling_1")
                    .fontWeight(.semibold)
                
                Text("Arthas Menethil")
            }
            .font(.footnote)
            
            Spacer()
            
            Text("Follow")
                .font(.subheadline)
                .fontWeight(.semibold)
                .frame(width: 100, height: 32)
                .overlay {
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(.systemGray4), lineWidth: 1)
                }
        }
        .padding(.horizontal)
    }
}

#Preview {
    UserCell()
}
