//
//  ApiError.swift
//  Pokedex2.0
//
//  Created by Karthik Manishankar on 7/29/22.
//

import Foundation


enum ApiError: Error{
    case decodingError
    case errorCode(Int)
    case unknown
}

extension ApiError: LocalizedError{
    var errorDescription: String?{
        switch self{
        case .decodingError:
            return "Failed to decode error"
        case .errorCode(let code):
            return "\(code) - Something went wrong"
        case .unknown:
            return "Unknown error occured"
        }

    }
}
