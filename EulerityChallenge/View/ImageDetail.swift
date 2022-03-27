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
    @StateObject var model = DrawingViewModel()
    let viewModel: ImageDetailViewModel?
    var body: some View {
        VStack {
            FilterCarousel(imageData: viewModel?.imageData)
                .padding(0)
            ImageView(viewModel: viewModel)
            Spacer()
            //ImageEditor().environmentObject(model)
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

