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
        if let data = viewModel?.imageData, let uiImage = UIImage(data: data) {
            Image(uiImage: uiImage)
                .resizable()
                .scaledToFit()
        }
    }
}
