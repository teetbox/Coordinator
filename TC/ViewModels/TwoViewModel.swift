//
//  TwoViewModel.swift
//  TC
//
//  Created by Matt Tian on 02/04/2018.
//  Copyright © 2018 TTSY. All rights reserved.
//

import Foundation

protocol TwoViewModelCoordinator {
    func toMenu()
}

class TwoViewModel: ViewModelProtocol {
    
    var coordinator: TwoViewModelCoordinator?

    func showMenu() {
        coordinator?.toMenu()
    }
    
}
