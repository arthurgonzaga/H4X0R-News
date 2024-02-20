//
//  Result.swift
//  H4X0R News
//
//  Created by arthur gonzaga on 19/02/24.
//

import Foundation
import Alamofire

enum Result<T> {
    case success(T)
    case failure(Error)
    case loading

    var isSuccess: Bool {
        if case .success = self {
            return true
        }
        return false
    }

    var isFailure: Bool {
        if case .failure = self {
            return true
        }
        return false
    }

    var isLoading: Bool {
        if case .loading = self {
            return true
        }
        return false
    }

    var value: T? {
        if case let .success(value) = self {
            return value
        }
        return nil
    }

    var error: Error? {
        if case let .failure(error) = self {
            return error
        }
        return nil
    }
}

extension Result {
    
    
    func map<R>(_ transform: (T) -> R) -> Result<R> {
        switch self {
        case .success(let value):
            return .success(transform(value))
        case .failure(let error):
            return .failure(error)
        case .loading:
            return .loading
        }
    }
    
    static func from(_ result: Alamofire.AFResult<T>) -> Result<T> {
        do {
            return .success(try result.get())
        } catch {
            return .failure(error)
        }
    }
}
