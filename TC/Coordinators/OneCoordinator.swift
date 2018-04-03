//
//  OneCoordinator.swift
//  TC
//
//  Created by Matt Tian on 02/04/2018.
//  Copyright © 2018 TTSY. All rights reserved.
//

import UIKit

class OneCoordinator: AppCoordinator {
    
    override func start() {
        let oneVM = OneViewModel()
        oneVM.coordinator = self
        let oneVC = OneViewController(viewModel: oneVM)
        let rootNavi = UINavigationController(rootViewController: oneVC)
        window.rootViewController = rootNavi
    }

}

extension OneCoordinator: OneViewModelCoordinator {
    
    func toNext() {
        TwoCoordinator(window: window).start()
    }
    
}
