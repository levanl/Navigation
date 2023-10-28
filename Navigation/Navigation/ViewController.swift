//
//  ViewController.swift
//  Navigation
//
//  Created by Levan Loladze on 27.10.23.
//

import UIKit

class ViewController: UIViewController {

    
    // MARK: Label Init
    
    let profilePicView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "ProfilePic"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let signInLabel: UILabel = {
        let label = UILabel()
        label.text = "Sign In"
        label.font = UIFont.boldSystemFont(ofSize: 24)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        return label
    }()
    
    let lastMessageLabel: UILabel = {
        let label = UILabel()
        label.text = "Don't have an account. Sign Up"
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        return label
    }()
    
    
    // MARK: Textfield Init
    
    let emailTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Email"
        textField.borderStyle = .roundedRect
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.heightAnchor.constraint(equalToConstant: 53).isActive = true
        textField.backgroundColor = UIColor(red: 178, green: 178, blue: 178, alpha: 0.25)
        return textField
    }()
    
    let passwordTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Password"
        textField.borderStyle = .roundedRect
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.isSecureTextEntry = true
        textField.heightAnchor.constraint(equalToConstant: 53).isActive = true
        textField.backgroundColor = UIColor(red: 178, green: 178, blue: 178, alpha: 0.25)
        return textField
    }()
    
    // MARK: Button Init
    let signInButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Login", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        let backgroundColor = UIColor(
            red: CGFloat(34) / 255.0,
            green: CGFloat(87) / 255.0,
            blue: CGFloat(122) / 255.0,
            alpha: 1.0
        )
        
        button.backgroundColor = backgroundColor
        button.setTitleColor(UIColor.white, for: .normal)
        button.layer.cornerRadius = 8
        button.heightAnchor.constraint(equalToConstant: 45).isActive = true
        return button
    }()
    
    let googleSignIn: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(UIImage(named: "googleIcon"), for: .normal)
        button.imageView?.contentMode = .center
        button.backgroundColor = .clear
        button.setTitleColor(.clear, for: .normal)
        button.layer.cornerRadius = 8
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOffset = CGSize(width: 0, height: 4)
        button.layer.shadowOpacity = 0.5
        button.layer.shadowRadius = 4
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    let facebookSignIn: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(UIImage(named: "facebookIcon"), for: .normal)
        button.imageView?.contentMode = .center
        button.backgroundColor = .clear
        button.setTitleColor(.clear, for: .normal)
        button.layer.cornerRadius = 8
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOffset = CGSize(width: 0, height: 4)
        button.layer.shadowOpacity = 0.5
        button.layer.shadowRadius = 4
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    let linkedinSignIn: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(UIImage(named: "linkedInIcon"), for: .normal)
        button.imageView?.contentMode = .center
        button.backgroundColor = .clear
        button.setTitleColor(.clear, for: .normal)
        button.layer.cornerRadius = 8
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOffset = CGSize(width: 0, height: 4)
        button.layer.shadowOpacity = 0.5
        button.layer.shadowRadius = 4
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    // MARK: StackView Init
    
    let signInVariants: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.spacing = 11
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        setupWholeView()
        
        signInButton.addTarget(self, action: #selector(navigateToHomePage), for: .touchUpInside)
    }

    
    // MARK: Navigation
    
    @objc func navigateToHomePage() {
        if !(emailTextField.text?.isEmpty ?? true) && !(passwordTextField.text?.isEmpty ?? true) {
            let homePage = HomePage()
            navigationController?.pushViewController(homePage, animated: true)
        } else {
            print("Please fill out the form")
        }
    }
    


    
    // MARK: Setup Functions
    
    private func setupWholeView() {
        setupLayout()
        setupLabel()
        setupTextFields()
        setupButton()
        setupOrText()
        setupLoginButtons()
        setUpLastMessage()
    }
    
    private func setupLabel() {
        view.addSubview(signInLabel)

        NSLayoutConstraint.activate([
            signInLabel.topAnchor.constraint(equalTo: profilePicView.bottomAnchor, constant: 15),
            signInLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 150),
            signInLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -150)
        ])
        
    }
    
    private func setupButton() {
        view.addSubview(signInButton)
        
        NSLayoutConstraint.activate([
            signInButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 64),
            signInButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 52),
            signInButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -52)
        ])
    }
    
    private func setupLayout() {
        view.addSubview(profilePicView)
        let safeArea = view.safeAreaLayoutGuide
        let xConstraints = profilePicView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        let topConstraint = profilePicView.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: 51)
        
        NSLayoutConstraint.activate([xConstraints, topConstraint])
    }

    private func setupTextFields() {
        let textFieldsContainer = UIStackView(arrangedSubviews: [emailTextField, passwordTextField])
        textFieldsContainer.axis = .vertical
        
        textFieldsContainer.spacing = 15
        
        textFieldsContainer.translatesAutoresizingMaskIntoConstraints = false

        view.addSubview(textFieldsContainer)
        
        NSLayoutConstraint.activate([
            textFieldsContainer.topAnchor.constraint(equalTo: signInLabel.bottomAnchor, constant: 32),
            textFieldsContainer.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            textFieldsContainer.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50)
        ])
    }
    
    private func setupOrText() {
        let separatorStackView = UIStackView()
        separatorStackView.axis = .horizontal
        separatorStackView.alignment = .center
        separatorStackView.spacing = 10
        separatorStackView.translatesAutoresizingMaskIntoConstraints = false
        
        let leftLine = UIView()
        leftLine.backgroundColor = .red
        leftLine.translatesAutoresizingMaskIntoConstraints = false
        leftLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        let rightLine = UIView()
        rightLine.backgroundColor = .black
        rightLine.translatesAutoresizingMaskIntoConstraints = false
        rightLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        let orLabel = UILabel()
        orLabel.text = "or"
        orLabel.textColor = .black
        orLabel.font = UIFont.boldSystemFont(ofSize: 16)
        
        separatorStackView.addArrangedSubview(leftLine)
        separatorStackView.addArrangedSubview(orLabel)
        separatorStackView.addArrangedSubview(rightLine)
        
        view.addSubview(separatorStackView)
        
        NSLayoutConstraint.activate([
            separatorStackView.topAnchor.constraint(equalTo: signInButton.bottomAnchor, constant: 32),
            separatorStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])

    }
    
    private func setupLoginButtons() {
        signInVariants.addArrangedSubview(googleSignIn)
        signInVariants.addArrangedSubview(facebookSignIn)
        signInVariants.addArrangedSubview(linkedinSignIn)
        
        view.addSubview(signInVariants)
        NSLayoutConstraint.activate([
            signInVariants.topAnchor.constraint(equalTo: signInButton.bottomAnchor, constant: 69),
            signInVariants.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 122.5),
            signInVariants.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -122.5)
       ])
    }
    
    private func setUpLastMessage() {
        view.addSubview(lastMessageLabel)
        
        NSLayoutConstraint.activate([
            lastMessageLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -35),
            lastMessageLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 95),
            lastMessageLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -95)
        ])
    }
}

