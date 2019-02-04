//
//  SplashScreenModuleFactory.swift
//  viperCleanArchi
//
//  Created by Ilan Z on 04/02/2019.
//  Copyright © 2019 Ilan Z. All rights reserved.
//

import UIKit
import BusinessLogic

class SplashScreenModuleFactory {
    func makeView() -> UIViewController {
        let splashScreenViewController = StoryboardScene.SplashScreen.initialScene.instantiate()

        let moduleFactory = BusinessLogic.SplashScreenModuleFactory()
        let interactor = moduleFactory.interactor()

        let router = SplashScreenRouter()
        let presenter = SplashScreenPresenter(interactor: interactor, router: router)

        splashScreenViewController.presenter = presenter
        interactor.output = presenter
        presenter.output = splashScreenViewController
        router.viewController = splashScreenViewController

        return splashScreenViewController
    }
}
