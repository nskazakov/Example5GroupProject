//
//  BaseViewModel.swift
//  5retailProject
//
//  Created by Nikita Kazakov on 05.10.2021.
//

import Foundation

/// Базовый протокол для ViewModel
protocol BaseViewModel {

    /// Method execute when module was started
    func onStart()

    /// Method execute when module did appear
    func onUpdate()
}
