//
//  SettingsViewContoller.swift
//  m2l3
//
//  Created by AndreyM on 20.09.2026.
//

import UIKit

class SettingsViewContoller: UIViewController {

    lazy var firstNameField = createTextField(placeholder: "Enter your fisrt name")
    lazy var secondNameField = createTextField(placeholder: "Enter your last name")
    lazy var nationalIDField = createTextField(placeholder: "Enter your national ID number")
    lazy var firstNameLabel = createHelpLabel(text: "First name")
    lazy var secondNameLabel = createHelpLabel(text: "Last name")
    lazy var nationalIDLabel = createHelpLabel(text: "National ID number")
    
    lazy var saveBtnAction : UIAction = UIAction { [weak self]_ in
        let action = ViewController()
        
        self?.navigationController?.popViewController(animated: true)
    }
    
    lazy var saveBtn : UIButton = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.backgroundColor = UIColor(red: 0x22/255, green: 0xA2/255, blue: 0x5C/255, alpha: 1.0)
        $0.setTitle("Сохранить", for: .normal)
        $0.layer.cornerRadius = 20
        $0.setTitleColor(.white, for: .normal)
        
        return $0
    }(UIButton(primaryAction: saveBtnAction))
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Настройки"
        
        view.addSubview(firstNameLabel)
        view.addSubview(firstNameField)
        view.addSubview(secondNameLabel)
        view.addSubview(secondNameField)
        view.addSubview(nationalIDLabel)
        view.addSubview(nationalIDField)
        view.addSubview(saveBtn)
        
        NSLayoutConstraint.activate([
            
            //first name label
            firstNameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            firstNameLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25),
            firstNameField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 25),
            //first name
            firstNameField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            firstNameField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25),
            firstNameField.topAnchor.constraint(equalTo: firstNameLabel.bottomAnchor, constant: 5),
            
            
            //second name label
            secondNameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            secondNameLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25),
            secondNameLabel.topAnchor.constraint(equalTo: firstNameField.bottomAnchor, constant: 15),
            //second name
            secondNameField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            secondNameField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25),
            secondNameField.topAnchor.constraint(equalTo: secondNameLabel.bottomAnchor, constant: 5),
            
            
            //National ID label
            nationalIDLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            nationalIDLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25),
            nationalIDLabel.topAnchor.constraint(equalTo: secondNameField.bottomAnchor, constant: 15),
            
            //National ID
            nationalIDField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            nationalIDField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25),
            nationalIDField.topAnchor.constraint(equalTo: nationalIDLabel.bottomAnchor, constant: 5),
            
            saveBtn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            saveBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25),
            saveBtn.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -25),
            saveBtn.heightAnchor.constraint(equalToConstant: 50)
            
            
        ])
        
        
    }
    
    deinit {
        print("class deinit")
    }
    
    private func createHelpLabel(text: String) -> UILabel{
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.textColor = .systemGray3
        
        return label
    }
    
    
    private func createTextField(placeholder: String) -> UITextField {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = placeholder
        textField.backgroundColor = .systemGray5
        textField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        textField.layer.cornerRadius = 15
        
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        textField.leftViewMode = .always
        
        textField.rightView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        textField.rightViewMode = .always
        
        
        return textField
    }
    
}
