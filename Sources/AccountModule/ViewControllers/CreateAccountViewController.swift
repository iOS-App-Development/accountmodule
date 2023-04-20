//
//  CreateAccountViewController.swift
//  AccountModule
//
//  Created by Muzammil Peer on 31/10/2021.
//  Copyright © 2021 Aman Aggarwal. All rights reserved.
//
import UIKit
import RouterLibrary

class CreateAccountViewController: UIViewController, Storyboarded {
//    weak var coordinator: (AccountCoordinator)?
    var coordinator: (AccountCoordinator)?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func CreateAccountTapped(_ sender: Any) {
        coordinator?.createAccount()
    }
}
