//
//  NewsWebService.swift
//  Pokedex2.0
//
//  Created by Karthik Manishankar on 7/29/22.
//

import Foundation

class NewsWebService: ObservableObject{
    
    @Published var news: NewsResponse?
    
    func getNews() async throws {
            let (data, _) = try await URLSession.shared.data(from: Constants.url.pokeNews)
            Task{@MainActor in
                self.news = try JSONDecoder().decode(NewsResponse.self, from: data)
            }
    }
    
}
