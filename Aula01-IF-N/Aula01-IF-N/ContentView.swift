//
//  ContentView.swift
//  Aula01-IF-N
//
//  Created by Turma02-7 on 23/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Text("")
                    .frame(width: 100, height: 100)
                    .background(Color.red)
                Spacer()
                Text("")
                    .frame(width: 100, height: 100)
                    .background(Color.blue)
            }
            Spacer()
            HStack {
                Text("")
                    .frame(width: 100, height: 100)
                    .background(Color.green)
                Spacer()
                Text("")
                    .frame(width: 100, height: 100)
                    .background(Color.yellow)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
