//
//  APIClient.swift
//  NeomInterviewApp
//
//  Created by Gehad AbdElAziz on 12/03/2024.
//

import Foundation
import Alamofire

class APIClient {
    
    func getCoffee(completion:@escaping (Result<[CoffeeModel], AFError>)->Void) {
        AF.request(APIRouter.fetchCoffeeData).responseDecodable(decoder:JSONDecoder()) {  (response: DataResponse<[CoffeeModel], AFError> )in
            completion(response.result)
        }
    }
    
}
