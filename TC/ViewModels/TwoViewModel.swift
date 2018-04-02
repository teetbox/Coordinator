//
//  TwoViewModel.swift
//  TC
//
//  Created by Matt Tian on 02/04/2018.
//  Copyright © 2018 TTSY. All rights reserved.
//

import Foundation

protocol TwoViewModelCoordinator {
    
}

class TwoViewModel: ViewModel {
    
    var coordinator: TwoViewModelCoordinator?
    
    init() {
        print("Two VM init")
    }
    
    deinit {
        print("Two VM deinit")
    }
    
}
