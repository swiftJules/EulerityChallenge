//
//  ImageDetailViewModel.swift
//  EulerityChallenge
//
//  Created by Rave Bizz on 3/24/22.
//

import Foundation
import UIKit

class ImageDetailViewModel {
    let model: ImageModel?
    
    init(model: ImageModel) {
        self.model = model
    }
    
    var url: String {
        model?.url ?? ""
    }
    
    var image: UIImage? {
        let image = ImageCache.shared.read(imageStr: url)
        return image
    }

}
