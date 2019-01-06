//
//  SplashScreenInteractorInput.swift
//  BusinessLogic
//
//  Created by Ilan Z on 17/01/2019.
//  Copyright © 2019 Ilan Z. All rights reserved.
//

import Foundation

/// sourcery: AutoMockable
public protocol SplashScreenInteractorInput: class {
    var output: SplashScreenInteractorOutput? { get set }

    func loading()
}
