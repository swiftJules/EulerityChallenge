//
//  ImageModel.swift
//  EulerityChallenge
//
//  Created by Juliana Connors on 3/22/22.
//

import Foundation

struct ImageModel: Codable, Identifiable {
    var id: UUID
    let url: String
    
    private enum CodingKeys: String, CodingKey { case id, url }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = UUID()
        let decodedURL = try container.decode(String.self, forKey: .url)
        url = decodedURL
    }
}
