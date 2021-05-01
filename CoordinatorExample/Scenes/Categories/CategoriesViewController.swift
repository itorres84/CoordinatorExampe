//
//  CategoriesViewController.swift
//  CoordinatorExample
//
//  Created by Israel Torres Alvarado on 30/04/21.
//

import UIKit

class CategoriesViewController: UIViewController {

    weak var coordinator: CategoriesCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Categorias"
    }
    
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
