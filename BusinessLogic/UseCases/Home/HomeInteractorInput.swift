//
//  File.swift
//  BusinessLogic
//
//  Created by Ilan Z on 06/01/2019.
//  Copyright © 2019 Ilan Z. All rights reserved.
//

import Foundation

/// sourcery: AutoMockable
public protocol HomeInteractorInput: class {
    var output: HomeInteractorOutput? { get set }
    
    func fetch()
}
