//
//  SplashScreenRouter.swift
//  viperCleanArchi
//
//  Created by Ilan Z on 17/01/2019.
//  Copyright © 2019 Ilan Z. All rights reserved.
//

import UIKit
import BusinessLogic

class SplashScreenRouter {
    public weak var viewController: UIViewController?
}

// MARK: - SplashScreenRouterInput

extension SplashScreenRouter: SplashScreenRouterInput {
    func routeToHome() {
        let storyboard = UIStoryboard(name: "Home", bundle: nil)
        guard let homeViewController = storyboard.instantiateInitialViewController() as? HomeViewController else { return }

        let moduleFactory = HomeModuleFactory()
        let interactor = moduleFactory.interactor()

        let router = HomeRouter()
        let presenter = HomePresenter(interactor: interactor, router: router)

        homeViewController.presenter = presenter
        interactor.output = presenter
        presenter.output = homeViewController
        router.viewController = homeViewController

        let navigationController = UINavigationController(rootViewController: homeViewController)
        UIApplication.shared.keyWindow?.rootViewController = navigationController
    }
}
