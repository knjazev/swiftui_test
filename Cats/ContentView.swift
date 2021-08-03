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
        
        NavigationView {
            List(cats) { cat in
                CatCell(cat: cat)
            }.navigationBarTitle(Text("Cats"))
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
