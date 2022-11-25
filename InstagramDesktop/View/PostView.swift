//
//  PostView.swift
//  InstagramDesktop
//
//  Created by Seungchul Ha on 2022/11/25.
//

import SwiftUI

struct PostView: View {
    var image: String
    var uploaderImage: String
    var uploaderName: String
    
    var body: some View {
        
        GeometryReader { reader in
            
            VStack {
                
                Image(image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: reader.frame(in: .global).width, height: 250)
                    .cornerRadius(10)
                
                HStack {
                    
                    Image(uploaderImage)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 30, height: 30)
                        .clipShape(Circle())
                        .padding(5)
                        .background(
                            Circle()
                                .stroke(gradient, lineWidth: 2)
                        )
                        .clipShape(Circle())
                    
                    Text(uploaderName)
                        .foregroundColor(.white)
                    
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        
                        Label {
                            Text("1.2k")
                        } icon: {
                            Image(systemName: "suit.heart")
                        }

                    }
                    .buttonStyle(PlainButtonStyle())
                    
                    Button {
                        
                    } label: {
                        
                        Label {
                            Text("556")
                        } icon: {
                            Image(systemName: "message")
                        }

                    }
                    .buttonStyle(PlainButtonStyle())
                }
                .padding(.horizontal)
            }
        }
        .frame(height: 300)
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
