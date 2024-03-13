//
//  NetworkConstants.swift
//  NeomInterviewApp
//
//  Created by Gehad AbdElAziz on 12/03/2024.
//

import Foundation

enum HTTPHeaderField: String {
    case authentication = "Authorization"
    case contentType = "Content-Type"
    case acceptType = "Accept"
    case acceptEncoding = "Accept-Encoding"
}

enum ContentType: String {
    case json = "application/json"
}
