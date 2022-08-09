//
//  CategoryItemView.swift
//  Pokedex2.0
//
//  Created by Karthik Manishankar on 8/1/22.
//

import SwiftUI

struct CategoryItemView: View {
    let category: String
    var body: some View {
        Button(action: {}, label: {
            HStack(alignment: .center, spacing: 6){
                Image("pokeball")
                    .resizable().scaledToFit().frame(width: 30, height: 30, alignment: .center)
                Text(category.uppercased()).fontWeight(.light).foregroundColor(.gray)
                Spacer()
                Image(systemName: "arrow.right.circle")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.red)
                    .frame(width: 30, height: 30, alignment: .center)
            }//HSTACK
            
            
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(
                RoundedRectangle(cornerRadius: 12).stroke(Color.gray, lineWidth: 1)
            )
            
        })//BUTTON
    }
}

struct CategoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItemView(category: "Pokemon")
    }
}
