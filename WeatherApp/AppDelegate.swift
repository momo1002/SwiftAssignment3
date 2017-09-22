//
//  AppDelegate.swift
//  WeatherApp
//
//  Created by Derrick Park on 2017-05-26.
//  Copyright © 2017 Derrick Park. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    let Vancouver = City()
    let Warsaw = City()
    let Moscow = City()
    let RioDeJaneiro = City()
    let Cairo = City()
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        let vancouverCVC = CityViewController()
        vancouverCVC.title = "Vancouver"
        
        
        let warsawCVC = CityViewController()
        warsawCVC.title = "Warsaw"
        
        let moscowCVC = CityViewController()
        moscowCVC.title = "Moscow"
        
        let rioDeJaneiroCVC = CityViewController()
        rioDeJaneiroCVC.title = "Rio de Janeiro"
        
        let cairoCVC = CityViewController()
        cairoCVC.title = "Cairo"
        
        let tabBarController = UITabBarController()
      
//        vancouverCVC.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag:0)
//        warsawCVC.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag:1)
//        moscowCVC.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag:2)
//        rioDeJaneiroCVC.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag:3)
//        cairoCVC.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag:4)
        
        let controllers = [vancouverCVC, warsawCVC, moscowCVC, cairoCVC, rioDeJaneiroCVC]
        
        tabBarController.viewControllers = controllers.map{
            UINavigationController(rootViewController: $0)
        }
        
        
    
        
        
        
        //        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = tabBarController
        //        window?.makeKeyAndVisible()
        return true
    }
    
    
}

