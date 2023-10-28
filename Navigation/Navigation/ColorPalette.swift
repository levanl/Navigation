//
//  ColorPalette.swift
//  Navigation
//
//  Created by Levan Loladze on 28.10.23.
//


protocol ColorChange {
    func changeColor(color: UIColor)
}

protocol BackgroundColorChange {
    func changeBackgroundColor(color: UIColor)
}

import UIKit

class ColorPalette: UIViewController {

    
    // MARK: Label Init
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Change Home Buttons Background Colors"
        label.font = UIFont.boldSystemFont(ofSize: 24)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.widthAnchor.constraint(equalToConstant: 400).isActive = true
        return label
    }()
    
    let titleLabel1: UILabel = {
        let label = UILabel()
        label.text = "Change Home Background Color"
        label.font = UIFont.boldSystemFont(ofSize: 24)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.widthAnchor.constraint(equalToConstant: 400).isActive = true
        return label
    }()
    
    
    // MARK: Color Block StackViews
    
    let colorStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.spacing = 10
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.distribution = .fill
        return stack
    }()
    
    let colorStack1: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.spacing = 10
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.distribution = .fill
        return stack
    }()
    
    let colorStack2: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.spacing = 10
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.distribution = .fill
        return stack
    }()
    
    let colorStack3: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.spacing = 10
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.distribution = .fill
        return stack
    }()
    
    
    // MARK: COLOR BLOCKS
    
    let colorBlock1: UIButton = {
        let button = UIButton()
        button.setTitle("red", for: .normal)
        button.titleLabel?.lineBreakMode = .byWordWrapping
        button.titleLabel?.numberOfLines = 0
        button.backgroundColor = .red
        button.contentHorizontalAlignment = .center
        button.contentVerticalAlignment = .center
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 8
        button.widthAnchor.constraint(equalToConstant: 70).isActive = true
        button.heightAnchor.constraint(equalToConstant: 70).isActive = true
        
        return button
    }()
    
    let colorBlock2: UIButton = {
        let button = UIButton()
        button.setTitle("blue", for: .normal)
        button.titleLabel?.lineBreakMode = .byWordWrapping
        button.titleLabel?.numberOfLines = 0
        button.backgroundColor = .blue
        button.contentHorizontalAlignment = .center
        button.contentVerticalAlignment = .center
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 8
        button.widthAnchor.constraint(equalToConstant: 70).isActive = true
        button.heightAnchor.constraint(equalToConstant: 70).isActive = true
        
        return button
    }()
    
    let colorBlock3: UIButton = {
        let button = UIButton()
        button.setTitle("yellow", for: .normal)
        button.titleLabel?.lineBreakMode = .byWordWrapping
        button.titleLabel?.numberOfLines = 0
        button.backgroundColor = .yellow
        button.contentHorizontalAlignment = .center
        button.contentVerticalAlignment = .center
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 8
        button.widthAnchor.constraint(equalToConstant: 70).isActive = true
        button.heightAnchor.constraint(equalToConstant: 70).isActive = true
        
        return button
    }()
    
    let colorBlock4: UIButton = {
        let button = UIButton()
        button.setTitle("black", for: .normal)
        button.titleLabel?.lineBreakMode = .byWordWrapping
        button.titleLabel?.numberOfLines = 0
        button.backgroundColor = .black
        button.contentHorizontalAlignment = .center
        button.contentVerticalAlignment = .center
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 8
        button.widthAnchor.constraint(equalToConstant: 70).isActive = true
        button.heightAnchor.constraint(equalToConstant: 70).isActive = true
        
        return button
    }()
    
    
    let colorBlock5: UIButton = {
        let button = UIButton()
        button.setTitle("orange", for: .normal)
        button.titleLabel?.lineBreakMode = .byWordWrapping
        button.titleLabel?.numberOfLines = 0
        button.backgroundColor = .orange
        button.contentHorizontalAlignment = .center
        button.contentVerticalAlignment = .center
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 8
        button.widthAnchor.constraint(equalToConstant: 70).isActive = true
        button.heightAnchor.constraint(equalToConstant: 70).isActive = true
        
        return button
    }()
    
    let colorBlock6: UIButton = {
        let button = UIButton()
        button.setTitle("gray", for: .normal)
        button.titleLabel?.lineBreakMode = .byWordWrapping
        button.titleLabel?.numberOfLines = 0
        button.backgroundColor = .gray
        button.contentHorizontalAlignment = .center
        button.contentVerticalAlignment = .center
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 8
        button.widthAnchor.constraint(equalToConstant: 70).isActive = true
        button.heightAnchor.constraint(equalToConstant: 70).isActive = true
        
        return button
    }()
    
    let colorBlock7: UIButton = {
        let button = UIButton()
        button.setTitle("red", for: .normal)
        button.titleLabel?.lineBreakMode = .byWordWrapping
        button.titleLabel?.numberOfLines = 0
        button.backgroundColor = .red
        button.contentHorizontalAlignment = .center
        button.contentVerticalAlignment = .center
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 8
        button.widthAnchor.constraint(equalToConstant: 70).isActive = true
        button.heightAnchor.constraint(equalToConstant: 70).isActive = true
        
        return button
    }()
    
    let colorBlock8: UIButton = {
        let button = UIButton()
        button.setTitle("blue", for: .normal)
        button.titleLabel?.lineBreakMode = .byWordWrapping
        button.titleLabel?.numberOfLines = 0
        button.backgroundColor = .blue
        button.contentHorizontalAlignment = .center
        button.contentVerticalAlignment = .center
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 8
        button.widthAnchor.constraint(equalToConstant: 70).isActive = true
        button.heightAnchor.constraint(equalToConstant: 70).isActive = true
        
        return button
    }()
    
    let colorBlock9: UIButton = {
        let button = UIButton()
        button.setTitle("yellow", for: .normal)
        button.titleLabel?.lineBreakMode = .byWordWrapping
        button.titleLabel?.numberOfLines = 0
        button.backgroundColor = .yellow
        button.contentHorizontalAlignment = .center
        button.contentVerticalAlignment = .center
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 8
        button.widthAnchor.constraint(equalToConstant: 70).isActive = true
        button.heightAnchor.constraint(equalToConstant: 70).isActive = true
        
        return button
    }()
    
    let colorBlock10: UIButton = {
        let button = UIButton()
        button.setTitle("black", for: .normal)
        button.titleLabel?.lineBreakMode = .byWordWrapping
        button.titleLabel?.numberOfLines = 0
        button.backgroundColor = .black
        button.contentHorizontalAlignment = .center
        button.contentVerticalAlignment = .center
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 8
        button.widthAnchor.constraint(equalToConstant: 70).isActive = true
        button.heightAnchor.constraint(equalToConstant: 70).isActive = true
        
        return button
    }()
    
    let colorBlock11: UIButton = {
        let button = UIButton()
        button.setTitle("orange", for: .normal)
        button.titleLabel?.lineBreakMode = .byWordWrapping
        button.titleLabel?.numberOfLines = 0
        button.backgroundColor = .orange
        button.contentHorizontalAlignment = .center
        button.contentVerticalAlignment = .center
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 8
        button.widthAnchor.constraint(equalToConstant: 70).isActive = true
        button.heightAnchor.constraint(equalToConstant: 70).isActive = true
        
        return button
    }()
    
    let colorBlock12: UIButton = {
        let button = UIButton()
        button.setTitle("gray", for: .normal)
        button.titleLabel?.lineBreakMode = .byWordWrapping
        button.titleLabel?.numberOfLines = 0
        button.backgroundColor = .gray
        button.contentHorizontalAlignment = .center
        button.contentVerticalAlignment = .center
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 8
        button.widthAnchor.constraint(equalToConstant: 70).isActive = true
        button.heightAnchor.constraint(equalToConstant: 70).isActive = true
        
        return button
    }()
    
    var delegate: ColorChange?
    
    var delegate2: BackgroundColorChange?
    
    // MARK: VIEWDIDLOAD
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        setupWhole()
        clickFuncs()
    }
    
    
    // MARK: CLICK FUNCTIONS
    
    @objc func redClicked() {
        delegate?.changeColor(color: .red)
        navigationController?.popViewController(animated: true)
    }
    @objc func blueClicked() {
        delegate?.changeColor(color: .blue)
        navigationController?.popViewController(animated: true)
    }
    
    @objc func yellowClicked() {
        delegate?.changeColor(color: .yellow)
        navigationController?.popViewController(animated: true)
    }
    
    @objc func blackClicked() {
        delegate?.changeColor(color: .black)
        navigationController?.popViewController(animated: true)
    }
    
    @objc func orangeClicked() {
        delegate?.changeColor(color: .orange)
        navigationController?.popViewController(animated: true)
    }
    
    @objc func grayClicked() {
        delegate?.changeColor(color: .gray)
        navigationController?.popViewController(animated: true)
    }
    
    @objc func redBClicked() {
        delegate2?.changeBackgroundColor(color: .red)
        navigationController?.popViewController(animated: true)
    }
    @objc func blueBClicked() {
        delegate2?.changeBackgroundColor(color: .blue)
        navigationController?.popViewController(animated: true)
    }
    
    @objc func yellowBClicked() {
        delegate2?.changeBackgroundColor(color: .yellow)
        navigationController?.popViewController(animated: true)
    }
    
    @objc func blackBClicked() {
        delegate2?.changeBackgroundColor(color: .black)
        navigationController?.popViewController(animated: true)
    }
    
    @objc func orangeBClicked() {
        delegate2?.changeBackgroundColor(color: .orange)
        navigationController?.popViewController(animated: true)
    }
    
    @objc func grayBClicked() {
        delegate2?.changeBackgroundColor(color: .gray)
        navigationController?.popViewController(animated: true)
    }
    
    
    
    // MARK: SETUP FUNCTIONS
    
    func clickFuncs() {
        colorBlock1.addTarget(self, action: #selector(redClicked), for: .touchUpInside)
        colorBlock2.addTarget(self, action: #selector(blueClicked), for: .touchUpInside)
        colorBlock3.addTarget(self, action: #selector(yellowClicked), for: .touchUpInside)
        colorBlock4.addTarget(self, action: #selector(blackClicked), for: .touchUpInside)
        colorBlock5.addTarget(self, action: #selector(orangeClicked), for: .touchUpInside)
        colorBlock6.addTarget(self, action: #selector(grayClicked), for: .touchUpInside)
        
        colorBlock7.addTarget(self, action: #selector(redBClicked), for: .touchUpInside)
        colorBlock8.addTarget(self, action: #selector(blueBClicked), for: .touchUpInside)
        colorBlock9.addTarget(self, action: #selector(yellowBClicked), for: .touchUpInside)
        colorBlock10.addTarget(self, action: #selector(blackBClicked), for: .touchUpInside)
        colorBlock11.addTarget(self, action: #selector(orangeBClicked), for: .touchUpInside)
        colorBlock12.addTarget(self, action: #selector(grayBClicked), for: .touchUpInside)
    }
    
    
    func setupWhole() {
        setupTitle()
        setupColorBlocks()
        setupColorBlocks1()
        setupTitle1()
        setupColorBlocks2()
        setupColorBlocks3()
    }
    
    func setupTitle() {
        view.addSubview(titleLabel)

        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
    func setupTitle1() {
        view.addSubview(titleLabel1)

        NSLayoutConstraint.activate([
            titleLabel1.topAnchor.constraint(equalTo: colorStack1.bottomAnchor, constant: 30),
            titleLabel1.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
    func setupColorBlocks() {
        
        colorStack.addArrangedSubview(colorBlock1)
        colorStack.addArrangedSubview(colorBlock2)
        colorStack.addArrangedSubview(colorBlock3)
        
        
        view.addSubview(colorStack)
        
        NSLayoutConstraint.activate([
            colorStack.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 40),
            colorStack.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
    }
    
    func setupColorBlocks1() {
        
        colorStack1.addArrangedSubview(colorBlock4)
        colorStack1.addArrangedSubview(colorBlock5)
        colorStack1.addArrangedSubview(colorBlock6)
        
        
        view.addSubview(colorStack1)
        
        NSLayoutConstraint.activate([
            colorStack1.topAnchor.constraint(equalTo: colorStack.bottomAnchor, constant: 40),
            colorStack1.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
    }
    
    func setupColorBlocks2() {
        
        colorStack2.addArrangedSubview(colorBlock7)
        colorStack2.addArrangedSubview(colorBlock8)
        colorStack2.addArrangedSubview(colorBlock9)
        
        
        view.addSubview(colorStack2)
        
        NSLayoutConstraint.activate([
            colorStack2.topAnchor.constraint(equalTo: titleLabel1.bottomAnchor, constant: 40),
            colorStack2.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
    }
    
    func setupColorBlocks3() {
        
        colorStack3.addArrangedSubview(colorBlock10)
        colorStack3.addArrangedSubview(colorBlock11)
        colorStack3.addArrangedSubview(colorBlock12)
        
        
        view.addSubview(colorStack3)
        
        NSLayoutConstraint.activate([
            colorStack3.topAnchor.constraint(equalTo: colorStack2.bottomAnchor, constant: 40),
            colorStack3.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
    }
    

}
