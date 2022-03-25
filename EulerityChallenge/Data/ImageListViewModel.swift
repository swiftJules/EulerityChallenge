//
//  ImageListViewModel.swift
//  EulerityChallenge
//
//  Created by Rave Bizz on 3/24/22.
//

import Foundation
import UIKit

class ImageListViewModel: ObservableObject, Identifiable {
    @Published var images =  [ImageModel]()
    
    init() {
        DataRequester.shared.fetchData() { imageModels in
            DispatchQueue.main.async {
                self.images = imageModels
                self.fetchImages()
            }
        }
    }
    
    func fetchImages() {
        for model in images {
            ImageRequester.shared.fetchImage(imageStr: model.url)
        }
    }
}
