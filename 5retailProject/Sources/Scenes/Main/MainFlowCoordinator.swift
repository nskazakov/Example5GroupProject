//
//  MainFlowCoordinator.swift
//  5retailProject
//
//  Created by Nikita Kazakov on 05.10.2021.
//

import UIKit

final class MainFlowCoordinator: BaseCoordinator {

    var rootViewController: UIViewController?

    func start() {
        startMainModule()
    }

    // MARK: - Private methods

    private func startMainModule() {
        let viewController = MainView()
        let viewModel = MainViewModel()
        viewController.viewModel = viewModel
        rootViewController = viewController
    }
}
