//
//  ViewController.swift
//  TAbBasedAppPOC
//
//  Created by Ravi Kumar Yaganti on 21/07/20.
//  Copyright © 2020 RK. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    lazy var loginButton: UIButton = {
        let button = UIButton(frame: .zero)
        button.setTitle("Login", for: .normal)
        button.backgroundColor = .purple
        button.setTitleColor(.white, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(tapOnLogin), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        
    }
    
    //MARK:- Private methods
    
    @objc private func tapOnLogin() {
        guard let window = UIApplication.shared.windows.first else {return}
        
        var firstTabNavigationController : UINavigationController!
        var secondTabNavigationControoller : UINavigationController!
//        var thirdTabNavigationController : UINavigationController!
//        var fourthTabNavigationControoller : UINavigationController!
//        var fifthTabNavigationController : UINavigationController!
        
        let tabBarController = UITabBarController()
        
        firstTabNavigationController = UINavigationController.init(rootViewController: HomeVC())
        secondTabNavigationControoller = UINavigationController.init(rootViewController: SettingsVC())
//        thirdTabNavigationController = UINavigationController.init(rootViewController: ThirdViewController())
//        fourthTabNavigationControoller = UINavigationController.init(rootViewController: FourthViewController())
//        fifthTabNavigationController = UINavigationController.init(rootViewController: FifthViewController())
        
        tabBarController.viewControllers = [firstTabNavigationController, secondTabNavigationControoller]
        
        
        let item1 = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), tag: 0)
        let item2 = UITabBarItem(title: "Settings", image:  UIImage(systemName: "wrench"), tag: 1)
//        let item3 = UITabBarItem(title: "Post a Picture", image:  UIImage(named: "ico-photo"), tag: 2)
//        let item4 = UITabBarItem(title: "Prizes", image:  UIImage(named: "ico-prizes"), tag: 3)
//        let item5 = UITabBarItem(title: "Profile", image:  UIImage(named: "ico-profile"), tag: 4)
        
        firstTabNavigationController.tabBarItem = item1
        secondTabNavigationControoller.tabBarItem = item2
//        thirdTabNavigationController.tabBarItem = item3
//        fourthTabNavigationControoller.tabBarItem = item4
//        fifthTabNavigationController.tabBarItem = item5
        
        UITabBar.appearance().tintColor = UIColor(red: 0/255.0, green: 146/255.0, blue: 248/255.0, alpha: 1.0)
        
        window.rootViewController = tabBarController
        window.makeKeyAndVisible()
    }
    
    private func setupUI() {
        view.addSubview(loginButton)
        loginButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        loginButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5).isActive = true
        loginButton.heightAnchor.constraint(equalToConstant: 44).isActive = true
    }


}


