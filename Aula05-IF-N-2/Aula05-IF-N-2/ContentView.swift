//
//  ContentView.swift
//  Aula05-IF-N-2
//
//  Created by Turma02-7 on 30/10/24.
//

import SwiftUI

struct ContentView: View {
    @State private var showingSheet = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.black2
                VStack {
                    Image(.logo)
                        .resizable()
                        .frame(width: 200, height: 200)
                    Spacer()
                    VStack {
                        NavigationLink(destination: Modo1()) {
                            Text("Modo 1")
                                .foregroundColor(.white)
                                .frame(width: 200, height: 70)
                                .background(.red)
                                .cornerRadius(8)
                        }
                        NavigationLink(destination: Modo2View()) {
                            Text("Modo 2")
                                .foregroundColor(.white)
                                .frame(width: 200, height: 70)
                                .background(.red)
                                .cornerRadius(8)
                        }
                        Button("Modo 3") {
                            showingSheet.toggle()
                        }
                        .foregroundColor(.white)
                        .frame(width: 200, height: 70)
                        .background(.red)
                        .cornerRadius(8)
                        .sheet(isPresented: $showingSheet) {
                            Text("Sheet View")
                                .font(.title)
                            Spacer()
                            VStack {
                                Text("Nome: Tiago")
                                Text("Sobrenome: Pereira")
                            }
                            Spacer()
                        }
                    }
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
