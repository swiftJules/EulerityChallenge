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
        guard let imageData = imageData else { return nil }
        return UIImage(data: imageData)
    }
    
    var imageData: Data?

}
