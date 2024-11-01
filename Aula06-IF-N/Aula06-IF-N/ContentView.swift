//
//  ContentView.swift
//  Aula06-IF-N
//
//  Created by Turma02-7 on 31/10/24.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [.blue, .black]), startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                VStack {
                    Image(.truck)
                        .resizable()
                        .frame(width: 200, height: 200)
                    HStack {
                        Text("HackaFM")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.white)
                            .padding()
                        Spacer()
                    }
                    HStack {
                        Image(.truck)
                            .resizable()
                            .frame(width: 30, height: 30)
                        Text("HackaSong")
                            .font(.subheadline)
                            .foregroundColor(.white)
                        Spacer()
                    }
                    .padding()
                    ScrollView {
                        ForEach(arrayMusic){ a in
                            NavigationLink(destination: Segunda(song: a)) {
                                HStack {
                                    AsyncImage(url: URL(string: a.capa)) { result in
                                        result.image?
                                            .resizable()
                                            .frame(width: 50, height: 50)
                                    }
                                    VStack {
                                        HStack {
                                            Text("\(a.name)")
                                                .foregroundColor(.white)
                                            Spacer()
                                            Image(systemName: "ellipsis")
                                                .foregroundStyle(Color.white)
                                                .padding(.trailing)
                                        }
                                        HStack {
                                            Text("\(a.artist)")
                                                .foregroundColor(.white)
                                            Spacer()
                                        }
                                    }
                                }
                                .padding(.leading)
                            }
                        }
                        VStack {
                            HStack {
                                Text("Sugeridos")
                                    .padding()
                                    .foregroundColor(.white)
                                Spacer()
                            }
                            ScrollView(.horizontal) {
                                HStack {
                                    ForEach(arraySugestions) { s in
                                        VStack {
                                            AsyncImage(url: URL(string: s.cover)) { result in
                                                result.image?
                                                    .resizable()
                                                    .frame(width: 150, height: 150)
                                            }
                                            Text("\(s.name)")
                                                .font(.subheadline)
                                                .foregroundStyle(Color.white)
                                        }
                                        
                                    }
                                }
                            }
                        }
                    }
                    
                }
            }
        }.accentColor(.white)
    }
}

#Preview {
    ContentView()
}
