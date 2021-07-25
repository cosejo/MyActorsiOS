//
//  MyActorsApp.swift
//  Shared
//
//  Created by Carlos Osejo on 21/7/21.
//

import SwiftUI

@main
struct MyActorsApp: App {
    var body: some Scene {
        WindowGroup {
            LoginView(store: UserStore())
        }
    }
}
