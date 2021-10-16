//
//  AppCoordinator.swift
//  5retailProject
//
//  Created by Nikita Kazakov on 05.10.2021.
//

import Foundation
import UIKit

final class AppCoordinator: BaseCoordinator {

    var rootViewController: UIViewController? {
        window.rootViewController
    }

    private var window: UIWindow

    init(window: UIWindow) {
        self.window = window
    }

    func start() {
        startTabBarController()
    }

    // MARK: - Private methods

    private func startTabBarController() {
        let tabBarController = MainTabBarController()
        window.rootViewController = tabBarController
        tabBarController.selectedIndex = 3
        window.makeKeyAndVisible()
    }
}
