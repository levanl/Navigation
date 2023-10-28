//
//  HomePage.swift
//  Navigation
//
//  Created by Levan Loladze on 28.10.23.
//

import UIKit

class HomePage: UIViewController {

    // MARK: StackView Init
    
    let presentPushStackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.alignment = .center
        stack.spacing = 20
        
        return stack
    }()
    
    // MARK: Button Init
    
    let presentColorPallette: UIButton = {
        let button = UIButton()
        button.setTitle("Present Color Palette Page", for: .normal)
        button.titleLabel?.lineBreakMode = .byWordWrapping
        button.titleLabel?.numberOfLines = 0
        button.backgroundColor = .blue
        button.contentHorizontalAlignment = .center
        button.contentVerticalAlignment = .center
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 8
        button.widthAnchor.constraint(equalToConstant: 150).isActive = true
        button.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        return button
    }()
    
    let pushColorPallette: UIButton = {
        let button = UIButton()
        button.setTitle("Push Color Palette Page", for: .normal)
        button.titleLabel?.lineBreakMode = .byWordWrapping
        button.titleLabel?.numberOfLines = 0
        button.backgroundColor = .red
        button.contentHorizontalAlignment = .center
        button.contentVerticalAlignment = .center
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 8
        button.widthAnchor.constraint(equalToConstant: 150).isActive = true
        button.heightAnchor.constraint(equalToConstant: 60).isActive = true
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        setupStackActions()
    
        presentColorPallette.addTarget(self, action: #selector(didPresentBtn), for: .touchUpInside)
        pushColorPallette.addTarget(self, action: #selector(didPushBtn), for: .touchUpInside)
    }
    
    // MARK: Navigation
    
    @objc private func didPresentBtn() {
        let colorPalet = ColorPalette()
        let navVC = UINavigationController(rootViewController: colorPalet)
        present(navVC, animated: true)
    }
    
    @objc private func didPushBtn() {
        let colorPalette = ColorPalette()
        if let navigationController = navigationController {
            navigationController.pushViewController(colorPalette, animated: true)
            colorPalette.delegate = self
            colorPalette.delegate2 = self
            } else {
                print("Error: navigationController is nil.")
            }

    }
    
    private func setupStackActions() {
        
        presentPushStackView.addArrangedSubview(presentColorPallette)
        presentPushStackView.addArrangedSubview(pushColorPallette)
        view.addSubview(presentPushStackView)
        
        presentPushStackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            presentPushStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            presentPushStackView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])

    }
    

}


// MARK: Protocols

extension HomePage: ColorChange {
    func changeColor(color: UIColor) {
        presentColorPallette.backgroundColor = color
        pushColorPallette.backgroundColor = color
    }
    
    
}

extension HomePage: BackgroundColorChange {
    func changeBackgroundColor(color: UIColor) {
        view.backgroundColor = color
    }
    
}
