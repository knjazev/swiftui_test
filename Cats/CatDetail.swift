//
//  CatDetail.swift
//  Cats
//
//  Created by UPIT on 3.08.21.
//

import SwiftUI

struct CatDetail: View {
    var nickName: String
    var breed: String
    
    var body: some View {
        VStack {
            Image(nickName)
                 .clipShape(Circle())
                .overlay(
                    Circle().stroke(Color.orange, lineWidth: 4)
                )
                .shadow(radius: 10)
            Text(nickName)
                .font(.title)
            Divider()
            Text(breed)
        }
    }
}

#if DEBUG

struct CatDetail_Previews: PreviewProvider {
    static var previews: some View {
        CatDetail(nickName: "Leo", breed: "Asian")
    }
}

#endif
