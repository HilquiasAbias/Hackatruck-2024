//
//  SwiftUIView.swift
//  Aula01-IF-N
//
//  Created by Turma02-7 on 23/10/24.
//

import SwiftUI

struct SwiftUIView: View {
    
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                Image(.spfc)
                    .resizable()
                    .frame(width: 150, height: 150)
                    .cornerRadius(100)
                Spacer()
                VStack(spacing: 10) {
                    Text("Hackatruck")
                        .foregroundColor(Color.red)
                    Text("77 Universidades")
                        .foregroundColor(Color.blue)
                    Text("5 regiões do Brasil")
                        .foregroundColor(Color.yellow)
                }
                .padding(.leading)
            }
            Spacer()
        }
        .padding()
    }
}

#Preview {
    SwiftUIView()
}
