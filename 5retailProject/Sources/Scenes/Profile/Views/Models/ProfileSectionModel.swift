//
//  ProfileSectionModel.swift
//  5retailProject
//
//  Created by Nikita Kazakov on 16.10.2021.
//

import Foundation

enum ProfileSectionModel {
    case header(HeaderViewObject)
    case promo
    case items
    case goals
    case buttons
}

extension ProfileSectionModel: Equatable {
    static func ==(lhs: ProfileSectionModel, rhs: ProfileSectionModel) -> Bool {
        switch (lhs, rhs) {
        case let (.header(left), .header(right)):
            return left == right
        case (.promo, .promo):
            return false
        case (.items, .items):
            return false
        case (.goals, .goals):
            return false
        case (.buttons, .buttons):
            return false

        default:
            return false
        }

    }
}
