//
//  AppDelegate.swift
//  APPtest
//
//  Created by ЛИС on 22.01.2022.
//

import UIKit
import Firebase
import FirebaseAuth

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        FirebaseApp.configure()
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = ViewController()
        window?.makeKeyAndVisible()
        
        Auth.auth().addStateDidChangeListener{ (auth, user) in
            if user == nil {
                
            }
        }
        
        return true
    }
  
}


