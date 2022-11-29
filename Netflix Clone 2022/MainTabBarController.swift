//
//  ViewController.swift
//  Netflix Clone 2022
//
//  Created by Kenan Developer on 29.11.2022.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        configureUI()
    }
    
    
    
    func configureUI() {
        let home        = UINavigationController(rootViewController: HomeViewVC())
        let upcoming    = UINavigationController(rootViewController: UpComingVC())
        let search      = UINavigationController(rootViewController: SearchVC())
        let downloads   = UINavigationController(rootViewController: DownloadsVC())
        
        home.tabBarItem.image       = UIImage(systemName: "house")
        upcoming.tabBarItem.image   = UIImage(systemName: "play.circle")
        search.tabBarItem.image     = UIImage(systemName: "magnifyingglass")
        downloads.tabBarItem.image  = UIImage(systemName: "arrow.down.to.line")
        
        home.title      = "Home"
        upcoming.title  = "Coming Soon"
        search.title    = "Top Search"
        downloads.title = "Downloads"
        
        tabBar.tintColor = .label
        
        viewControllers = [home, upcoming, search, downloads]
        
    }
 
}

