//
//  SwiftfulCryptoApp.swift
//  SwiftfulCrypto
//
//  Created by Abi M on 6/5/24.
//

import SwiftUI

@main
struct SwiftfulCryptoApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                HomeView()
                    .toolbar(.hidden, for: .navigationBar)
            }
        }
    }
}
