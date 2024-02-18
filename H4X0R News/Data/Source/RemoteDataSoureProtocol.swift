//
//  RemoteDataSoureProtocol.swift
//  H4X0R News
//
//  Created by arthur gonzaga on 18/02/24.
//

import Foundation
import Alamofire

protocol RemoteDataSoureProtocol {
    
    func getFrontPageList() async throws -> Result<FrontPageResponse, AFError>
}
