//
//  Post.swift
//  H4X0R News
//
//  Created by arthur gonzaga on 18/02/24.
//

import Foundation

class Post: Decodable {
    
    let title: String
    let url: String?
    let createdAt: String
    
    enum CodingKeys: String, CodingKey {
        case createdAt = "created_at"
        case title
        case url
    }
}
