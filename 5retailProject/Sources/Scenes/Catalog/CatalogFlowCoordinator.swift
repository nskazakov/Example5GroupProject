//
//  CatalogFlowCoordinator.swift
//  5retailProject
//
//  Created by Nikita Kazakov on 05.10.2021.
//

import UIKit

final class CatalogFlowCoordinator: BaseCoordinator {

    var rootViewController: UIViewController?

    func start() {
        startCatalogModule()
    }

    // MARK: - Private methods

    private func startCatalogModule() {
        let viewController = CatalogView()
        let viewModel = CatalogViewModel()
        viewController.viewModel = viewModel
        rootViewController = viewController
    }
}
