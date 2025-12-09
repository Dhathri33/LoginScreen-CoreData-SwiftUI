//
//  ContentView.swift
//  LoginScreen-CoreData-SwiftUI
//
//  Created by Dhathri Bathini on 12/9/25.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext
    
    @FetchRequest(
        sortDescriptors: [],
        animation: .default)
    
    private var user: FetchedResults<User>
    
    var body: some View {
        if let user = user.first {
            WelcomeView(user: user)
        }
        else {
            LoginView()
        }
    }
}
