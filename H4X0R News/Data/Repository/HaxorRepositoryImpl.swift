//
//  HaxorRepositoryImpl.swift
//  H4X0R News
//
//  Created by arthur gonzaga on 19/02/24.
//

import Foundation

class HaxorRepositoryImpl {
    
    private let remoteDataSource: RemoteDataSoureProtocol
    
    init(remoteDataSource: RemoteDataSoureProtocol) {
        self.remoteDataSource = remoteDataSource
    }
    
}

extension HaxorRepositoryImpl: HaxorRepository {
    
    func getFrontPageList() async -> Result<FrontPageResponse> {
        return try! await remoteDataSource.getFrontPageList()
    }
    
}
