//
//  ContentView.swift
//  Aula03-IF-N
//
//  Created by Turma02-7 on 24/10/24.
//

import SwiftUI

struct ContentView: View {
    @State private var name: String = "Hilquias"
    @State private var showingAlert = false
    
    var body: some View {
        ZStack {
            Image(.bgTruck)
                .resizable()
                .frame(width: 700, height: 900)
                .background(.white)
                .opacity(0.2)
            VStack {
                Text("Bem vindo, \(name)")
                    .padding(.top, 70)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                TextField("Enter your name", text: $name)
                    .multilineTextAlignment(.center)
                Spacer()
                Image(.logo)
                    .resizable()
                    .frame(width: 200, height: 100)
                    .shadow(radius: 10)
                Image(.truck)
                    .resizable()
                    .frame(width: 220, height: 100)
                Spacer()
                Button("Entrar") {
                    showingAlert = true
                }
                .padding(.bottom, 70)
                .alert("ALERTA\nVocê irá iniciar o desafio da aula agora", isPresented: $showingAlert) {
                    Button("Vamos lá!", role: .cancel) { }
                }
            }
            
        }
    }
}

#Preview {
    ContentView()
}
