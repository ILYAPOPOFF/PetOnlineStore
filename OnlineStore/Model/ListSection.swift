//
//  ListSection.swift
//  OnlineStore
//
//  Created by ILYA POPOV on 20.02.2023.
//

import Foundation

enum ListSection {
    
    case categories([CategoryModel])
    
    var items: [CategoryModel] {
        switch self {
        case .categories(let items):
            return items
        }
    }
    
    var count: Int {
        items.count
    }
    
}
