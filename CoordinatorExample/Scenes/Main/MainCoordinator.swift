//
//  MainCoordinator.swift
//  CoordinatorExample
//
//  Created by Israel Torres Alvarado on 30/04/21.
//

import UIKit

class MainCoordinator: Coordinator {
    
    let window: UIWindow
    let mainViewController: MainViewController
    
    init(window: UIWindow) {
        self.window = window
        
        self.mainViewController = MainViewController()
        
        let homeCoordinator = HomeCoordinator()
        homeCoordinator.start()
        
        let categoriesCoordinator = CategoriesCoordinator()
        categoriesCoordinator.start()
        
        self.mainViewController.viewControllers = [homeCoordinator.navigatiionController, categoriesCoordinator.navigatiionController]
        
        window.rootViewController = self.mainViewController
        
    }
    
    func start() {
        window.makeKeyAndVisible()
    }

}
