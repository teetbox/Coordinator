//
//  OneViewModel.swift
//  TC
//
//  Created by Matt Tian on 02/04/2018.
//  Copyright © 2018 TTSY. All rights reserved.
//

import Foundation

protocol OneViewModelCoordinator {
    func goNext()
}

class OneViewModel: ViewModel {
    
    var coordinator: OneViewModelCoordinator?
    
    init() {
        print("One VM init")
    }
    
    deinit {
        print("One VM deinit")
    }
    
    func next() {
        coordinator?.goNext()
    }
    
}
