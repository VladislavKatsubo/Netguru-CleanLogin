//
//  LoginScenePresenter.swift
//  Netguru CleanLogin
//
//  Created by Vlad Katsubo on 17.05.23.
//

import Foundation

typealias LoginScenePresenterInput = LoginInteractorOutput
typealias LoginScenePresenterOutput = LoginSceneViewControllerInput

final class LoginScenePresenter {
  weak var viewController: LoginScenePresenterOutput?
}

extension LoginScenePresenter: LoginScenePresenterInput {
  func showLogingFailure(message: String) {
    viewController?.showLogingFailure(message: "")
  }

  func showLogingSuccess(user: CleanLoginUser) {
    viewController?.showLogingSuccess(fullUserName: user.firstName + " " + user.lastName)
  }
}
