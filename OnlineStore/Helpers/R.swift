//
//  R.swift
//  OnlineStore
//
//  Created by ILYA POPOV on 17.02.2023.
//

import UIKit

enum R {
    
    //MARK: - Colors
    enum Colors {
        static let primary = UIColor(hexString: "#86C204")
        static let inActive = UIColor(hexString: "#ACACAC")
        
        static let separator = UIColor(hexString: "#DBDBDB")
    }
    
    //MARK: - Image
    enum Image {
        enum TabBar {
            static let main = UIImage(named: "main")
            static let catalog = UIImage(named: "catalog")
            static let basket = UIImage(named: "basket")
            static let shops = UIImage(named: "shops")
            static let profile = UIImage(named: "profile")
        }
        
        enum Category {
            static let airPods = UIImage(named: "airpods")
            static let airTag = UIImage(named: "airtag")
            static let cases = UIImage(named: "case")
            static let homePod = UIImage(named: "homepod")
            static let ipad = UIImage(named: "ipad")
            static let iphone = UIImage(named: "iphone")
            static let mac = UIImage(named: "mac")
            static let tv = UIImage(named: "tv")
            static let appleWatch = UIImage(named: "watch")
        }
    }
    
    //MARK: - Fonts
    enum Font {
        static func sfBold(with size: CGFloat) -> UIFont {
            UIFont.boldSystemFont(ofSize: size) 
        }
        static func sfRegular(with size: CGFloat) -> UIFont {
            UIFont.systemFont(ofSize: size) 
        }
    }
}
