//
//  ImageViewModel.swift
//  EulerityChallenge
//
//  Created by Rave Bizz on 3/22/22.
//

import Combine
import Foundation

class ViewModel: ObservableObject {
    @Published var images =  [ImageModel]()
    private var cancellableSet: Set<AnyCancellable> = []
    
    init() {
        //getImages()
        DataRequester.shared.fetchData() { imageModels in
            DispatchQueue.main.async {
                self.images = imageModels
            }
        }
    }
            
//    func getImages() {
//        DataRequester.shared.fetchData()
//            .sink { (dataResponse) in
//                if dataResponse.error != nil {
//                    // handle error
//                } else {
//                    guard let images = dataResponse.value else { return }
//                    self.images = images
//                }
//            }.store(in: &cancellableSet)
//    }
}
