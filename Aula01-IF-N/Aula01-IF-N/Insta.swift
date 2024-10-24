//
//  Insta.swift
//  Aula01-IF-N
//
//  Created by Turma02-7 on 23/10/24.
//

import SwiftUI

struct Insta: View {
    var body: some View {
        VStack {
            HStack {
                Text("username")
                    .padding(.leading)
                Spacer()
                HStack(spacing: 20) {
                    Image(.ellipse)
                        .resizable()
                        .frame(width: 40, height: 40)
                    Image(.menu)
                        .resizable()
                        .frame(width: 40, height: 40)
                }
            }
            .padding()
            HStack {
                Circle()
                    .fill(Color.gray)
                    .frame(width: 100)
                VStack(spacing: 15, content: {
                    HStack(spacing:10) {
                        VStack {
                            Text("8")
                            Text("Posts")
                        }
                        VStack {
                            Text("12k")
                            Text("Seguidores")
                        }
                        VStack {
                            Text("2k")
                            Text("Seguindo")
                        }
                        
                    }.padding(.horizontal)
                    Text("Editar Perfil")
                        .frame(width: 225, height: 20)
                        .background(Color.gray)
                })
            }
            
            VStack {
                HStack {
                    Text("Nome Sobrenome")
                    Spacer()
                }
                HStack {
                    Text("Lfhisdhufsocnsiunvsudnvusdvusd")
                    Spacer()
                }
            }.padding()
            
            HStack(spacing:90) {
                Image(.apps)
                    .resizable()
                    .frame(width: 40, height: 40)
                Image(.folder)
                    .resizable()
                    .frame(width: 40, height: 40)
                Image(.person)
                    .resizable()
                    .frame(width: 40, height: 40)
            }.padding(.top)
            
            HStack {
                Rectangle()
                    .frame(width: 120, height: 120)
                    .background(Color.gray)
                Rectangle()
                    .frame(width: 120, height: 120)
                    .background(Color.gray)
                Rectangle()
                    .frame(width: 120, height: 120)
                    .background(Color.gray)
            }.padding(.top)
            
            HStack {
                Rectangle()
                    .frame(width: 120, height: 120)
                    .background(Color.gray)
                Rectangle()
                    .frame(width: 120, height: 120)
                    .background(Color.gray)
                Rectangle()
                    .frame(width: 120, height: 120)
                    .background(Color.gray)
            }
            HStack {
                Rectangle()
                    .frame(width: 120, height: 120)
                Rectangle()
                    .frame(width: 120, height: 120)
                Rectangle()
                    .frame(width: 120, height: 120)
            }
        }
        Spacer()
    }
}

#Preview {
    Insta()
}
