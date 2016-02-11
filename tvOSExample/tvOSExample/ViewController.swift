//
//  ViewController.swift
//  tvOSExample
//
//  Created by Luis Sergio da Silva Junior on 2/11/16.
//  Copyright © 2016 Luis Sergio. All rights reserved.
// This is an example to see how tvOS works!

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelQuestion: UILabel!
    
    var timer : NSTimer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelQuestion.text = NSLocalizedString("labelText", comment: "")
        
    }
    
    func updateInfo(){
        labelQuestion.text = NSLocalizedString("labelText", comment: "")

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonVancouverAction(sender: AnyObject) {
        if let myTimer = timer{
            myTimer.invalidate()
        }
        
        labelQuestion.text = NSLocalizedString("wrong", comment: "")
        timer = NSTimer.scheduledTimerWithTimeInterval(5, target: self, selector: Selector("updateInfo"), userInfo: nil, repeats: false)
    }
    
    @IBAction func buttonOttawaAction(sender: AnyObject) {
        if let myTimer = timer{
            myTimer.invalidate()
        }
        labelQuestion.text = NSLocalizedString("right", comment: "")
        timer = NSTimer.scheduledTimerWithTimeInterval(5, target: self, selector: Selector("updateInfo"), userInfo: nil, repeats: false)

    }
    @IBAction func buttonMontrealAction(sender: AnyObject) {
        if let myTimer = timer{
            myTimer.invalidate()
        }
        labelQuestion.text = NSLocalizedString("wrong", comment: "")
        timer = NSTimer.scheduledTimerWithTimeInterval(5, target: self, selector: Selector("updateInfo"), userInfo: nil, repeats: false)
    }
    @IBAction func buttonActionToronto(sender: AnyObject) {
        if let myTimer = timer{
            myTimer.invalidate()
        }
        labelQuestion.text = NSLocalizedString("wrong", comment: "")
        timer = NSTimer.scheduledTimerWithTimeInterval(5, target: self, selector: Selector("updateInfo"), userInfo: nil, repeats: false)
    }
}

