//
//  AppDelegate.swift
//  APPtest
//
//  Created by ЛИС on 22.01.2022.
//

import UIKit


@main
class AppDelegate: UIResponder, UIApplicationDelegate {

var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
       
        
        window = UIWindow(frame: UIScreen.main.bounds)
        let authSession = UserDefaults.standard.string(forKey: "authSession")
        if (authSession != nil) == true {
            window?.rootViewController = MainScreenViewController()
        }else if (authSession != nil) == false {
            window?.rootViewController = ViewController()
        } else {
            window?.rootViewController = MainScreenViewController()
        }
        
        window?.makeKeyAndVisible()
        return true
    }
  
}


