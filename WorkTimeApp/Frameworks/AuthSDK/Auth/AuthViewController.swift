//
//  AuthViewController.swift
//  Pods
//
//  Created by Alexey Grebennikov on 6.04.23.
//

import UIKit
import SnapKit
import UIComponents

fileprivate extension Constants {
    static let horizontalOffset: CGFloat = 45
    static let buttonDividerOffset: CGFloat = 5
    static let iterItemOffset: CGFloat = 58
    static let fieldHeight: CGFloat = 28
}

public final class AuthViewController: BaseViewController {
    
    private let contentView = UIView()
    private let loginTabButton = UIButton()
    private let buttonDividerView = UILabel()
    private let signUpTabButton = UIButton()
    private let usernameTextField = WTAuthTextField()
    private let passwordTextField = WTAuthTextField()
    private let loginButton = UIButton()
    
    
    public override func setup() {
        super.setup()
        
        view.backgroundColor = .white
        
        setupContentView()
        setupLoginTapButton()
        setupButtonDividerView()
        setupSignUpTabButton()
        setupUsernameTextField()
        setupPasswordTextField()
        setupLoginButton()
    }
}

private extension AuthViewController {
    
    func setupContentView() {
        view.addSubview(contentView)
        
        contentView.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.left.right.equalToSuperview()
        }
    }
    
    func setupLoginTapButton() {
        contentView.addSubview(loginTabButton)
        
        loginTabButton.setTitle("Login", for: .normal)
        loginTabButton.setTitleColor(.black, for: .normal)
        
        loginTabButton.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.leading.equalToSuperview().inset(Constants.horizontalOffset)
        }
    }
    
    func setupButtonDividerView() {
        contentView.addSubview(buttonDividerView)
        
        buttonDividerView.text = "/"
        
        buttonDividerView.snp.makeConstraints { make in
            make.centerY.equalTo(loginTabButton)
            make.leading.equalTo(loginTabButton.snp.trailing).offset(Constants.buttonDividerOffset)
        }
    }
    
    func setupSignUpTabButton() {
        contentView.addSubview(signUpTabButton)
        
        signUpTabButton.setTitle("Sign Up", for: .normal)
        signUpTabButton.setTitleColor(.black, for: .normal)
        
        signUpTabButton.snp.makeConstraints { make in
            make.bottom.equalTo(loginTabButton)
            make.leading.equalTo(buttonDividerView.snp.trailing).offset(Constants.buttonDividerOffset)
        }
    }
    
    func setupUsernameTextField() {
        contentView.addSubview(usernameTextField)
        
        usernameTextField.placeholder = "Username"
        
        usernameTextField.snp.makeConstraints { make in
            make.top.equalTo(loginTabButton.snp.bottom).offset(Constants.iterItemOffset)
            make.leading.equalToSuperview().inset(Constants.horizontalOffset)
            make.height.equalTo(Constants.fieldHeight)
        }
    }
    
    func setupPasswordTextField() {
        contentView.addSubview(passwordTextField)
        
        passwordTextField.placeholder = "Password"
        
        passwordTextField.snp.makeConstraints { make in
            make.top.equalTo(usernameTextField.snp.bottom).offset(Constants.iterItemOffset)
            make.leading.equalToSuperview().inset(Constants.horizontalOffset)
            make.height.equalTo(Constants.fieldHeight)
        }
    }
    
    func setupLoginButton() {
        contentView.addSubview(loginButton)
        
        loginButton.setTitle("Login", for: .normal)
        loginButton.backgroundColor = .blue
        
        loginButton.snp.makeConstraints { make in
            make.top.equalTo(passwordTextField.snp.bottom).offset(Constants.iterItemOffset)
            make.trailing.equalToSuperview().inset(Constants.horizontalOffset)
            make.bottom.equalToSuperview()
        }
    }
}
