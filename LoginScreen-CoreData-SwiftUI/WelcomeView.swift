//
//  WelcomeView.swift
//  LoginScreen-CoreData-SwiftUI
//
//  Created by Dhathri Bathini on 12/9/25.
//
import SwiftUI

struct WelcomeView: View {
    @Environment(\.managedObjectContext) private var context
    @ObservedObject var user: User
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Welcome")
                .font(.largeTitle)
                .bold()
            
            Text("Hi \(user.name ?? "")")
                .font(.title2)
            
            Button("Log Out") {
                logout()
            }
            .buttonStyle(.bordered)
        }
        .padding()
    }
    
    private func logout() {
        context.delete(user)
        do {
            try context.save()
        } catch {
            print("Failed to delete user: \(error)")
        }
    }
}


