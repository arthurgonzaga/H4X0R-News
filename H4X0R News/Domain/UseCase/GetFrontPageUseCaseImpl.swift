//
//  GetFrontPageUseCaseImpl.swift
//  H4X0R News
//
//  Created by arthur gonzaga on 19/02/24.
//

import Foundation

class GetFrontPageUseCaseImpl {
    
    let repository: HaxorRepository
    
    init(repository: HaxorRepository) {
        self.repository = repository
    }
    
}

extension GetFrontPageUseCaseImpl: GetFrontPageUseCase {
        
    func dynamicallyCall(withArguments: [Void]) async -> Result<[FrontPageEntity]> {
        return try await repository.getFrontPageList().map { response in
            response.toEntity()
        }
    }
}
