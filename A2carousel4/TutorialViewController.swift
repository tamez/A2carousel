//
//  TutorialViewController.swift
//  A2carousel4
//
//  Created by dt on 2/15/15.
//  Copyright (c) 2015 D3. All rights reserved.
//

import UIKit

class TutorialViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var tutorialScrollView: UIScrollView!
    @IBOutlet weak var takeSpinButton: UIButton!
    @IBOutlet weak var takeSpinImage: UIImageView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tutorialScrollView.delegate = self
        
        tutorialScrollView.contentSize = CGSize(width: 1280, height: 568)
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        var page = Int(scrollView.contentOffset.x / 320)
        // Set the current page, so the dots will update
        pageControl.currentPage = page
        // Show takeSpinButton
    
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
