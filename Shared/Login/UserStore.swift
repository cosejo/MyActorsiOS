//
//  UserStore.swift
//  MyActors
//
//  Created by Carlos Osejo on 24/7/21.
//

import Foundation

class UserStore: ObservableObject {
  enum State {
    case loading
    case show(message: String)
    case loaded
  }
  
    @Published var state: State = .loaded
}

extension UserStore: LoginPresenterDelegate {
    func show(message: String) {
        self.state = .show(message: message)
    }
    
    func showLoading() {
        self.state = .loading
    }
}
