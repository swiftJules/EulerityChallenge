//
//  ImageRequester.swift
//  EulerityChallenge
//
//  Created by Rave Bizz on 3/24/22.
//

import Foundation
import UIKit

class ImageRequester {
    static let shared = ImageRequester()
    
    func fetchImage(imageStr: String) {
        guard let url = URL(string: imageStr) else { return }
        URLSession.shared.dataTask(with: url) { data, response, error in
            DispatchQueue.main.async {
                guard let data = data else { return }
                if let image = UIImage(data: data) {
                    ImageCache.shared.write(imageStr: imageStr, image: image)
                }
            }
        }.resume()
    }
}
