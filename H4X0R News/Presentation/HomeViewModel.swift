//
//  HomeViewModel.swift
//  H4X0R News
//
//  Created by arthur gonzaga on 19/02/24.
//

import Foundation

class HomeViewModel: ObservableObject {
    
    private let getFrontPageUseCase: GetFrontPageUseCase
    
    @Published var result: Result<[FrontPageEntity]> = .loading
    
    init(
        getFrontPageUseCase: GetFrontPageUseCase =  GetFrontPageUseCaseImpl(repository: HaxorRepositoryImpl(remoteDataSource: RemoteDataSource()))
    ) {
        self.getFrontPageUseCase = getFrontPageUseCase
    }
    
}


extension HomeViewModel {
    
    func getFrontPage() {
        Task {
            result = .loading
            result = await getFrontPageUseCase()
        }
    }
}
