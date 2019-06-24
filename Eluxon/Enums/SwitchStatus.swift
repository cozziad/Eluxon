//
//  SwitchStatus.swift
//  Eluxon
//
//  Created by Anthony Cozzi on 6/24/19.
//  Copyright © 2019 Anthony Cozzi. All rights reserved.
//

import Foundation

enum SwitchStatus : Togglable{
    case on,off
    
    mutating func toggle() {
        switch self {
        case .on:
            self = .off
        case .off:
            self = .on
        }
    }
}
