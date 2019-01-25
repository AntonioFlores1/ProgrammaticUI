//
//  ViewController.swift
//  ProgrammaticUI
//
//  Created by Pursuit on 1/23/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
//  1. Create and set you object
    lazy var myLabel: UILabel = {
        let label = UILabel()
        label.text = "First Label!"
        label.textColor = .yellow
        label.backgroundColor = .red
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    lazy var myTextView: UITextView = {
        let textView = UITextView()
        textView.textColor = .white
        textView.text = "HI"
        textView.backgroundColor = .red
        return textView
    }()
    
     lazy var myButton: UIButton = {
        let button = UIButton()
        button.setTitle("Press Me", for: .normal)
        button.backgroundColor = .green
        button.addTarget(self, action: #selector(doesTheButtonThing) , for: .touchUpInside)
        return button
    }()
    
    lazy var segueButton: UIButton = {
        let sButton = UIButton()
        sButton.setTitle("I Move", for: .normal)
        sButton.backgroundColor = .green
        sButton.addTarget(self, action: #selector(IMove), for: .touchUpInside)
        return sButton
    }()
    
    @objc func doesTheButtonThing(){
        self.view.backgroundColor = .red
    }
    
    @objc func IMove(){
    navigationController?.pushViewController(DetailViewController(), animated: true)
    }
        
        
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .blue
        self.view.addSubview(myTextView)
        self.view.addSubview(myLabel)
        self.view.addSubview(myButton)
        self.view.addSubview(segueButton)
//        2. add object to main view
        setConstraints()
       // textConstraints()
    }

    func setConstraints() {
//        3.Create Constraints
//        3.a) Set translatesAutoresizingMask to false
        myLabel.translatesAutoresizingMaskIntoConstraints = false
//        3.B) Create Constraints
//        myLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        myLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 11).isActive = true
        myLabel.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -11).isActive = true
        myLabel.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 11).isActive = true
        
///      myLabel.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 11).isActive = true
        myTextView.translatesAutoresizingMaskIntoConstraints = false
        myTextView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 11).isActive = true
        myTextView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -11).isActive = true
        myTextView.topAnchor.constraint(equalTo: myLabel.topAnchor, constant:600).isActive = true
        myTextView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -11).isActive = true
        ///////
        myButton.translatesAutoresizingMaskIntoConstraints = false
        myButton.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 70).isActive = true
//        myButton.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -50)
        myButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 150).isActive = true
        //////
        
        segueButton.translatesAutoresizingMaskIntoConstraints = false
        segueButton.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 70).isActive = true
        segueButton.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -33).isActive = true
        
    }

}

