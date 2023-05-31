//
//  MainTabController.swift
//  TwitterTutorial
//
//  Created by 渡辺大智 on 2023/05/31.
//

import UIKit

class MainTabController: UITabBarController {
    
    // MARK: - Properties
    
    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        configureViewControllers()
    }
    

    // MARK: - Helpers
    
    func configureViewControllers() {
        
        let feed = FeedController()
        let explore = ExploreController()
        let notifications = NotificationsController()
        let conversations = ConversationsController()
        
        viewControllers = [feed, explore, notifications, conversations]
    }

}
