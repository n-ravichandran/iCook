//
//  ViewController.swift
//  iCook
//
//  Created by Niranjan Ravichandran on 29/09/15.
//  Copyright © 2015 Team. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPageViewControllerDelegate, UIPageViewControllerDataSource {

    var pageController: UIPageViewController?
    var pageContent = ["Dishes", "Cooks"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        pageController = self.storyboard?.instantiateViewControllerWithIdentifier("PageViewController") as? UIPageViewController
        pageController?.dataSource = self
        pageController?.delegate = self
        
        let startVC = viewControllerAtIndex(0)
        let viewControllers: NSArray = NSArray(objects: startVC)
        
        self.pageController?.setViewControllers(viewControllers as? [UIViewController], direction: .Forward, animated: true, completion: nil)
        
        self.pageController?.view.frame = CGRectMake(0, 100, self.view.frame.width, self.view.frame.height - 30)
        self.addChildViewController(self.pageController!)
        self.view.addSubview((self.pageController?.view)!)
        self.pageController?.didMoveToParentViewController(self)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func viewControllerAtIndex(index: Int) -> PageContentViewController{
        
        if (pageContent.count == 0) || (index >= pageContent.count){
            return PageContentViewController()
        }
        
        let dataViewController = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle()).instantiateViewControllerWithIdentifier("PageContentView") as! PageContentViewController
        dataViewController.titleText = pageContent[0]
        dataViewController.titleText2 = pageContent[1]
        dataViewController.pageIndex = index

        return dataViewController
    }
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerBeforeViewController viewController: UIViewController) -> UIViewController? {
        
        let vc = viewController as! PageContentViewController
        var index = vc.pageIndex
        
        if (index == 0) || (index == NSNotFound){
            return nil
        }
        
        index!--
        return self.viewControllerAtIndex(index!)
    }
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerAfterViewController viewController: UIViewController) -> UIViewController? {
        
        let vc = viewController as! PageContentViewController
        var index = vc.pageIndex
        
        if (index == NSNotFound){
            return nil
        }
        
        index!++
        
        if (index == pageContent.count){
            return nil
        }
        
        return viewControllerAtIndex(index!)
    }

}

