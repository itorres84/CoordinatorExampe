//
//  CategoriesCoordinator.swift
//  CoordinatorExample
//
//  Created by Israel Torres Alvarado on 30/04/21.
//

import UIKit

class CategoriesCoordinator: Coordinator {
    
    let categoriesViewController: CategoriesViewController
    let navigatiionController: UINavigationController
    
    init() {
        self.categoriesViewController = CategoriesViewController()
        self.navigatiionController = UINavigationController(rootViewController: categoriesViewController)
    }
    
    func start() {
        self.categoriesViewController.coordinator = self
        self.categoriesViewController.tabBarItem = UITabBarItem(title: "Categorias", image: UIImage(named: ""), tag: 1)
    }
    
}
