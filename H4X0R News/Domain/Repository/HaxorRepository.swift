//
//  HaxorRepository.swift
//  H4X0R News
//
//  Created by arthur gonzaga on 19/02/24.
//

import Foundation

protocol HaxorRepository {
    
    func getFrontPageList() async ->  Result<FrontPageResponse>
}
