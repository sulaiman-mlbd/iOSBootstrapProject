//
//  SplashViewController.swift
//  BootstrapProject
//
//  Created by Md Sulayman on 9/7/19.
//  Copyright © 2019 Md Sulayman. All rights reserved.
//

import Foundation
import Reusable
import UIKit
import RxSwift
import Lottie
import SnapKit

class SplashViewController: UIViewController, StoryboardBased, ViewModelBased {
    var viewModel: SplashViewModel!

    private let disposeBag = DisposeBag()

    override var prefersStatusBarHidden: Bool { return true }

    @IBOutlet private weak var morphImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        prepareUI()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.showAnimation()
    }

    private func prepareUI() {
        view.transformScaleIfSmall()
    }

    private func showAnimation() {
        morphImageView.isHidden = true
        let animationView = AnimationView(name: "splash")
        animationView.contentMode = .scaleAspectFit
        view.addSubview(animationView)
        animationView.snp.makeConstraints { make in
            make.center.equalTo(morphImageView)
        }
        animationView.animationSpeed = 1
        animationView.play { [weak self] _ in
            self?.viewModel.onSplashComplete()
        }
    }
}
