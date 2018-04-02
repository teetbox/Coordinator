//
//  TwoViewController.swift
//  TC
//
//  Created by Matt Tian on 02/04/2018.
//  Copyright © 2018 TTSY. All rights reserved.
//

import UIKit

class TwoViewController: BaseViewController<TwoViewModel> {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .blue
        
        print("Two VC init")
    }
    
    deinit {
        print("Two VC deinit")
    }

}
