//
//  ThirdViewController.swift
//  MVCFundamental
//
//  Created by Anil Kumar on 11/07/19.
//  Copyright © 2019 com. All rights reserved.
//

import UIKit

public protocol ThirdViewControllerDelegate: class {
    func navToFourth()
    func navToRoot()
}

class ThirdViewController: UIViewController {

    var mainView: FirstView
    
    public weak var delegate: ThirdViewControllerDelegate?
    
    init(mainView: FirstView = .init()) {
        self.mainView = mainView
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        super.loadView()
        view = mainView
        mainView.backgroundColor = .yellow
        
        mainView.GoToNextButton.setTitle("GoToFourth", for: .normal)
        
        mainView.EmptyClosure = { self.delegate?.navToFourth() }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

    }
}
