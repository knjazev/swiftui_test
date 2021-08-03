//
//  ContentView.swift
//  Cats
//
//  Created by UPIT on 3.08.21.
//

import SwiftUI

struct ContentView: View {
    
    var cats: [Cat] = []
    var body: some View {
        
        
        TabView {
            NavigationView {
                List(cats) { cat in
                    CatCell(cat: cat)
                }.navigationBarTitle(Text("Cats"))
            }
            .tabItem {
                Image(systemName: "house.fill")
                Text("Home")
            }
            
            Text("Favorite cats")
                .font(.system(size: 30, weight: .bold, design: .rounded))
                .tabItem {
                    Image(systemName: "star")
                    Text("Favorite")
                }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(cats: testData)
    }
}


struct CatCell: View {
    
    let cat: Cat
    var body: some View {
        
        
        
        NavigationLink(destination: CatDetail(nickName: cat.nickname, breed: cat.breed)) {
            Image(cat.nickname)
                .cornerRadius(50)
            VStack(alignment: .leading) {
                Text(cat.nickname)
                Text(cat.breed)
                    .font(.subheadline)
                    .foregroundColor(Color.gray)
                
            }
        }
    }
}
