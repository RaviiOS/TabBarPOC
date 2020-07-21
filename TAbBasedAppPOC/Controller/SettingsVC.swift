//
//  ViewController.swift
//  TAbBasedAppPOC
//
//  Created by Ravi Kumar Yaganti on 21/07/20.
//  Copyright © 2020 RK. All rights reserved.
//

import UIKit

class SettingsVC: UIViewController {

    lazy var logoutButton: UIBarButtonItem = {
        let button = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(logout))
        
        return button
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .red
        setupLogoutButton()
    }
    
    private func setupLogoutButton() {
        navigationItem.rightBarButtonItem = logoutButton
    }
    
    @objc private func logout() {
        guard let window = UIApplication.shared.windows.first else {return}
        window.rootViewController = UINavigationController(rootViewController: LoginVC())
        window.makeKeyAndVisible()
    }
    


}

