//
//  HorizontalImageCollectionView.swift
//  hotel
//
//  Created by VladimirCH on 08.09.2023.
//

import SwiftUI
import Kingfisher

struct HorizontalImageCollectionView: View {
    let imageUrls: [String]

    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(imageUrls, id: \.self) { imageUrl in
                    KFImage(URL(string: imageUrl))
                        .resizable()
                        .frame(width: 200, height: 200)
                        .aspectRatio(contentMode: .fit)
                        .padding(8)
                }
            }
        }
    }
}
