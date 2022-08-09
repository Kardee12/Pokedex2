//
//  HeaderView.swift
//  Pokedex2.0
//
//  Created by Karthik Manishankar on 8/3/22.
//

import SwiftUI

struct HeaderView: View {
    var name: String
    var body: some View {
        VStack(alignment: .leading, spacing: 0, content:{
            Text("Pokemon")
            
            Text(name)
                .font(.largeTitle)
                .fontWeight(.black)
        })//End of VSTACk
        .foregroundColor(.white)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(name: "Pikachu")
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
