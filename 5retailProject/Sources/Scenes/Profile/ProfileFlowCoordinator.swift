//
//  ProfileFlowCoordinator.swift
//  5retailProject
//
//  Created by Nikita Kazakov on 05.10.2021.
//

import UIKit

final class ProfileFlowCoordinator: BaseCoordinator {

    var rootViewController: UIViewController?

    func start() {
        startProfileModule()
    }

    // MARK: - Private methods

    private func startProfileModule() {
        let viewController = ProfileView()
        let viewModel = ProfileViewModel()
        viewController.viewModel = viewModel
        rootViewController = viewController
    }
}
