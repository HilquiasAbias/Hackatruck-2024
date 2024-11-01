//
//  Segunda.swift
//  Aula06-IF-N
//
//  Created by Turma02-7 on 31/10/24.
//

import SwiftUI

struct Segunda: View {
    var song: Song
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, .black]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack {
                Spacer()
                AsyncImage(url: URL(string: song.capa)) { result in
                    result.image?
                        .resizable()
                        .frame(width: 200, height: 200)
                }
                HStack {
                    VStack {
                        Text("\(song.name)")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .foregroundStyle(Color.white)
                        Text("\(song.artist)")
                            .font(.title2)
                            .foregroundStyle(Color.white)
                    }
                }
                Spacer()
                HStack {
                    Image(systemName: "shuffle")
                        .foregroundStyle(Color.white)
                    Image(systemName: "backward.end.fill")
                        .foregroundStyle(Color.white)
                    Image(systemName: "play.fill")
                        .foregroundStyle(Color.white)
                    Image(systemName: "forward.end.fill")
                        .foregroundStyle(Color.white)
                    Image(systemName: "repeat")
                        .foregroundStyle(Color.white)
                }
                .font(.system(size: 40))
            }
        }
    }
}

#Preview {
    Segunda(song: Song(id: 1, name: "Numb Encore", artist: "Linkin Park", capa: "https://m.media-amazon.com/images/I/910EpqJ4d1L._UF894,1000_QL80_.jpg"))
}
