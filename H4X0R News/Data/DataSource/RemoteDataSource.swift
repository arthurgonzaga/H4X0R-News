//
//  HaxorRemoteDataSource.swift
//  H4X0R News
//
//  Created by arthur gonzaga on 18/02/24.
//

import Foundation
import Alamofire

final class RemoteDataSource: RemoteDataSoureProtocol {
    
    func getFrontPageList() async -> Result<FrontPageResponse> {
        let afResult = await AF.request("http://hn.algolia.com/api/v1/search?tags=front_page")
            .serializingDecodable(FrontPageResponse.self)
            .response.result
        
        return Result.from(afResult)
    }
}
