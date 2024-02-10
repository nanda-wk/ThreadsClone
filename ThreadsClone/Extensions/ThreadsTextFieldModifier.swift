//
//  ThreadsTextFieldModifier.swift
//  ThreadsClone
//
//  Created by Nanda WK on 10/02/2024.
//

import SwiftUI

struct ThreadsTextFieldModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray6))
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .padding(.horizontal, 24)
    }
}
