//
//  Model.swift
//  desafio09b
//
//  Created by Student23 on 07/08/23.
//

import Foundation

struct Card: Decodable, Identifiable {
    let id: Int
    let en_name: String
    let es_name: String
    let pt_name: String
    let kanji: String
    let romaji: String
    let appeared_manga: String
    let appeared_anime: String
    let clow_card_img: String
    let sakura_card_img: String
}
