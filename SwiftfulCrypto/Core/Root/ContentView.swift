//
//  ContentView.swift
//  SwiftfulCrypto
//
//  Created by Abi M on 6/5/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.theme.background
                .ignoresSafeArea()

            VStack(spacing: 10) {
                Text("Accent Color")
                    .foregroundStyle(Color.theme.accent)

                Text("Secondary Text Color")
                    .foregroundStyle(Color.theme.secondaryText)

                Text("Red Color")
                    .foregroundStyle(Color.theme.red)

                Text("Green Color")
                    .foregroundStyle(Color.theme.green)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
