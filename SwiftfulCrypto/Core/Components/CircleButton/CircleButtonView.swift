//
//  CircleButtonView.swift
//  SwiftfulCrypto
//
//  Created by Abi M on 6/5/24.
//

import SwiftUI

struct CircleButtonView: View {
    let iconName: String

    var body: some View {
        Image(systemName: iconName)
            .font(.subheadline)
            .foregroundStyle(Color.theme.accent)
            .frame(width: 50, height: 50)
            .background(
                Circle()
                    .foregroundStyle(Color.theme.background)
            )
            .shadow(
                color: Color.theme.accent,
                radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: 0, y: 0
            )
            .padding()
    }
}

#Preview {
    Group {
        CircleButtonView(iconName: "heart.fill")
            .previewLayout(.sizeThatFits)
    }
}
