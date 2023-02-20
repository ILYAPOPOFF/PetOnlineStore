//
//  MockData.swift
//  OnlineStore
//
//  Created by ILYA POPOV on 20.02.2023.
//

import Foundation

struct MockData {
    
    static let shared = MockData()
    
    private let categories: ListSection = {
        .categories([.init(image: "mac", name: "Mac"),
                     .init(image: "iphone", name: "iPhone"),
                     .init(image: "ipad", name: "iPad"),
                     .init(image: "watch", name: "Apple Watch"),
                     .init(image: "airpods", name: "AirPods"),
                     .init(image: "airtag", name: "AirTag"),
                     .init(image: "tv", name: "Apple TV"),
                     .init(image: "homepod", name: "HomePod"),
                     .init(image: "case", name: "Accessories")
                    ])
    }()
    
    var pageData: [ListSection] {
        [categories]
    }
}
