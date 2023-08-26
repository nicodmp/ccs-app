//
//  ViewModel.swift
//  desafio09b
//
//  Created by Student23 on 07/08/23.
//

import Foundation

class ViewModel : ObservableObject {
    @Published var cards: [Card] = []
    
    func fetch(){
        guard let url = URL(string: "https://card-captor-sakura-api-f136dfbf6a3f.herokuapp.com/api/v1/cards/") else {
            return
        }
        let task = URLSession.shared.dataTask(with: url){ [weak self] data, _, error in
            guard let data = data, error == nil else {
                return
            }
            do {
                let parsed = try JSONDecoder().decode([Card].self, from: data)
                
                DispatchQueue.main.async {
                    self?.cards = parsed
                }
            } catch {
                print(error)
            }
        }
        
        task.resume()
    }
}
