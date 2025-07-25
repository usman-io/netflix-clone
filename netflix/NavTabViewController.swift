//
//  NavTabViewController.swift
//  netflix
//
//  Created by usman ali on 25/07/2025.
//

import UIKit


class NavTabViewController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        let vc1 = UINavigationController(rootViewController: HomeViewController())
        let vc2 = UINavigationController(rootViewController: UpCommingViewController())
        let vc3 = UINavigationController(rootViewController: SearchViewController())
        let vc4 = UINavigationController(rootViewController: DownloadViewController())
        
        vc1.tabBarItem.image = UIImage(systemName: "house")
        vc2.tabBarItem.image = UIImage(systemName: "play.circle")
        vc3.tabBarItem.image = UIImage(systemName: "maginfyingglass")
        vc4.tabBarItem.image = UIImage(systemName: "allow.down.to.line")
        
        vc1.title = "Home"
        vc2.title = "Upcoming"
        vc3.title = "Search"
        vc4.title = "Downloads"
        
        setViewControllers([vc1, vc2, vc3, vc4], animated: true)
        
        
        
    }
}
