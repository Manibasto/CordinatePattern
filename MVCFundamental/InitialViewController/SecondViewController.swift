//
//  SecondViewController.swift
//  MVCFundamental
//
//  Created by Anil Kumar on 11/07/19.
//  Copyright © 2019 com. All rights reserved.
//

import UIKit

public protocol SecondViewControllerDelegate: class {
    func navigateToThird()
}


class SecondViewController: UIViewController {

    var mainView: FirstView
    
    public weak var delegate: SecondViewControllerDelegate?
    
    init(mainView: FirstView = .init()) {
        self.mainView = mainView
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func loadView() {
        super.loadView()
        view = mainView
        mainView.backgroundColor = .cyan
        mainView.GoToNextButton.setTitle("GoToThird", for: .normal)
        
        mainView.EmptyClosure = { self.delegate?.navigateToThird() }
    }

}
