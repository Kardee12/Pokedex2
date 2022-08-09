//
//  FooterView.swift
//  Pokedex2.0
//
//  Created by Karthik Manishankar on 8/4/22.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        VStack {
            Image("p1")
                .resizable()
                .scaledToFit()
                .frame(width: 128, height: 128, alignment: .center)
            Text("""
    Copyright © Karthik Manishankar
    Everything here is Pokemon stuff
    karthikmanishankar.live
""").font(.footnote).multilineTextAlignment(.center)
        }
    }
}

struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
