//
//  CircularImageView.swift
//  ThreadsClone
//
//  Created by Nanda WK on 13/02/2024.
//

import SwiftUI

struct CircularImageView: View {
    var body: some View {
        Image(.lichKing)
            .resizable()
            .scaledToFill()
            .frame(width: 40, height: 40)
            .clipShape(Circle())
    }
}

#Preview {
    CircularImageView()
}
