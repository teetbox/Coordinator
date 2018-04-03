//
//  TwoCoordinator.swift
//  TC
//
//  Created by Matt Tian on 02/04/2018.
//  Copyright © 2018 TTSY. All rights reserved.
//

import UIKit

class TwoCoordinator: AppCoordinator {
    
    override func start() {
        let twoVM = TwoViewModel()
        twoVM.coordinator = self
        let twoVC = TwoViewController(viewModel: twoVM)
        
        let topNavi = UIApplication.topNaviController()
        topNavi?.pushViewController(twoVC, animated: true)
    }
    
}

extension TwoCoordinator: TwoViewModelCoordinator {
    func toMenu() {
        ThreeCoordinator(window: window).start()
    }
}
