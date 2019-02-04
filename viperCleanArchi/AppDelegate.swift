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
        let moduleFactory = SplashScreenModuleFactory()

        return moduleFactory.makeView()
    }()

    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        let navigationController = UINavigationController(rootViewController: splashScreenViewController ?? UIViewController())
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()

        return true
    }
}
