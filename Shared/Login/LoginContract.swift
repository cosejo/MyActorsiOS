//
//  LoginContract.swift
//  MyActors
//
//  Created by Carlos Osejo on 24/7/21.
//

import Foundation

protocol LoginPresenterProtocol: AnyObject {
  func login(username: String?, password: String?)
}

protocol LoginPresenterDelegate: AnyObject {
  func show(message: String)
  func showLoading()
}
