//
//  StackTool.swift
//  TC
//
//  Created by Matt Tian on 03/04/2018.
//  Copyright © 2018 TTSY. All rights reserved.
//

import Foundation

struct Stack<T> {
    
    private var items = [T]()
    
    public mutating func push(_ item: T) {
        items.append(item)
    }
    
    @discardableResult
    public mutating func pop() -> T? {
        guard !items.isEmpty else {
            return nil
        }
        return items.removeLast()

    }
    
    public func peek() -> T? {
        return items.last
    }
    
}

extension Stack: CustomStringConvertible {

    var description: String {
        return "Coordinators: \(items)"
    }
    
}

