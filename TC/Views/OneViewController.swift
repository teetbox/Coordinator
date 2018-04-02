//
//  ViewController.swift
//  TC
//
//  Created by Matt Tian on 02/04/2018.
//  Copyright © 2018 TTSY. All rights reserved.
//

import UIKit

class OneViewController: BaseViewController<OneViewModel> {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        
        print("One VC init")
        
        let nextButton = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        nextButton.setTitle("Next", for: .normal)
        nextButton.setTitleColor(.black, for: .normal)
        nextButton.addTarget(self, action: #selector(handleNext), for: .touchUpInside)
        view.addSubview(nextButton)
    }
    
    deinit {
        print("One VC deinit")
    }
    
    @objc func handleNext() {
        viewModel.next()
    }

}
