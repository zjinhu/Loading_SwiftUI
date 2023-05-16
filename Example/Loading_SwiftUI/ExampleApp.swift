//
//  Loading_SwiftUIApp.swift
//  Loading_SwiftUI
//
//  Created by iOS on 2023/5/12.
//

import SwiftUI
import Loading_SwiftUI
@main
struct ExampleApp: App {
    @StateObject var ob = LoadingManager()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(ob)
        }
    }
}
