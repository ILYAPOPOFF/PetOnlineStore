//
//  R.swift
//  OnlineStore
//
//  Created by ILYA POPOV on 17.02.2023.
//

import UIKit

enum R {
    enum Colors {
        static let primary = UIColor(hexString: "#86C204")
        static let inActive = UIColor(hexString: "#ACACAC")
        
        static let separator = UIColor(hexString: "#DBDBDB")
    }
    
    enum Image {
        enum TabBar {
            static let main = UIImage(named: "main")
            static let catalog = UIImage(named: "catalog")
            static let basket = UIImage(named: "basket")
            static let shops = UIImage(named: "shops")
            static let profile = UIImage(named: "profile")
        }
    }
}
