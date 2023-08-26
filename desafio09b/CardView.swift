//
//  FilmView.swift
//  desafio09
//
//  Created by Student23 on 04/08/23.
//

import SwiftUI

struct CardView: View {
    let card: Card
    
    var body: some View {
        ZStack {
            /*Image("background2")
                .resizable()
                .scaledToFill()
                .blur(radius: 1)
                .saturation(0.5)
                .ignoresSafeArea()
                */
            Color.pastelpink
                .ignoresSafeArea()
            VStack {
                AsyncImage(url: URL(string: card.clow_card_img)) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fit)

                } placeholder: {
                    Color.gray
                }
                .frame(width: 450, height: 450, alignment: .center)
                .offset(x: 5)
                Text("\(card.kanji) (\(card.romaji))")
                    .font(.title)
                    .foregroundColor(.yellow)
                    .fontWeight(.bold)
                    .shadow(color: .black, radius: 1)
                HStack {
                    Text("\u{1f1fa}\u{1f1f8}")
                    Text(card.en_name)
                        .font(.title2)
                        .foregroundColor(.yellow)
                        .fontWeight(.bold)
                        .shadow(color: .black, radius: 1)
                }
                
                HStack {
                    Text("\u{1f1ea}\u{1f1f8}")
                    Text(card.es_name)
                        .font(.title2)
                        .foregroundColor(.yellow)
                        .fontWeight(.bold)
                        .shadow(color: .black, radius: 1)
                        .frame(alignment: .center)
                }
                
                HStack {
                    Text("\u{1f1e7}\u{1f1f7}")
                    Text(card.pt_name)
                        .font(.title2)
                        .foregroundColor(.yellow)
                        .fontWeight(.bold)
                        .shadow(color: .black, radius: 1)
                        .frame(alignment: .center)
                }
                Text("1ª aparição (mangá):  Capítulo \(card.appeared_manga)")
                    .font(.title2)
                    .foregroundColor(.yellow)
                    .fontWeight(.bold)
                    .shadow(color: .black, radius: 1)
                    .frame(alignment: .center)
                Text("1ª aparição (anime):  Episódio \(card.appeared_anime)")
                    .font(.title2)
                    .foregroundColor(.yellow)
                    .fontWeight(.bold)
                    .shadow(color: .black, radius: 1)
                    .frame(alignment: .center)
                Spacer()
            }
        }
    }
}

//struct FilmView_Previews: PreviewProvider {
//    static var previews: some View {
//        FilmView(film: Film())
//    }
//}
