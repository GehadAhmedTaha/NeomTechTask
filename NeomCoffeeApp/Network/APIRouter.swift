//
//  APIRouter.swift
//  NeomInterviewApp
//
//  Created by Gehad AbdElAziz on 12/03/2024.
//

import Foundation
import Alamofire

let baseURL = "https://api.sampleapis.com"


enum APIRouter: URLRequestConvertible {

    case fetchCoffeeData
    
    // MARK: - HTTPMethod
    private var method: HTTPMethod {
        switch self {
        case .fetchCoffeeData:
            return .get
        }
    }
    
    // MARK: - Path
    private var path: String {
        switch self {
        case .fetchCoffeeData:
            return "/coffee/hot"
            
        }
    }
    
    // MARK: - Parameters
    private var parameters: Parameters? {
        switch self {
        case .fetchCoffeeData:
            return nil
        }
    }
    
    // MARK: - URLRequestConvertible
    func asURLRequest() throws -> URLRequest {
        let url = try baseURL.asURL()
        
        var urlRequest = URLRequest(url: url.appendingPathComponent(path))
        
        // HTTP Method
        urlRequest.httpMethod = method.rawValue
         
 
        // Parameters
        if let parameters = parameters {
            do {
                urlRequest.httpBody = try JSONSerialization.data(withJSONObject: parameters, options: [])
            } catch {
                throw AFError.parameterEncodingFailed(reason: .jsonEncodingFailed(error: error))
            }
        }
        
        return urlRequest
    }
}
