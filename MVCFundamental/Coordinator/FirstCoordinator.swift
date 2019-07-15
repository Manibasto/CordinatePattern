//
//  FirstCoordinator.swift
//  MVCFundamental
//
//  Created by Anil Kumar on 11/07/19.
//  Copyright © 2019 com. All rights reserved.
//

import UIKit

class FirstCoordinator: Coordinator {
    
    var childCoordinator: [Coordinator] = []
    
    unowned let navigationController: UINavigationController
    
    required init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let firstViewController: FirstViewController = FirstViewController()
        firstViewController.delegate = self
        self.navigationController.viewControllers = [firstViewController]
    }
}

extension FirstCoordinator: FirstViewControllerDelegate {
    func navigateToNext() {
        let secondCoordinater = SecondCoordinator(navigationController: navigationController)
        childCoordinator.append(secondCoordinater)
        secondCoordinater.start()
    }
}

extension FirstCoordinator: backToRootDelegate {
    func backToRoot(newCoordinator: SecondCoordinator) {
        navigationController.popToRootViewController(animated: true)
        childCoordinator.removeLast()
    }
}
