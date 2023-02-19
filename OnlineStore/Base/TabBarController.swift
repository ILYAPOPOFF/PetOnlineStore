//
//  ViewController.swift
//  OnlineStore
//
//  Created by ILYA POPOV on 17.02.2023.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        setupTabBar()
        
    }
    
    private func setupTabBar() {
        let mainController = createNavController(vc: MainController(), title: "Главная", image: UIImage(systemName: "house")!, tag: 0)
        let basketController = createNavController(vc: BasketController(), title: "Корзина", image: UIImage(systemName: "basket")!, tag: 2)
        let shopsController = createNavController(vc: ShopsController(), title: "Магазины", image: UIImage(systemName: "map")!, tag: 3)
        let profileController = createNavController(vc: ProfileController(), title: "Профиль", image: UIImage(systemName: "person")!, tag: 4)
        
        viewControllers = [mainController, basketController, shopsController, profileController]
    }
    
    private func createNavController(vc: UIViewController, title: String, image: UIImage, tag: Int) -> UINavigationController {
        let item = UITabBarItem(title: title, image: image, tag: tag)
        let navController = UINavigationController(rootViewController: vc)
        navController.tabBarItem = item
        
        tabBar.backgroundColor = .white
        
        tabBar.tintColor = R.Colors.primary
        //tabBar.barTintColor = R.Colors.inActive
//        tabBar.layer.borderColor = R.Colors.separator.cgColor
//        tabBar.layer.borderWidth = 1
//        tabBar.layer.masksToBounds = true
        
        return navController
    }

}




