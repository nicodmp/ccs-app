//
//  ContentView.swift
//  desafio09
//
//  Created by Student23 on 04/08/23.
//

import SwiftUI

extension Color {
    static let pastelpink = Color("pastelpink")
}

struct ContentView: View {
    @StateObject var viewModel = ViewModel()

    var body: some View {
        NavigationStack {
            ZStack {
//                Image("background2")
//                    .resizable()
//                    .scaledToFill()
//                    .blur(radius: 1)
//                    .saturation(0.5)
//                    .ignoresSafeArea()
                Color.pastelpink
                    .ignoresSafeArea()
                VStack(alignment: .center) {
                    Text("Cartas Clow")
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundColor(.yellow)
                        .shadow(color: .black, radius: 1)
                    Spacer()
                    
                    ScrollView(.vertical) {
                        VStack (spacing: 30){
                            ForEach(viewModel.cards) { card in
                                VStack (spacing: 10){
                                    NavigationLink(destination: CardView(card: card)) {
                                        AsyncImage(url: URL(string: card.clow_card_img)) { clowCard in
                                            clowCard
                                                .resizable()
                                                .frame(width: 225, height: 325, alignment: .center)
                                                .aspectRatio(contentMode: .fill)
                                            
                                        } placeholder: {
                                            Color.gray
                                        }
                                        
                                    }
                                    Text("\(card.pt_name) (\(card.en_name))")
                                        .foregroundColor(.yellow)
                                        .fontWeight(.bold)
                                        .shadow(color: .black, radius: 1)
                                }
                            }
                        }
                    }
                }
            }
        }.onAppear() {
            viewModel.fetch()
        }.accentColor(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
