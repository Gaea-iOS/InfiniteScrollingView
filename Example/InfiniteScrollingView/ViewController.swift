//
//  ViewController.swift
//  InfiniteScrollingView
//
//  Created by wangxiaotao on 12/19/2016.
//  Copyright (c) 2016 wangxiaotao. All rights reserved.
//

import UIKit
import InfiniteScrollingView

class ViewController: UIViewController {
    
    @IBOutlet weak var testView: InfiniteScrollingView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        testView.aDataSource = self
        testView.aDelegate = self
        //        testView.allowInfiniteScrolling = false
        
        testView.didScrollAt = {index in
            print("didScrollToIndex = \(index)")
        }
        
        //        testView.registerReusableCell(TestCollectionViewCell.self)
//        testView.regis
//        testView.registerClass(cellClass: TestCollectionViewCell.self, forCellWithReuseIdentifier: TestCollectionViewCell.reuseIdentifier)
        //        testView.scrollDirection = .Vertical
        testView.isPagingEnabled = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func clickButton(sender: AnyObject) {
        
        //        if testView.scrollDirection == .Vertical {
        //            testView.scrollDirection = .Horizontal
        //        }else {
        //            testView.scrollDirection = .Vertical
        //        }
        
        //if testView.allowInfiniteScrolling == true {
        //    testView.allowInfiniteScrolling = false
        //}else {
        //    testView.allowInfiniteScrolling = true
        //}
        
        testView.scrollToNextPage(animated: true)
    }
}


extension ViewController: InfiniteScrollingViewDataSource {
    
    func numberOfItems(in infiniteScrollingView: InfiniteScrollingView) -> Int {
        return 3
    }
    
    func infiniteScrollingView(_ infiniteScrollingView: InfiniteScrollingView, cellForItemAt index: Int) -> UICollectionViewCell {
        
        let cell = infiniteScrollingView.dequeueReusableCell(withReuseIdentifier: "Cell", for: index)
        if index == 0 {
            cell.backgroundColor = UIColor.red
        }else if index == 1 {
            cell.backgroundColor = UIColor.green
        }else {
            cell.backgroundColor = UIColor.blue
        }
        return cell
    }
}

extension ViewController: InfiniteScrollingViewDelegate {
    
//    func infiniteScrollingView(_ infiniteScrollingView: InfiniteScrollingView, didSelectItemAt index: Int) {
//        print("didSelectItemAtIndex: \(index)")
//    }
//    
//    func itemLength(in infiniteScrollingView: InfiniteScrollingView) -> CGFloat {
//        return 100
//    }
//    
//    func itemSpacing(in infiniteScrollingView: InfiniteScrollingView) -> CGFloat {
//        return 20
//    }
//    
//    func padding(in infiniteScrollingView: InfiniteScrollingView) -> CGFloat {
//        return 30
//    }

}

