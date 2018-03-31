//
//  CustomTabBarController.swift
//  facebookFeed
//
//  Created by Arvids Gargurnis on 31/03/2018.
//  Copyright © 2018 Arvids Gargurnis. All rights reserved.
//

import UIKit

class CustomTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let feedController = FeedController(collectionViewLayout: UICollectionViewFlowLayout())
        let navigationController = UINavigationController(rootViewController: feedController)
        
        navigationController.title = "News Feed"
        navigationController.tabBarItem.image = UIImage(named: "news_feed_icon")
        
        let friendRequestsController = FriendRequestsController()
        let secondNavigationController = UINavigationController(rootViewController: friendRequestsController)
        secondNavigationController.title = "Requests"
        secondNavigationController.tabBarItem.image = UIImage(named: "requests_icon")
        
        let messengerNavigationController = UINavigationController(rootViewController: UIViewController())
        messengerNavigationController.title = "Messenger"
        messengerNavigationController.tabBarItem.image = UIImage(named: "messenger_icon")
        
        let notificationsNavigationController = UINavigationController(rootViewController: UIViewController())
        notificationsNavigationController.title = "Notifications"
        notificationsNavigationController.tabBarItem.image = UIImage(named: "globe_icon")
        
        let moreNavigationController = UINavigationController(rootViewController: UIViewController())
        moreNavigationController.title = "More"
        moreNavigationController.tabBarItem.image = UIImage(named: "more_icon")
        
        viewControllers = [navigationController, secondNavigationController, messengerNavigationController, notificationsNavigationController, moreNavigationController]
        
        tabBar.isTranslucent = false
        
        let topBorder = CALayer()
        topBorder.frame = CGRect(x: 0, y: 0, width: 1000, height: 0.5)
        topBorder.backgroundColor = UIColor.rgb(red: 229, green: 231, blue: 235).cgColor
        
        tabBar.layer.addSublayer(topBorder)
        tabBar.clipsToBounds = true
    }
}
