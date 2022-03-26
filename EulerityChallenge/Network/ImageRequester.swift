//
//  ImageRequester.swift
//  EulerityChallenge
//
//  Created by Rave Bizz on 3/24/22.
//

import Alamofire
import UIKit

class ImageRequester {
    static let shared = ImageRequester()
    
    func fetchImage(viewModel: ImageDetailViewModel) {
        guard let url = URL(string: viewModel.url) else { return }
        
        AF.request(url).responseData { (response) in
            if response.error == nil {
                if let data = response.data {
                    viewModel.imageData = data
                }
            }
        }
    }
}
