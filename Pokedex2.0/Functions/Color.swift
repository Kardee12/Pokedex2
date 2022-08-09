//
//  Color.swift
//  Pokedex2.0
//
//  Created by Karthik Manishankar on 8/5/22.
//

import Foundation
import SwiftUI

struct colorFunc{
    
    func pickColor(type: String) -> Color{
        
        if type == "normal"{
            return Color.brown
        }
        if type == "fire"{
            return Color.orange
        }
        if type == "water"{
            return Color.blue
        }
        if type == "grass"{
            return Color.green
        }
        if type == "electric"{
            return Color.yellow
        }
        if type == "ice"{
            return Color.teal
        }
        if type == "fighting"{
            return Color(red: 194, green: 40, blue: 46)
        }
        if type == "poison"{
            return Color(red: 163, green: 62, blue: 161)
        }
        if type == "ground"{
            return Color(red: 226, green: 191, blue: 101)
        }
        if type == "flying"{
            return Color.indigo
        }
        if type == "psychic"{
            return Color(red: 249, green: 85, blue: 135)
        }
        if type == "bug"{
            return Color.mint
        }
        if type == "rock"{
            return Color(red: 182, green: 161, blue: 54)
        }
        if type == "ghost"{
            return Color(red: 115, green: 87, blue: 151)
        }
        if type == "dark"{
            return Color(red: 112, green: 86, blue: 70)
        }
        if type == "dragon"{
            return Color.purple
        }
        if type == "steel"{
            return Color.gray
        }
        if type == "fairy"{
            return Color.pink
        }
        return Color.gray
    }
    
    
}
