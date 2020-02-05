//
//  AboutAboutViewController.swift
//  NNGU
//
//  Created by vladimir on 02/02/2020.
//  Copyright © 2020 NNGU. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController, AboutViewInput, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!{
        didSet{
            scrollView.delegate = self
        }
    }
    
    @IBOutlet weak var pageController: UIPageControl!
    
    var output: AboutViewOutput!
    
     var slides:[Slide] = [];

    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        slides = createSlides()
        setupSlideScrollView(slides: slides)
        
        pageController.numberOfPages = slides.count
        pageController.currentPage = 0
        view.bringSubviewToFront(pageController)
        
        dismissVerticalScroll(scrollView: scrollView)
        
        output.viewIsReady()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func createSlides() -> [Slide] {
        let slide1:Slide = Bundle.main.loadNibNamed("Slide", owner: self, options: nil)?.first as! Slide
        slide1.imageView.image = UIImage(named: "coin")
        slide1.slideTitle.text = "financial preservation"
        slide1.slideDescription.text = "Description"
        
        let slide2:Slide = Bundle.main.loadNibNamed("Slide", owner: self, options: nil)?.first as! Slide
        slide2.imageView.image = UIImage(named: "optimization")
        slide2.slideTitle.text = "cost optimization"
        slide2.slideDescription.text = "Description"
        
        return [slide1, slide2]
    }
    
    func setupSlideScrollView(slides : [Slide]) {
        scrollView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        scrollView.contentSize = CGSize(width: view.frame.width * CGFloat(slides.count), height: view.frame.height)
        scrollView.isPagingEnabled = true
        
        for i in 0 ..< slides.count {
            slides[i].frame = CGRect(x: view.frame.width * CGFloat(i), y: 0, width: view.frame.width, height: view.frame.height)
            scrollView.addSubview(slides[i])
        }
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let pageIndex = round(scrollView.contentOffset.x/view.frame.width)
        pageController.currentPage = Int(pageIndex)
    }
    
    private func dismissVerticalScroll(scrollView: UIScrollView) {
        scrollView.contentSize = CGSize(width: self.view.frame.height, height: 1.0)
    }

    // MARK: AboutViewInput
    func setupInitialState() {
    }
}
