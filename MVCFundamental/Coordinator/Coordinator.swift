//
//  Coordinator.swift
//  MVCFundamental
//
//  Created by Anil Kumar on 11/07/19.
//  Copyright © 2019 com. All rights reserved.
//

import UIKit

public protocol Coordinator: class {
    
    var childCoordinator: [Coordinator] { get set }
    
    init(navigationController: UINavigationController)
    
    func start()
}
