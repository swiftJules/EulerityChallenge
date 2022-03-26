//
//  ImageDetail.swift
//  EulerityChallenge
//
//  Created by Rave Bizz on 3/23/22.
//

import CoreImage
import PencilKit
import SwiftUI

struct ImageDetail: View {
    let viewModel: ImageDetailViewModel?
    var body: some View {
        VStack {
            FilterCarousel(image: viewModel?.image)
            //ImageView(viewModel: viewModel)
            //ZStack{
            ImageEditor(image: viewModel?.image)
            //}
        } //: VSTACK
        .toolbar(content: {
            Button {
                // save image action
            } label: {
                Text("Save")
            }
        })
    }
}

