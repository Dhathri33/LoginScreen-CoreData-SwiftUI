//
//  LoginScreen_CoreData_SwiftUIApp.swift
//  LoginScreen-CoreData-SwiftUI
//
//  Created by Dhathri Bathini on 12/9/25.
//

import SwiftUI

@main
struct LoginScreen_CoreData_SwiftUIApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
