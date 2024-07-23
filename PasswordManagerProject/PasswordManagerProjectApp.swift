//
//  PasswordManagerProjectApp.swift
//  PasswordManagerProject
//
//  Created by Gaurav Bhatt on 20/07/24.
//

import SwiftUI

@main
struct PasswordManagerProjectApp: App {
    @StateObject private var manager: PasswordManagerModel = PasswordManagerModel()
    @State var isAuthenticated = false
    var body: some Scene {
        WindowGroup {
            if isAuthenticated {
                ContentView()
                    .environmentObject(manager)
                    .environment(\.managedObjectContext, manager.container.viewContext)
            } else {
                AuthenticationView(isAuthenticated: $isAuthenticated)
            }
        }
    } 
}
 
