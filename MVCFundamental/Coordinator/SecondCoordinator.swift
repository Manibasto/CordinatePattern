//
//  SecondCoordinator.swift
//  MVCFundamental
//
//  Created by Anil Kumar on 11/07/19.
//  Copyright © 2019 com. All rights reserved.
//

import UIKit

protocol backToRootDelegate: class {
    func backToRoot(newCoordinator: SecondCoordinator)
}

class SecondCoordinator: Coordinator {
    var childCoordinator: [Coordinator] = []
    
    unowned let navigationController: UINavigationController
    
    public weak var delegate: backToRootDelegate?
    
    required init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let secondViewController: SecondViewController = SecondViewController()
        secondViewController.delegate = self
        navigationController.pushViewController(secondViewController, animated: true)
    }
}

extension SecondCoordinator: SecondViewControllerDelegate {
    func navigateToThird() {
        let thirdCoordinator = ThirdCoordinator(navigationController: navigationController)
        thirdCoordinator.delegate = self
        childCoordinator.append(thirdCoordinator)
        thirdCoordinator.start()
    }
}

extension SecondCoordinator: BackToSecondDelegate {
    func backToSecond(newCoordinator: ThirdCoordinator) {
        navigationController.popToRootViewController(animated: true)
//        childCoordinator.removeLast()
    }
}
