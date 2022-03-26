//
//  DataRequester.swift
//  EulerityChallenge
//
//  Created by Juliana Connors on 3/22/22.
//

import Alamofire
import Combine
import Foundation

class DataRequester {
    static let shared = DataRequester()
    
    func fetchData() -> AnyPublisher<DataResponse<[ImageModel], Error>, Never> {
        let url = URL(string: NetworkConstants.dataURL)!
        return AF.request(url,
                          method: .get)
            .validate()
            .publishDecodable(type: [ImageModel].self)
            .map { response in
                response.mapError { error in
                    return error
                }
            }
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
    }
}
