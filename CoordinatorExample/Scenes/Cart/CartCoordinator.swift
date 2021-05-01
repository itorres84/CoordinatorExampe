//
//  CartCoordinator.swift
//  CoordinatorExample
//
//  Created by Israel Torres Alvarado on 30/04/21.
//

import UIKit



class CartCoordinator: Coordinator {
        
    let cartViewController: CartViewController
    let presented: UIViewController
    
    init(presented: UIViewController) {
        self.presented = presented
        cartViewController = CartViewController()
    }
    
    func start() {
        self.presented.present(cartViewController, animated: true, completion: nil)
    }
        
}
