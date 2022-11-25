//
//  TabButton.swift
//  InstagramDesktop
//
//  Created by Seungchul Ha on 2022/11/25.
//

import SwiftUI

struct TabButton: View {
    var image: String
    var title: String
    
    @Binding var selected: String
    
    var animation: Namespace.ID
    
    var body: some View {
        Button {
            withAnimation(.spring()) {
                selected = title
            }
        } label: {
            HStack(spacing: 10) {
                
                Image(systemName: image)
                    .font(.system(size: 24))
                    .foregroundColor(selected == title ? Color.orange : Color.gray)
                    .frame(width: 30)
                
                Text(title)
                    .fontWeight(.semibold)
                    .foregroundColor(.gray)
                
                Spacer(minLength: 0)
                
                // Current tab Indicator...
                
                ZStack {
                    
                    Capsule()
                        .fill(Color.clear)
                        .matchedGeometryEffect(id: "Tab", in: animation)
                    
                    if selected == title {
                        Capsule()
                            .fill(Color.orange)
                            .matchedGeometryEffect(id: "Tab", in: animation)
                    }
                }
                .frame(width: 3, height: 25)
            }
            .padding(.leading)
            .padding(.top, 5)
            .contentShape(Rectangle())
        }
        .buttonStyle(PlainButtonStyle())
    }
}
