//
//  CoverImageView.swift
//  Africa
//
//  Created by Field Employee on 11/22/20.
//

import SwiftUI

struct CoverImageView: View {
    //Mark: -PROPERTIES
    let coverImages: [CoverImage] = Bundle.main.decode("covers.json")
    
    //Mark: -BODY
    var body: some View {
        TabView {
            ForEach(coverImages) { item in
                Image(item.name)
                    .resizable()
                    .scaledToFill()
            }//: LOOP
        }//: TABVIEW
        .tabViewStyle(PageTabViewStyle())
    }
}

//Mark: -PREVIEW
struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView()
            .previewLayout(.fixed(width: 400, height: 300))
    }
}
