//
//  CreateWallet.swift
//  RgbWallet
//
//  Created by Dhimant Soni on 08/08/25.
//

import SwiftUI

struct CreateWalletView: View {
    @State private var walletName: String = ""
    @State private var password: String = ""
    @State private var confirmPassword: String = ""
    @State private var showingAlert = false
    @State private var alertMessage = ""

    var body: some View {
        VStack{
            NavigationView{
                
                Form{
                    Section{
                        TextField("Wallet Name", text: $walletName)
                            .frame(minWidth: 0, maxWidth: .infinity)
                        SecureField("Password", text: $password)
                            .frame(minWidth: 0, maxWidth: .infinity)
                        SecureField("Confirm Password", text: $confirmPassword)
                            .frame(minWidth: 0, maxWidth: .infinity)
                    }
                    
                    
                }
                .navigationTitle("Create Wallet")
                
            }
            
            Button(action: {
                createWallet()
            }) {
                Text("Create Wallet")
            }
        }
    }

    func createWallet() {
        guard !password.isEmpty else {
            alertMessage = "Please enter a password."
            showingAlert = true
            return
        }

        guard password == confirmPassword else {
            alertMessage = "Passwords do not match."
            showingAlert = true
            return
        }

        // Insert wallet creation logic here
        print("Creating wallet named '\(walletName)' with password.")
    }
}

#Preview {
    CreateWalletView()
}
