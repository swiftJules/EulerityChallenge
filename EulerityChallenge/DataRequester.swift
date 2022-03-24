//
//  DataRequester.swift
//  EulerityChallenge
//
//  Created by Juliana Connors on 3/22/22.
//

import Foundation

class DataRequester {
    static let shared = DataRequester()
    
    func fetchData(closure: @escaping ([ImageModel]) -> Void) {
        guard let url = URL(string: NetworkConstants.dataURL) else { return }
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else { return }
            if let result = try? JSONDecoder().decode([ImageModel].self, from: data) {
                closure(result)
            }
        }.resume()
    }
}
