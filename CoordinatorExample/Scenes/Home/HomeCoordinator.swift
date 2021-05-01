//
//  HomeCoordinator.swift
//  CoordinatorExample
//
//  Created by Israel Torres Alvarado on 30/04/21.
//

import UIKit

class HomeCoordinator: Coordinator {
    
    var homeViewController: HomeViewController?
    let navigatiionController: UINavigationController
    
    init() {
        self.homeViewController = HomeViewController()
        self.navigatiionController = UINavigationController(rootViewController: homeViewController!)
    }
    
    func start() {
        self.homeViewController?.coordinator = self
        self.homeViewController?.tabBarItem = UITabBarItem(title: "Inicio", image: UIImage(named: ""), tag: 0)
    }
    
    func goToCart() {
        
        let cartCoordinator = CartCoordinator(presented: navigatiionController)
        cartCoordinator.start()
        
    }
    
    
}
