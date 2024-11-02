//
//  code.swift
//  Aula07-IF-N
//
//  Created by Turma02-7 on 01/11/24.
//

import Foundation
import MapKit

struct Location: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
    let flag: String
    let description: String
}

let locations = [
    Location(
        name: "Brasil",
        coordinate: CLLocationCoordinate2D(latitude: -14.2350, longitude: -51.9153),
        flag: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Flag_of_Brazil.svg/1200px-Flag_of_Brazil.svg.png",
        description: "O Brasil, um vasto país sul-americano, estende-se da Bacia Amazônica, no norte, até os vinhedos e as gigantescas Cataratas do Iguaçu, no sul. O Rio de Janeiro, simbolizado pela sua estátua de 38 metros de altura do Cristo Redentor, situada no topo do Corcovado, é famoso pelas movimentadas praias de Copacabana e Ipanema, bem como pelo imenso e animado Carnaval, com desfiles de carros alegóricos, fantasias extravagantes e samba."
    ),
    Location(
        name: "EUA",
        coordinate: CLLocationCoordinate2D(latitude: 37.773972, longitude: -122.431297),
        flag: "https://s3.static.brasilescola.uol.com.br/be/conteudo/images/estados-unidos.jpg",
        description: "Os EUA são um país com 50 estados que cobrem uma vasta faixa da América do Norte, com o Alasca ao noroeste e o Havaí no Oceano Pacífico, estendendo a presença do país. As principais cidades da costa atlântica são Nova York, um centro financeiro e cultural global, e a capital, Washington, DC. Chicago, uma metrópole do centro-oeste, é conhecida por sua importante arquitetura, enquanto Los Angeles, na costa oeste, é famosa pelas produções cinematográficas de Hollywood."
    ),
    Location(
        name: "Austrália",
        coordinate: CLLocationCoordinate2D(latitude: -33.865143, longitude: 151.209900),
        flag: "https://s3.static.brasilescola.uol.com.br/be/2022/01/bandeira-da-australia.jpg",
        description: "A Austrália é um país continental cercado pelos oceanos Índico e Pacífico. Suas principais cidades, Sydney, Brisbane, Melbourne, Perth e Adelaide, são costeiras. Sua capital, Camberra, não é litorânea. O país é conhecido pela Sydney Opera House, pela Grande Barreira de Coral, pelo vasto deserto interior chamado Outback e por espécies animais únicas, como cangurus e ornitorrincos"
    ),
]
