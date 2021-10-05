//
//  BaseCoordinator.swift
//  5retailProject
//
//  Created by Nikita Kazakov on 05.10.2021.
//

import Foundation
import UIKit

protocol BaseCoordinator {
    var rootViewController: UIViewController? { get }
    func start()
}
