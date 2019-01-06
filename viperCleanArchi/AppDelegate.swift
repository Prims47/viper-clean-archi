//
//  AppDelegate.swift
//  viperCleanArchi
//
//  Created by Ilan Z on 06/01/2019.
//  Copyright © 2019 Ilan Z. All rights reserved.
//

import UIKit
import BusinessLogic

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    lazy var splashScreenViewController: UIViewController? = {
        let splashScreenViewController = StoryboardScene.SplashScreen.initialScene.instantiate()

        let moduleFactory = SplashScreenModuleFactory()
        let interactor = moduleFactory.interactor()

        let router = SplashScreenRouter()
        let presenter = SplashScreenPresenter(interactor: interactor, router: router)

        splashScreenViewController.presenter = presenter
        interactor.output = presenter
        presenter.output = splashScreenViewController
        router.viewController = splashScreenViewController

        return splashScreenViewController
    }()

    //TODO: Module
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        let navigationController = UINavigationController(rootViewController: splashScreenViewController ?? UIViewController())
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()

        return true
    }
}
