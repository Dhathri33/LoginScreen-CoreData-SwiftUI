//
//  LoginView.swift
//  LoginScreen-CoreData-SwiftUI
//
//  Created by Dhathri Bathini on 12/9/25.
//

import SwiftUI

struct LoginView: View {
    @Environment(\.managedObjectContext) private var viewContext
    @State var username: String = ""
    @State var password: String = ""
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Login")
                .font(.largeTitle)
                .bold()
            
            TextField("Username", text: $username)
                .textFieldStyle(.roundedBorder)
                .autocapitalization(.none)
                .disableAutocorrection(true)
            
            SecureField("Password", text: $password)
                .textFieldStyle(.roundedBorder)
            
            Button("Login") {
                handleLogin()
            }
            .disabled(username.isEmpty)
            .buttonStyle(.borderedProminent)
            
            Spacer()
        }
        .padding()
    }
    
    private func handleLogin() {
        let newUser = User(context: viewContext)
        newUser.name = username
        do {
            try viewContext.save()
        } catch {
            print("Failed to save user: \(error)")
        }
    }
}

