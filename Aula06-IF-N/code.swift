//
//  code.swift
//  Aula06-IF-N
//
//  Created by Turma02-7 on 31/10/24.
//

import Foundation

struct Song: Identifiable {
    var id: Int
    var name: String
    var artist: String
    var capa: String
}

struct Sugestion: Identifiable {
    var id: Int
    var name: String
    var cover: String
}

var arrayMusic = [
    Song(id: 1, name: "Numb Encore", artist: "Linkin Park", capa: "https://m.media-amazon.com/images/I/910EpqJ4d1L._UF894,1000_QL80_.jpg"),
    Song(id: 2, name: "Lost", artist: "Linkin Park", capa: "https://m.media-amazon.com/images/I/61z7PaQFjmL._UF894,1000_QL80_.jpg"),
    Song(id: 3, name: "Lost", artist: "Linkin Park", capa: "https://m.media-amazon.com/images/I/61z7PaQFjmL._UF894,1000_QL80_.jpg"),
    Song(id: 4, name: "Lost", artist: "Linkin Park", capa: "https://m.media-amazon.com/images/I/61z7PaQFjmL._UF894,1000_QL80_.jpg"),
    Song(id: 5, name: "Lost", artist: "Linkin Park", capa: "https://m.media-amazon.com/images/I/61z7PaQFjmL._UF894,1000_QL80_.jpg"),
    Song(id: 6, name: "Lost", artist: "Linkin Park", capa: "https://m.media-amazon.com/images/I/61z7PaQFjmL._UF894,1000_QL80_.jpg"),
    Song(id: 7, name: "Lost", artist: "Linkin Park", capa: "https://m.media-amazon.com/images/I/61z7PaQFjmL._UF894,1000_QL80_.jpg"),
    Song(id: 8, name: "Lost", artist: "Linkin Park", capa: "https://m.media-amazon.com/images/I/61z7PaQFjmL._UF894,1000_QL80_.jpg"),
    Song(id: 9, name: "Lost", artist: "Linkin Park", capa: "https://m.media-amazon.com/images/I/61z7PaQFjmL._UF894,1000_QL80_.jpg")
]

var arraySugestions = [
    Sugestion(id: 1, name: "1 - One", cover: "https://st.depositphotos.com/1006006/1881/i/450/depositphotos_18816503-stock-photo-number-one.jpg"),
    Sugestion(id: 2, name: "2 - Two", cover: "https://img.freepik.com/vetores-premium/uma-imagem-colorida-de-um-numero-dois-e-um-cubo-com-um-numero-2-nele_1126821-16764.jpg"),
    Sugestion(id: 3, name: "3 - Three", cover: "https://cdn-icons-png.flaticon.com/256/3840/3840739.png"),
    Sugestion(id: 4, name: "4 - Four", cover: "https://png.pngtree.com/png-vector/20210203/ourmid/pngtree-gold-3d-number-4-png-image_2882553.jpg")
]
