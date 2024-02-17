//
//  ProfileView.swift
//  ThreadsClone
//
//  Created by Nanda WK on 10/02/2024.
//

import SwiftUI

struct ProfileView: View {
    
    @State private var selectedFilter: ProfileThreadFilter = .threads
    @Namespace var animation
    
    private var filterBarWidth: CGFloat {
        let count = CGFloat(ProfileThreadFilter.allCases.count)
        return UIScreen.main.bounds.width / count - 20
    }
    
    var body: some View {
        NavigationStack {
            ScrollView {
                
                // MARK - bio and stats
                VStack(spacing: 20) {
                    HStack(alignment: .top) {
                        VStack(alignment: .leading, spacing: 12) {
                            
                            // MARK - fullname and username
                            VStack(alignment: .leading, spacing: 4) {
                                Text("Arthas Menethil")
                                    .font(.title2)
                                    .fontWeight(.semibold)
                                
                                Text("lich_king")
                                    .font(.subheadline)
                            }
                            
                            Text("The prince of Lordaeron and the only son of Terenas Menethil II.")
                                .font(.footnote)
                            
                            Text("2 follower")
                                .font(.caption)
                                .foregroundStyle(.gray)
                        }
                        
                        Spacer()
                        
                        CircularImageView()
                    }
                    
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
                    VStack {
                        HStack {
                            ForEach(ProfileThreadFilter.allCases) { filter in
                                VStack {
                                    Text(filter.title)
                                        .font(.subheadline)
                                        .fontWeight(selectedFilter == filter ? .semibold : .regular)
                                    
                                    if selectedFilter == filter {
                                        Rectangle()
                                            .foregroundStyle(.black)
                                            .frame(width: filterBarWidth, height: 1)
                                            .matchedGeometryEffect(id: "item", in: animation)
                                        
                                    } else {
                                        Rectangle()
                                            .foregroundStyle(.clear)
                                            .frame(width: filterBarWidth, height: 1)
                                    }
                                }
                                .onTapGesture {
                                    withAnimation(.spring()) {
                                        selectedFilter = filter
                                    }
                                }
                            }
                        }
                        
                        LazyVStack {
                            ForEach(0...10, id: \.self) { thread in
                                ThreadCell()
                            }
                        }
                    }
                    .padding(.vertical, 8)
                }
            }
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        AuthService.shared.signOut()
                    } label: {
                        Image(systemName: "line.3.horizontal")
                    }
                }
            }
            .padding(.horizontal)
            .scrollIndicators(.never)
        }
    }
}

#Preview {
    ProfileView()
}
