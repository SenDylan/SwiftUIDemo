 //
//  PageViewController.swift
//  SwiftUIDemo
//
//  Created by sdy on 2019/10/12.
//  Copyright © 2019 JDJR. All rights reserved.
//

import SwiftUI
import UIKit

struct PageViewController: UIViewControllerRepresentable {
    
    var controllers: [UIViewController]
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<PageViewController>) -> UIPageViewController {
        let pageViewController = UIPageViewController(transitionStyle: .scroll, navigationOrientation: .horizontal)
        
        return pageViewController
    }
    
    func updateUIViewController(_ pageViewController: UIPageViewController, context: UIViewControllerRepresentableContext<PageViewController>) {
        pageViewController.setViewControllers([controllers[0]], direction: .forward, animated: true, completion: nil)
    }
    
}

