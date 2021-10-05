//
//  Scene.swift
//  5retailProject
//
//  Created by Nikita Kazakov on 05.10.2021.
//

import UIKit

enum Scene {
    case main, catalog, basket, profile

    var title: String {
        switch self {
        case .main:
            return "Главная"
        case .catalog:
            return "Каталог"
        case .basket:
            return "Корзина"
        case .profile:
            return "Профиль"
        }
    }

    var image: UIImage? {
        switch self {
        case .main:
            return UIImage(systemName: "house")
        case .catalog:
            return UIImage(systemName: "circle.grid.2x2")
        case .basket:
            return UIImage(systemName: "cart")
        case .profile:
            return UIImage(systemName: "person")
        }
    }

    var selectedImage: UIImage? {
        switch self {
        case .main:
            return UIImage(systemName: "house.fill")
        case .catalog:
            return UIImage(systemName: "circle.grid.2x2.fill")
        case .basket:
            return UIImage(systemName: "cart.fill")
        case .profile:
            return UIImage(systemName: "person.fill")
        }
    }

    var viewController: UIViewController? {
        startCoordinator().rootViewController
    }

    private func startCoordinator() -> BaseCoordinator {
        var coordinator: BaseCoordinator

        switch self {
        case .main:
            coordinator = MainFlowCoordinator()
        case .catalog:
            coordinator = CatalogFlowCoordinator()
        case .basket:
            coordinator = BasketFlowCoordinator()
        case .profile:
            coordinator = ProfileFlowCoordinator()
        }

        coordinator.start()
        return coordinator
    }
}
