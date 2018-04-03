//
//  ThreeCoordinator.swift
//  TC
//
//  Created by Matt Tian on 03/04/2018.
//  Copyright © 2018 TTSY. All rights reserved.
//

import UIKit

class ThreeCoordinator: AppCoordinator {
    
    override func start() {
        let threeVM = ThreeViewModel()
        threeVM.coordinator = self
        let threeVC = ThreeViewController(viewModel: threeVM)
        
        let topNavi = UIApplication.topNaviController()
        topNavi?.pushViewController(threeVC, animated: true)
    }
    
}

extension ThreeCoordinator: ThreeViewModelCoordinatorDelegate {
    
}
