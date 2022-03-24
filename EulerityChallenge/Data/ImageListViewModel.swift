//
//  ImageListViewModel.swift
//  EulerityChallenge
//
//  Created by Rave Bizz on 3/24/22.
//

import Foundation

class ImageListViewModel: ObservableObject {
    @Published var images =  [ImageModel]()
    
    init() {
        DataRequester.shared.fetchData() { imageModels in
            DispatchQueue.main.async {
                self.images = imageModels
            }
        }
    }
}
