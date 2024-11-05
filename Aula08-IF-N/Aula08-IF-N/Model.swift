//
//  Model.swift
//  Aula08-IF-N
//
//  Created by Turma02-7 on 04/11/24.
//

import Foundation

struct Coin: Decodable, Identifiable {
    var id: String
    var symbol: String?
    var name: String?
    var nameid: String?
    var rank: Int?
    var price_usd: String?
    var percent_change_24h: String?
    var percent_change_1h: String?
    var percent_change_7d: String?
    var price_btc: String?
    var market_cap_usd: String?
    var volume24: Double?
    var volume24a: Double?
    var csupply: String?
    var tsupply: String?
    var msupply: String?
}

struct CoinResponseInfo: Decodable {
    var coins_num: Int?
    var time: Int?
}

struct CoinResponse: Decodable {
    var data: [Coin]
    var info: CoinResponseInfo
}
