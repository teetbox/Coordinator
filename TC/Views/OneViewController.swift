//
//  ViewController.swift
//  TC
//
//  Created by Matt Tian on 02/04/2018.
//  Copyright © 2018 TTSY. All rights reserved.
//

import UIKit

class OneViewController: BaseViewController<OneViewModel> {
    
    // MARK: - View
    
    let nextButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        button.setTitle("Next", for: .normal)
        button.setTitleColor(.black, for: .normal)
        return button
    }()
    
    override func setupViews() {
        view.addSubview(nextButton)
        nextButton.addTarget(self, action: #selector(handleNext), for: .touchUpInside)
    }
    
    // MARK: - Action
    
    @objc func handleNext() {
        viewModel.showNext()
    }

}
