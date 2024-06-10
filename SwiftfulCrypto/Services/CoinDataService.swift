//
//  CoinDataService.swift
//  SwiftfulCrypto
//
//  Created by Abi M on 6/6/24.
//

import Foundation
import Combine

class CoinDataService {
    @Published var allCoins: [Coin] = []
    var coinsSubscription: AnyCancellable?

    init() {
        getCoins()
    }

    private func getCoins() {
        guard let url = URL(string: "https://api.coingecko.com/api/v3/coins/markets?vs_currency=php&order=market_cap_desc&per_page=250&page=1&sparkline=true&price_change_percentage=24h") else { return }

        coinsSubscription = NetworkingManager.download(url: url)
            .decode(type: [Coin].self, decoder: JSONDecoder())
            .sink(receiveCompletion: NetworkingManager.handleCompletion, receiveValue: { [weak self] returnedCoins in
                self?.allCoins = returnedCoins
                self?.coinsSubscription?.cancel()
            })
    }
}
