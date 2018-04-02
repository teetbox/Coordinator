//
//  OneCoordinator.swift
//  TC
//
//  Created by Matt Tian on 02/04/2018.
//  Copyright © 2018 TTSY. All rights reserved.
//

import UIKit

protocol Coordinator {
    func start()
}

class OneCoordinator: Coordinator {
    
    let window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
        print("One Coordinator init")
    }
    
    deinit {
        print("One Coordinator deinit")
    }
    
    func start() {
        let oneViewModel = OneViewModel()
        oneViewModel.coordinator = self
        let oneViewController = OneViewController(viewModel: oneViewModel)
        window.rootViewController = UINavigationController(rootViewController: oneViewController)
    }

}

extension OneCoordinator: OneViewModelCoordinator {
    
    func goNext() {
        let twoCoordinator = TwoCoordinator(window: window)
        twoCoordinator.start()
    }
    
}
