//
//  Constant.swift
//  Pokedex2.0
//
//  Created by Karthik Manishankar on 7/28/22.
//

import Foundation
import SwiftUI

struct Constants{
    struct url{
        static let pokeNews = URL(string:"https://newsapi.org/v2/everything?q=GameFreak&apiKey=079b743e778043e6a6c8ec12afe8f146")!
        
        static let pokeList =
        URL(string: "https://pokeapi.co/api/v2/pokemon?limit=100000&offset=0")!
    }

}
