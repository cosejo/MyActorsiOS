//
//  LoginPresenter.swift
//  MyActors
//
//  Created by Carlos Osejo on 24/7/21.
//

import Foundation

class LoginPresenter: LoginPresenterProtocol {
    
    private weak var view: LoginPresenterDelegate?
    private var user: User?
      
    init(view: LoginPresenterDelegate?) {
        self.view = view
    }
    
    func login(username: String?, password: String?) {
        user = User(username: username ?? "", password: password ?? "")
        view?.show(message: "Inicio de Sesión correcto")
    }
}
