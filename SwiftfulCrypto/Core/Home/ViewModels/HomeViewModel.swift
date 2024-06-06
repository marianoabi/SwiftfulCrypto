//
//  HomeViewModel.swift
//  SwiftfulCrypto
//
//  Created by Abi M on 6/5/24.
//

import Foundation
import Combine

class HomeViewModel: ObservableObject {

    @Published var allCoins: [Coin] = []
    @Published var portfolioCoins: [Coin] = []

    private let dataService = CoinDataService()
    private var cancellables = Set<AnyCancellable>()

    init(allCoins: [Coin], portfolioCoins: [Coin]) {
        self.allCoins = allCoins
        self.portfolioCoins = portfolioCoins
    }

    init() {
        addSubscribers()
    }
}

extension HomeViewModel {
    func addSubscribers() {
        dataService.$allCoins
            .sink { [weak self] returnedCoins in
                self?.allCoins = returnedCoins
            }
            .store(in: &cancellables)
    }
}
