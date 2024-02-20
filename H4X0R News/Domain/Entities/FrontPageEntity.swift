//
//  FrontPageEntity.swift
//  H4X0R News
//
//  Created by arthur gonzaga on 19/02/24.
//

import Foundation

struct FrontPageEntity: Identifiable {
    let id: Int
    let title: String
    let points: Int
    let dateCreated: Date
    let url: String?
}
