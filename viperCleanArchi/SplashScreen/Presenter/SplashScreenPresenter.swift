//
//  SplashScreenPresenter.swift
//  viperCleanArchi
//
//  Created by Ilan Z on 17/01/2019.
//  Copyright © 2019 Ilan Z. All rights reserved.
//

import Foundation
import BusinessLogic

class SplashScreenPresenter {
    // MARK: - Properties

    weak var output: SplashScreenPresenterOutput?

    private var interactor: SplashScreenInteractorInput
    private var router: SplashScreenRouterInput

    // MARK: - Lifecycle
    init(interactor: SplashScreenInteractorInput, router: SplashScreenRouterInput) {
        self.interactor = interactor
        self.router = router
    }
}

// MARK: - SplashScreenPresenterInput

extension SplashScreenPresenter: SplashScreenPresenterInput {
    func viewDidLoad() {
        interactor.loading()
    }
}

// MARK: - SplashScreenInteractorOutput

extension SplashScreenPresenter: SplashScreenInteractorOutput {
    func routeToHome() {
        router.routeToHome()
    }
}
