//
//  HaxorRemoteDataSource.swift
//  H4X0R News
//
//  Created by arthur gonzaga on 18/02/24.
//

import Foundation
import Alamofire

class RemoteDataSource {
    private init() {}
    
    static let shared = RemoteDataSource()
}

extension RemoteDataSource: RemoteDataSoureProtocol {
    
    func getFrontPageList() async throws -> Result<FrontPageResponse, AFError> {
        return await AF.request("http://hn.algolia.com/api/v1/search?tags=front_page")
            .serializingDecodable(FrontPageResponse.self)
            .response.result
    }
}
