//
//  SplashScreenInteractor.swift
//  BusinessLogic
//
//  Created by Ilan Z on 17/01/2019.
//  Copyright © 2019 Ilan Z. All rights reserved.
//

import Foundation

class SplashScreenInteractor {
    // MARK: - Properties

    weak var output: SplashScreenInteractorOutput?
}

// MARK: - SplashScreenInteractorInput

extension SplashScreenInteractor: SplashScreenInteractorInput {
    func loading() {
        output?.routeToHome()
    }
}
