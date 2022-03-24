//
//  ImageView.swift
//  EulerityChallenge
//
//  Created by Rave Bizz on 3/24/22.
//

import SwiftUI

struct ImageView: View {
    let viewModel: ImageDetailViewModel?
    
    var body: some View {
        if let viewModel = viewModel {
            AsyncImage(url: URL(string: viewModel.url)!) { image in
                image
                    .resizable()
                    .scaledToFit()
            } placeholder: {
                Image(systemName: "photo.circle.fill")
                    .resizable()
                    .scaledToFit()
            }
        }
    }
}

//struct ImageView_Previews: PreviewProvider {
//    static var previews: some View {
//        ImageView()
//    }
//}
