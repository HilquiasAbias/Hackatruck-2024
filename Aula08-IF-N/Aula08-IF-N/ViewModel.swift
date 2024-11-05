//
//  ViewModel.swift
//  Aula08-IF-N
//
//  Created by Turma02-7 on 04/11/24.
//

import Foundation

class ViewModel: ObservableObject {
    @Published var coins: [Coin] = []
    
    func fetch() {
        let task = URLSession.shared.dataTask(with:
            URL(string: "https://api.coinlore.net/api/tickers/")!
        ) { data, _, error in
            do {
                self.coins = try JSONDecoder().decode(CoinResponse.self, from: data!).data
                print(self.coins)
            } catch {
                print(error)
            }
        }
        task.resume()
    }
}
