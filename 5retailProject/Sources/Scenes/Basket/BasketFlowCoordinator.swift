//
//  BasketFlowCoordinator.swift
//  5retailProject
//
//  Created by Nikita Kazakov on 05.10.2021.
//

import UIKit

final class BasketFlowCoordinator: BaseCoordinator {

    var rootViewController: UIViewController?

    func start() {
        startBasketModule()
    }

    // MARK: - Private methods

    private func startBasketModule() {
        let viewController = BasketView()
        let viewModel = BasketViewModel()
        viewController.viewModel = viewModel
        rootViewController = viewController
    }
}
