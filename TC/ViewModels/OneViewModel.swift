//
//  OneViewModel.swift
//  TC
//
//  Created by Matt Tian on 02/04/2018.
//  Copyright © 2018 TTSY. All rights reserved.
//

import Foundation

protocol OneViewModelCoordinator {
    func toNext()
}

class OneViewModel: ViewModelProtocol {
    
    var coordinator: OneViewModelCoordinator?
    
    func showNext() {
        coordinator?.toNext()
    }
    
}
