//
//  HomeViewModel.swift
//  SwiftfulCrypto
//
//  Created by Abi M on 6/5/24.
//

import Foundation

class HomeViewModel: ObservableObject {

    @Published var allCoins: [Coin] = []
    @Published var portfolioCoins: [Coin] = []

    init(allCoins: [Coin], portfolioCoins: [Coin]) {
        self.allCoins = allCoins
        self.portfolioCoins = portfolioCoins
    }

    init() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) { [weak self] in
            self?.allCoins.append(DeveloperPreview.instance.coin)
            self?.portfolioCoins.append(DeveloperPreview.instance.coin)
        }
    }
}
