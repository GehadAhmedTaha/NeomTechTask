//
//  CoffeeModel.swift
//  NeomInterviewApp
//
//  Created by Gehad AbdElAziz on 12/03/2024.
//

import Foundation

struct CoffeeModel: Codable,Identifiable {
    var id: Int?
    var title: String?
    var description: String?
    var ingredients: [String]?
    var imageUrl: URL?
}
