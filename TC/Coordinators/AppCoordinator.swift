//
//  AppCoordinator.swift
//  TC
//
//  Created by Matt Tian on 03/04/2018.
//  Copyright © 2018 TTSY. All rights reserved.
//

import UIKit

var coordinatorStack = Stack<String>()

class AppCoordinator {
    
    let window: UIWindow
    let shouldToMain = true
    
    init(window: UIWindow) {
        self.window = window
        
        coordinatorStack.push("\(self)")
    }
    
    deinit {
        coordinatorStack.pop()
        print(coordinatorStack)
    }
    
    func start() {
        shouldToMain ? showMain() : showLogin()
    }
    
    func showMain() {
        OneCoordinator(window: window).start()
    }
    
    func showLogin() {
        print("Login is needed")
        OneCoordinator(window: window).start()
    }

}
