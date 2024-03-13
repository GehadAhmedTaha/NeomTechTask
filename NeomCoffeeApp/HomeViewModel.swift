//
//  HomeViewModel.swift
//  NeomInterviewApp
//
//  Created by Gehad AbdElAziz on 13/03/2024.
//

import Foundation
import RxSwift

class HomeViewModel {
    private var apiClient = APIClient()
    var contentObserver = PublishSubject<[CoffeeModel]>()
    var items = [CoffeeModel]()
    init() {
        self.getCoffeeItems()
    }
    
    private func getCoffeeItems() {
        apiClient.getCoffee { result in
            switch result {
            case .success(let items):
                self.contentObserver.onNext(items)
                self.items = items
            case .failure(let error):
                print("failure")
            }
        }

    }
}
