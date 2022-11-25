//
//  InstagramDesktopApp.swift
//  InstagramDesktop
//
//  Created by Seungchul Ha on 2022/11/25.
//

import SwiftUI

@main
struct InstagramDesktopApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .windowStyle(HiddenTitleBarWindowStyle())
    }
}

// Hiding Focus Ring...

extension NSTextField {

    open override var focusRingType: NSFocusRingType {
        get{.none}
        set{}
    }
}
