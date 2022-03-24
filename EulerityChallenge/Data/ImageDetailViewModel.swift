//
//  ImageDetailViewModel.swift
//  EulerityChallenge
//
//  Created by Rave Bizz on 3/24/22.
//

import Foundation

class ImageDetailViewModel {
    let model: ImageModel?
    
    init(model: ImageModel) {
        self.model = model
    }
    
    var url: String {
        model?.url ?? ""
    }
}
