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
        // Using GeometryReader to get the available width, which helps with alignment.
        GeometryReader { geometry in
            VStack {
                VStack(alignment: .leading){
                    Text("Create Wallet")
                        .font(.system(.largeTitle, weight: .bold))
                        .padding(.top, 20)
                }
                .padding(.bottom, 20)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 29)
                
                VStack(alignment: .leading, spacing: 16) {
                    Text("Wallet Name")
                        .font(.caption)
                        .foregroundColor(.gray)
                    
                    TextField("Required", text: $walletName)
                        .padding()
                        .background(Color(.secondarySystemBackground))
                        .cornerRadius(10)
                    
                    Text("Password")
                        .font(.caption)
                        .foregroundColor(.gray)
                    
                    SecureField("Required", text: $password)
                        .padding()
                        .background(Color(.secondarySystemBackground))
                        .cornerRadius(10)
                    
                    SecureField("Confirm Password", text: $confirmPassword)
                        .padding()
                        .background(Color(.secondarySystemBackground))
                        .cornerRadius(10)
                }
                .frame(maxWidth: .infinity)
                .padding(.horizontal, 29) // Add horizontal padding to this VStack
                
                Spacer()
                
                Button(action: {
                    print("Hello, World")
                }){
                    Text("Create New Wallet")
                        .font(.system(.callout, design: .rounded, weight: .bold))
                        .padding()
                        .frame(maxWidth: .infinity)
                        .clipped()
                        .foregroundStyle(.white)
                        .background(.blue)
                        .mask { RoundedRectangle(cornerRadius: 15, style: .continuous) }
                }
                // Add .contentShape(Rectangle()) to make the entire button tappable.
                .contentShape(Rectangle())
                .padding(.horizontal, 29)
                .padding(.bottom, 20)
            }
            .frame(width: geometry.size.width) // Use GeometryReader's width
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
