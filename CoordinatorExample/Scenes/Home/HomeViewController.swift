//
//  HomeViewController.swift
//  CoordinatorExample
//
//  Created by Israel Torres Alvarado on 30/04/21.
//

import UIKit

class HomeViewController: UIViewController {

    var coordinator: HomeCoordinator?
    
    lazy var button: UIButton = {
       
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.isUserInteractionEnabled = true
        button.setTitle("Open Cart", for: .normal)
        button.backgroundColor = .black
       
        return button
        
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        title = "Home"
        
        view.addSubview(button)
        button.addTarget(self, action: #selector(self.buttonTapped), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.widthAnchor.constraint(equalToConstant: 200),
            button.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        
    }
    
    @objc func buttonTapped(sender : UIButton) {
    
        coordinator?.goToCart()
    
    }
  
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
