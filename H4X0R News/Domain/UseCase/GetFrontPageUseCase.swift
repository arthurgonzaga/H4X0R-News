//
//  GetFrontPageUseCase.swift
//  H4X0R News
//
//  Created by arthur gonzaga on 19/02/24.
//

import Foundation

@dynamicCallable
protocol GetFrontPageUseCase {
    
    func dynamicallyCall(withArguments:[Void]) async -> Result<[FrontPageEntity]>
}
