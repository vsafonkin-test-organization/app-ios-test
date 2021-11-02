//
//  RestocksApp.swift
//  RestocksApp
//
//  Created by Scott Hodson on 23/03/2021.
//

import Restocks
import RestocksiOS
import SwiftUI

@main
struct RestocksApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    @Environment(\.scenePhase) var scenePhase

    var body: some Scene {
        WindowGroup {
            TestView()
        }
    }
}

struct TestView: View {
    var body: some View {
        Text("testView")
    }
}
