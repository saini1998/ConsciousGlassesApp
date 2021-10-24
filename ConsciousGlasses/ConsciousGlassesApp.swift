//
//  ConsciousGlassesApp.swift
//  ConsciousGlasses
//
//  Created by Aaryaman Saini on 23/10/21.
//

import SwiftUI

@main
struct ConsciousGlassesApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    var body: some Scene {
        WindowGroup {
            ContentView()
            
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        UITableView.appearance().backgroundColor = UIColor.clear
        UITableView.appearance().separatorStyle = .none
        UITableViewCell.appearance().backgroundColor = .clear
        return true
    }
}
