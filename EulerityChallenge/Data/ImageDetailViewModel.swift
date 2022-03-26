//
//  ImageDetailViewModel.swift
//  EulerityChallenge
//
//  Created by Rave Bizz on 3/24/22.
//

import Foundation
import UIKit

class ImageDetailViewModel: Identifiable {
    let model: ImageModel?
    
    init(model: ImageModel) {
        self.id = UUID()
        self.model = model
    }
    
    var id: UUID?
    
    var url: String {
        model?.url ?? ""
    }
    
    var image: UIImage? {
        let image = ImageCache.shared.read(imageStr: url)
        return image
    }
    
    var imageData: Data?

}
