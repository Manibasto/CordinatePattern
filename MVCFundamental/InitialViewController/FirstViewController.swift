//
//  FirstViewController.swift
//  MVCFundamental
//
//  Created by Anil Kumar on 10/07/19.
//  Copyright © 2019 com. All rights reserved.
//

import UIKit

public protocol FirstViewControllerDelegate: class {
    func navigateToNext()
}

class FirstViewController: UIViewController {
    
    var mainView: FirstView
    
    public weak var delegate: FirstViewControllerDelegate?
    
    init(mainView: FirstView = .init()) {
        self.mainView = mainView
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainView.EmptyClosure = { self.delegate?.navigateToNext() }
    }
    
    override func loadView() {
        super.loadView()
        view.backgroundColor = .white
        view = mainView
    }
}
