//
//  Home.swift
//  InstagramDesktop
//
//  Created by Seungchul Ha on 2022/11/25.
//

import SwiftUI

// Gradient....
let gradient = LinearGradient(gradient: .init(colors: [Color.purple, Color.orange]), startPoint: .leading, endPoint: .trailing)

struct Home: View {
    
    var screen = NSScreen.main!.visibleFrame
    
    var body: some View {
        
        HStack(spacing: 0) {
            
            SideView()
            
            MainView()
        }
        .ignoresSafeArea(.all, edges: .all)
        .frame(width: screen.width / 1.5, height: screen.height - 60)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
