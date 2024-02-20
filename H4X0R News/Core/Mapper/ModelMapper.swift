//
//  FrontPageMapper.swift
//  H4X0R News
//
//  Created by arthur gonzaga on 19/02/24.
//

import Foundation


extension FrontPageResponse {
    
    func toEntity() -> [FrontPageEntity] {
        return self.hits.compactMap {
            
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
            
            let date = dateFormatter.date(from: $0.createdAt)
            
            
            if let date {
                return FrontPageEntity(id: $0.storyId, title: $0.title, points: $0.points, dateCreated: date, url: $0.url)
            }
            return nil
        }
    }
    
}
