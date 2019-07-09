//
//  HomeFlow.swift
//  BootstrapProject
//
//  Created by Md Sulayman on 9/7/19.
//  Copyright © 2019 Md Sulayman. All rights reserved.
//

import Foundation
import RxFlow

class HomeFlow: Flow {

    var root: Presentable {
        return self.rootViewController
    }
    private lazy var rootViewController = UINavigationController()

    func navigate(to step: Step) -> FlowContributors {
        guard let step = step as? AppStep else { return .none }

        switch step {
        case .home:
            return navigationToHome()
        default:
            return .none
        }
    }

    private func navigationToHome() -> FlowContributors {
        let homeService = HomeService()
        let homeServices = HomeServices.init(homeService: homeService)

        let viewModel = HomeViewModel.init()

        let homeViewController = HomeViewController.instantiate(withViewModel: viewModel, andServices: homeServices)

        self.rootViewController.pushViewController(homeViewController, animated: true)

        return FlowContributors.one(flowContributor: FlowContributor.contribute(withNextPresentable: homeViewController, withNextStepper: homeViewController.viewModel))
    }
}
