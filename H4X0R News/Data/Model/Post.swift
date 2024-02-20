//
//  Post.swift
//  H4X0R News
//
//  Created by arthur gonzaga on 18/02/24.
//

import Foundation

class Post: Decodable {
    
    let storyId: Int
    let title: String
    let points: Int
    let url: String?
    let createdAt: String
    
    enum CodingKeys: String, CodingKey {
        case storyId = "story_id"
        case createdAt = "created_at"
        case title
        case points
        case url
    }
}
