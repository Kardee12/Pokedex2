//
//  NewsCapsule.swift
//  Pokedex 2.0
//
//  Created by Karthik Manishankar on 7/26/22.
//

import SwiftUI



struct NewsCapsule: View {
    let nums = [1,2,3,4,5]
    @StateObject var newsWebService = NewsWebService()
    
    var body: some View {
        GroupBox(label:
                    Label("News", systemImage: "newspaper.circle.fill")
                 , content: {
            NewsListView()
        }).padding(.horizontal, 20).foregroundColor(.red)
    }
}

struct NewsCapsule_Previews: PreviewProvider {
    static var previews: some View {
        NewsCapsule()
            .previewLayout(.sizeThatFits)
            .padding()
            .environmentObject(NewsWebService())
    }
}
