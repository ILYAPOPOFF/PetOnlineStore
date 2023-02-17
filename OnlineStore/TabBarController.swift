//
//  ViewController.swift
//  OnlineStore
//
//  Created by ILYA POPOV on 17.02.2023.
//

import UIKit

enum Tabs: Int, CaseIterable {
    case main
    case catalog
    case bag
    case shops
    case profile
}

class TabBarController: UITabBarController {

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)

        configure()

    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func configure() {
        tabBar.tintColor = R.Colors.primary
        tabBar.barTintColor = R.Colors.inActive
        tabBar.backgroundColor = .white

        tabBar.layer.borderColor = R.Colors.separator.cgColor
        tabBar.layer.borderWidth = 1
        tabBar.layer.masksToBounds = true

        let mainController = MainController()
        let catalogController = CatalogController()
        let bagController = BagController()
        let shopsController = ShopsController()
        let profileController = ProfileController()

        let mainNavigationController = UINavigationController(rootViewController: mainController)
        let catalogNavigationController = UINavigationController(rootViewController: catalogController)
        let bagNavigationController = UINavigationController(rootViewController: bagController)
        let shopsNavigationController = UINavigationController(rootViewController: shopsController)
        let profileNavigationController = UINavigationController(rootViewController: profileController)

        mainNavigationController.tabBarItem = UITabBarItem(title: "Главная", image: UIImage(systemName: "profile"), tag: Tabs.main.rawValue)
        catalogNavigationController.tabBarItem = UITabBarItem(title: "Главная", image: UIImage(systemName: "profile"), tag: Tabs.catalog.rawValue)

        setViewControllers([mainNavigationController, catalogNavigationController], animated: false)
    }

}
