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
        if let image = viewModel?.image {
            Image(uiImage: image)
                .resizable()
                .scaledToFit()
        }
    }
}

//struct ImageView_Previews: PreviewProvider {
//    static var previews: some View {
//        ImageView()
//    }
//}
