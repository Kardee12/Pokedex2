//
//  NewsListView.swift
//  Pokedex2.0
//
//  Created by Karthik Manishankar on 7/28/22.
//

import SwiftUI

struct NewsListView: View {
    @EnvironmentObject var newsWebService: NewsWebService
    
    
    var body: some View {
        List(newsWebService.news?.articles ?? []){ article in  // <-- here
            NavigationLink(destination: WebView(url: article.url)){
                NewsListDetaiLView(img: article.urlToImage!, title: article.title, src: article.source.name)
                    .onAppear{
                        print(article.title)
                    }
            }
            
        }
        .task {
            do{
                try await newsWebService.getNews()
            } catch{
                print("---> task error: \(error)")
            }
        }
        .listStyle(.sidebar)
        .refreshable {
           do{
                try await newsWebService.getNews()
            } catch{
                print("---> task error: \(error)")
            }
        }
        .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
        .frame(height: 180.5, alignment: .center)

    
    }
}


struct NewsListView_Previews: PreviewProvider {
    static var previews: some View {
        NewsListView()
            .previewLayout(.sizeThatFits)
            .padding()
            .environmentObject(NewsWebService())

    }
}
