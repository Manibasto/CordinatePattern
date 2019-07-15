//
//  ThirdCoordinator.swift
//  MVCFundamental
//
//  Created by Anil Kumar on 11/07/19.
//  Copyright © 2019 com. All rights reserved.
//

import UIKit

protocol BackToSecondDelegate: class {
    func backToSecond(newCoordinator: ThirdCoordinator)
}

class ThirdCoordinator: Coordinator {
    
    var childCoordinator: [Coordinator] = []
    
    unowned let navigationController: UINavigationController
    
    public weak var delegate: BackToSecondDelegate?
    
    required init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let thirdViewController: ThirdViewController = ThirdViewController()
        thirdViewController.delegate = self
        navigationController.pushViewController(thirdViewController, animated: true)
    }
}

extension ThirdCoordinator: ThirdViewControllerDelegate {
    func navToFourth() {
        let fourthViewController: FourthViewController = FourthViewController()
        fourthViewController.delegate = self
        navigationController.pushViewController(fourthViewController, animated: true)
    }
    
    func navToRoot() {
        self.delegate?.backToSecond(newCoordinator: self)
    }
}
