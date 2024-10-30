//
//  ContentView.swift
//  Aula04-IF-N
//
//  Created by Turma02-7 on 29/10/24.
//

import SwiftUI

struct ContentView: View {
    @State private var age: String = ""
    @State private var height: String = ""
    @State private var value: String = "IMC"
    @State private var value2: Double = 1
    
    var body: some View {
        ZStack {
            VStack {
                Text("Calculadora de IMC")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                TextField("", text: $age)
                    .frame(width: 300)
                    .background()
                    .multilineTextAlignment(.center)
                TextField("", text: $height)
                    .frame(width: 300)
                    .background()
                    .multilineTextAlignment(.center)
                Button("Calcular") {
                    switchColor()
                }
                Text("\(value)")
                
                Text("\(value2)")
                Spacer()
                Image(.tabelaIMC)
                    .resizable()
                    .frame(width: 400, height: 300)
            }.padding()
        }
        .frame(width: 400, height: 800)
        .background(chooseColor(value))
    }
    
    func switchColor() -> Void {
        
        let doubleAge = Double(age)!
        let doubleHeight = Double(height)!
        
        let imc = doubleAge / (doubleHeight * doubleHeight)
        value2 = imc
        if imc < 18.5 {
            value = "Baixo peso"
        }
        else if imc > 18.5 && imc < 24.99 {
            value = "Normal"
        }
        else if imc > 25 && imc < 29.99 {
            value = "Sobrepeso"
        }
        else if imc > 30 {
            value = "Obesidade"
        }
    }
    
    func chooseColor(_ category: String) -> Color {
        if (category == "Normal") {
            return .normal
        }
        if (category == "Baixo peso") {
            return .baixoPeso
        }
        if (category == "Sobrepeso") {
            return .sobrepeso
        }
        if (category == "Obesidade") {
            return .obesidade
        }
            
        return .padrao
    }
}

#Preview {
    ContentView()
}
