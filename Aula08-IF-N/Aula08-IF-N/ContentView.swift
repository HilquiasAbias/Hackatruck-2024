//
//  ContentView.swift
//  Aula08-IF-N
//
//  Created by Turma02-7 on 04/11/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel: ViewModel = ViewModel()
    
    var body: some View {
        ZStack {
            Color.bg
                .ignoresSafeArea()
            VStack {
                HStack {
                    AsyncImage(url: URL(string: "https://www.coinlore.com/cl_logo.webp")) { result in
                        result.image?
                            .resizable()
                            .frame(width: 200, height: 100)
                    }
                }
                .frame(width: 400, height: 200)
                //Spacer()
                HStack {
                    Text("Moeda")
                    Text("Preço")
                    HStack {
                        Text("24h")
                        Image(systemName: "arrow.up.to.line")
                    }
                    
                }
                ScrollView {
                    ForEach(viewModel.coins) { coin in
                        HStack {
                            Text("\(coin.symbol!)")
                                .foregroundStyle(.coinname)
                        }
                        .frame(width: 350, height: 50)
                        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                    }
                }
                
            }
        }
        .onAppear() {
            viewModel.fetch()
        }
    }
}

#Preview {
    ContentView()
}
