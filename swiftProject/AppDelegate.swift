//
//  AppDelegate.swift
//  swiftProject
//
//  Created by Vbon on 16/6/17.
//  Copyright © 2016年 Vbon. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        
        let tabBarVC = self.window!.rootViewController as? UITabBarController;
        for vc in tabBarVC!.viewControllers! {
            vc.tabBarItem.selectedImage = vc.tabBarItem.selectedImage?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        }
        let titleDicNormal = [NSForegroundColorAttributeName: UIColor.init(colorLiteralRed: 147.0/255.0, green: 147.0/255.0, blue: 147.0/255.0, alpha: 1.0) , NSFontAttributeName : UIFont.systemFontOfSize(12.0)]
        UITabBarItem.appearance().setTitleTextAttributes(titleDicNormal, forState: UIControlState.Normal)
        
        let titleDicSelected = [NSForegroundColorAttributeName: UIColor.init(colorLiteralRed: 255/255.0, green: 80/255.0, blue: 0/255.0, alpha: 1.0) , NSFontAttributeName : UIFont.systemFontOfSize(12.0)]
        UITabBarItem.appearance().setTitleTextAttributes(titleDicSelected, forState: UIControlState.Selected)
        
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

