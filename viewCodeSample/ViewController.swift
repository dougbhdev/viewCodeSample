//
//  ViewController.swift
//  viewCodeSample
//
//  Created by Douglas Henrique Goulart Nunes on 06/12/19.
//  Copyright © 2019 Douglas Henrique Goulart Nunes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    enum Strings: String {
        case login = "Login"
        case register = "Register"
    }

    lazy var loginButton: UIButton = {
        let button = UIButton()
        button.setTitle(Strings.login.rawValue, for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .orange
        button.layer.cornerRadius = 25
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(onButtonPressed(_:)), for: .touchUpInside)
        return button
    }()
    
    lazy var registerButton: UIButton = {
           let button = UIButton()
           button.setTitle(Strings.login.rawValue, for: .normal)
           button.setTitleColor(.white, for: .normal)
           button.backgroundColor = .orange
           button.layer.cornerRadius = 25
           button.translatesAutoresizingMaskIntoConstraints = false
           button.addTarget(self, action: #selector(onButtonPressed(_:)), for: .touchUpInside)
           return button
       }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureView()
        setTitle()
        
        view.addSubviews(loginButton, registerButton)
        configureConstraintElements()
    }
 
    // MARK: Method private
    
    private func configureConstraintElements() {
        loginButton.widthAnchor.constraint(equalToConstant: 150).isActive = true
        loginButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        loginButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        registerButton.widthAnchor.constraint(equalToConstant: 150).isActive = true
        registerButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        registerButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        registerButton.bottomAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 60).isActive = true
    }
    
    private func configureView() {
        view.backgroundColor = .white
    }
    
    private func setTitle() {
        title = "View Code Sample"
    }
    
    @objc func onButtonPressed(_ sender: UIButton) {
           if sender == loginButton {
               let loginViewController = LoginViewController()
            
            
               self.navigationController?.pushViewController(loginViewController, animated: true)
           }
           else if sender == registerButton {
               let registerViewController = RegisterViewController()
               self.navigationController?.pushViewController(registerViewController, animated: true)
           }
       }

       override func didReceiveMemoryWarning() {
           super.didReceiveMemoryWarning()
       }

}

