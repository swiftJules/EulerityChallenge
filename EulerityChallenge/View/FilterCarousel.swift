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
    
    let image: UIImage?
    
    var body: some View {
        if let image = image {
            ScrollView(.horizontal) {
                HStack(spacing: 10) {
                    ForEach(filters, id: \.self) { filterStr in
                        let filter = CIFilter(name: filterStr)
                        FilterImage(uiImage: image, filter: filter)
                    }
                }.padding()
            }
        }
    }
}

//struct FilterCarousel_Previews: PreviewProvider {
//    static var previews: some View {
//        FilterCarousel()
//    }
//}
