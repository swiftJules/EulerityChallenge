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
        FilterCarousel(image: viewModel?.image)
        Spacer()
        ImageEditor()
    }
}

