//
//  SceneFactory.swift
//  Netguru CleanLogin
//
//  Created by Vlad Katsubo on 17.05.23.
//

import UIKit

protocol SceneFactory {
    var configurator: LoginSceneConfigurator! { get set }
    func makeLoginScene() -> UIViewController
}

final class DefaultSceneFactory: SceneFactory {
    var configurator: LoginSceneConfigurator!

    func makeLoginScene() -> UIViewController {
        let vc = LoginSceneViewController()
        return configurator.configured(vc)
    }
}
