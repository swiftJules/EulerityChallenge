//
//  ImageViewModel.swift
//  EulerityChallenge
//
//  Created by Juliana Connors on 3/22/22.
//

import Combine
import Foundation

class ViewModel: ObservableObject {
    @Published var images =  [ImageModel]()
    private var cancellableSet: Set<AnyCancellable> = []
    
    init() {
        DataRequester.shared.fetchData() { imageModels in
            DispatchQueue.main.async {
                self.images = imageModels
            }
        }
    }
}
