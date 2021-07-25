//
//  LoginViewXib.swift
//  MyActors
//
//  Created by Carlos Osejo on 24/7/21.
//

import UIKit

class LoginViewViewController: UIViewController, LoginPresenterDelegate {
    
    var presenter: LoginPresenterProtocol?
  
    /* IBOutlets here */
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var loading: UIActivityIndicatorView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    presenter = LoginPresenter(view: self)
  }
  
  @IBAction func login() {
    presenter?.login(username: username.text, password: password.text)
  }
    
    func show(message: String) {
        loading.stopAnimating()
        let alertController = UIAlertController(title: "Bienvenido", message: message, preferredStyle: .alert)
        self.present(alertController, animated: true, completion: nil)
    }
    
    func showLoading() {
        loading.startAnimating()
    }
}
