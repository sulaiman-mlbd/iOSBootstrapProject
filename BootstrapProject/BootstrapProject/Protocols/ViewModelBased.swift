//
//  ViewModelBased.swift
//  BootstrapProject
//
//  Created by Md Sulayman on 9/7/19.
//  Copyright © 2019 Md Sulayman. All rights reserved.
//

import Foundation
import UIKit
import Reusable

protocol ViewModel {
}

protocol ServicesViewModel: ViewModel {
    associatedtype Services
    var services: Services! { get set }
}

protocol ViewModelBased: class {
    associatedtype ViewModelType: ViewModel
    var viewModel: ViewModelType! { get set }
}

extension ViewModelBased where Self: StoryboardBased & UIViewController {
    static func instantiate<ViewModelType> (withViewModel viewModel: ViewModelType) -> Self where ViewModelType == Self.ViewModelType {
        let viewController = Self.instantiate()
        viewController.viewModel = viewModel
        return viewController
    }
}

extension ViewModelBased where Self: StoryboardBased & UIViewController, ViewModelType: ServicesViewModel {
    static func instantiate<ViewModelType, ServicesType> (withViewModel viewModel: ViewModelType, andServices services: ServicesType) -> Self
        where ViewModelType == Self.ViewModelType, ServicesType == Self.ViewModelType.Services {
            let viewController = Self.instantiate()
            viewController.viewModel = viewModel
            viewController.viewModel.services = services
            return viewController
    }
}
