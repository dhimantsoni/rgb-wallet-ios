//
//  WelcomeView.swift
//  RgbWallet
//
//  Created by Dhimant Soni on 06/08/25.
//

import SwiftUI


struct WelcomeView: View {
    var body: some View {
        NavigationStack{
            VStack {
                Text("Welcome to RgbWallet")
                    .font(.system(.largeTitle, weight: .bold))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .clipped()
                    .multilineTextAlignment(.leading)
                    .padding(.top, 20)
                    .padding(.bottom, 82)
                VStack(spacing: 28) {
                    HStack {
                        Image(systemName: "eye.slash")
                            .foregroundStyle(.blue)
                            .font(.system(.title, weight: .regular))
                            .frame(width: 60, height: 50)
                            .clipped()
                        VStack(alignment: .leading, spacing: 3) {
                            // Title
                            Text("Private by Design")
                                .font(.system(.footnote, weight: .semibold))
                            // Description
                            Text("Your keys, your wallet. No tracking, no compromise.")
                                .font(.footnote)
                                .foregroundStyle(.secondary)
                        }
                        .fixedSize(horizontal: false, vertical: true)
                        Spacer()
                    }
                    HStack {
                        Image(systemName: "bitcoinsign.circle")
                            .foregroundStyle(.blue)
                            .font(.system(.title, weight: .regular))
                            .frame(width: 60, height: 50)
                            .clipped()
                        VStack(alignment: .leading, spacing: 3) {
                            // Title
                            Text("Track RGB Assets")
                                .font(.system(.footnote, weight: .semibold))
                            // Description
                            Text("View and manage your RGB assets and Bitcoin in one place.")
                                .font(.footnote)
                                .foregroundStyle(.secondary)
                        }
                        .fixedSize(horizontal: false, vertical: true)
                        Spacer()
                    }
                    HStack {
                        Image(systemName: "icloud")
                            .foregroundStyle(.blue)
                            .font(.system(.title, weight: .regular))
                            .frame(width: 60, height: 50)
                            .clipped()
                        VStack(alignment: .leading, spacing: 3) {
                            // Title
                            Text("Secure Backup & Recovery")
                                .font(.system(.footnote, weight: .semibold))
                            // Description
                            Text("Easily back up your wallet and recover anytime.")
                                .font(.footnote)
                                .foregroundStyle(.secondary)
                        }
                        .fixedSize(horizontal: false, vertical: true)
                        Spacer()
                    }
                }
                Spacer()
                NavigationLink(destination: CreateWalletView()) {
                    Text("Create New Wallet")
                }
                .font(.system(.callout, design: .rounded, weight: .bold))
                .padding()
                .frame(maxWidth: .infinity)
                .clipped()
                .foregroundStyle(.white)
                .background(.blue)
                .mask { RoundedRectangle(cornerRadius: 15, style: .continuous) }
                .padding(.bottom, 20)
                NavigationLink(destination: ImportWalletView()){
                    Text("Already have a Wallet")
                }
                .font(.system(.body, design: .rounded, weight: .bold))
                .foregroundStyle(.blue)
                .padding(.bottom, 20)
                
            }
            .frame(maxWidth: .infinity)
            .clipped()
            .padding(.top, 53)
            .padding(.bottom, 0)
            .padding(.horizontal, 29)
            .overlay(alignment: .top) {
            }
        }
    }
}



#Preview {
    WelcomeView()
}
