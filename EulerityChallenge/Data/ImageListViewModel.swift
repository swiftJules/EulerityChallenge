//
//  ImageListViewModel.swift
//  EulerityChallenge
//
//  Created by Rave Bizz on 3/24/22.
//

import Combine
import UIKit

class ImageListViewModel: ObservableObject {
    @Published var detailViewModels =  [ImageDetailViewModel]()
    private var cancellableSet: Set<AnyCancellable> = []
    
    init() {
        fetchData()
    }    
    
    func fetchData() {
        DataRequester.shared.fetchData()
            .sink { (dataResponse) in
                if dataResponse.error != nil {
                    // handle error
                } else {
                    guard let imageModels = dataResponse.value else { return }
                    let detailViewModels = imageModels.map { model in
                        ImageDetailViewModel(model: model)
                    }
                    self.detailViewModels = detailViewModels
                    self.fetchImages()
                }
            }.store(in: &cancellableSet)
    }
    
    func fetchImages() {
        for viewModel in detailViewModels {
            ImageRequester.shared.fetchImage(viewModel: viewModel)
        }
    }
}
