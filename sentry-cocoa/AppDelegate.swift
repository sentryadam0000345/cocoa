//
//  AppDelegate.swift
//  sentry-cocoa
//
//  Created by Ido  Shemesh on 3/25/20.
//  Copyright © 2020 Sentry. All rights reserved.
//

import UIKit
import Sentry

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
       
         _ = SentrySDK(options: [
               "dsn": "https://62340e8b48bd40dbb4382e0d92ad3385@sentry.io/5175254",
               "environment": "Production"
            
            // "sampleRate": 0.6
            //"release": ProcessInfo.processInfo.environment["RELEASE"] //
               //"debug": true // Enabled debug when first installing is always helpful
               // beforeSend:
           ])
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

