//
//  AppDelegate.swift
//  OlxCloneXIB
//
//  Created by Macservis on 17/04/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        setNAvigatioBar()
        // Override point for customization after application launch.
        return true
    }

    
    
    func setNAvigatioBar() {
        UINavigationBar.appearance().backgroundColor = UIColor.fromHexaString(hex: "F3F3F3")
        UINavigationBar.appearance().tintColor = UIColor.fromHexaString(hex: "747474")
        UINavigationBar.appearance().shadowImage = UIImage()
        UINavigationBar.appearance().setBackgroundImage(UIImage(), for: UIBarMetrics.default)
    }
    
    
    
   
    
//    func setupNavigationBar() {
//        title = "Profile"
//
//        self.navigationController?.navigationBar.setBackgroundImage(UIImage(named: ""), for: .default)
//        self.navigationController?.navigationBar.shadowImage = UIImage(named: "")
//
//        headerView.backgroundColor = navigationController?.navigationBar.barTintColor
//        headerView.isOpaque = false
//    }
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




extension UIColor
{
    class func fromHexaString(hex:String) -> UIColor
    {
        let scanner           = Scanner(string: hex)
        //scanner.scanLocation  = 0
        var rgbValue: UInt64  = 0
        scanner.scanHexInt64(&rgbValue)

        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
    

}

