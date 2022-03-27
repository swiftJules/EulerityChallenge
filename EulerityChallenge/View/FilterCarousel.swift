//
//  FilterCarousel.swift
//  EulerityChallenge
//
//  Created by Rave Bizz on 3/24/22.
//

import CoreImage
import SwiftUI

struct FilterCarousel: View {
    //let currentFilters = CIFilter.filterNames(inCategories: [kCICategoryColorEffect])
    let filters = ["CISepiaTone", "CIPhotoEffectNoir", "CIPhotoEffectChrome", "CIColorMonochrome"]
    
    let imageData: Data?
    
    var body: some View {
        if let imageData = imageData {
            ScrollView(.horizontal) {
                HStack(spacing: 10) {
                    ForEach(filters, id: \.self) { filterStr in
                        let filter = CIFilter(name: filterStr)
                        let image = UIImage(data: imageData)
                        Button {
                            //action
                        } label: {
                            FilterImage(uiImage: image, filter: filter)
                        } //:BUTTON
                    }
                } //:HSTACK
                .padding()
            } //:SCROLLVIEW
        }
    }
}
