//
//  AppDelegate.swift
//  FoodyCookBook
//
//  Created by Vaibhav Jhaveri on 03/09/21.
//

import UIKit
import IQKeyboardManagerSwift
import ProgressHUD

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        IQKeyboardManager.shared.enable = true

//        ProgressHUD.animationType = .lineScaling
//        ProgressHUD.colorAnimation = R.color.green() ?? UIColor.green
        
        return true
    }

}
