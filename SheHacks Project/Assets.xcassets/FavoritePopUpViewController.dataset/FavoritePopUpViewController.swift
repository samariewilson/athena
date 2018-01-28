//
//  FavoritePopUpViewController.swift
//  SheHacks Project
//
//  Created by Christy  Lee on 1/27/18.
//  Copyright © 2018 Samarie Wilson. All rights reserved.
//

import UIKit
import Foundation
import MessageUI

class FavoritePopUpViewController: UIViewController, MFMessageComposeViewControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.showAnimate()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func favoritesYes(_ sender: Any) {
        self.removeAnimate()
        //self.view.removeFromSuperview()
        // the bottom code is the messaging code
        let composeVC = MFMessageComposeViewController()
        composeVC.body = "I am in danger and my location is " + txtAddress.text!
        composeVC.recipients = [txtNumber.text!]
        composeVC.messageComposeDelegate = self

        self.present(composeVC, animated: true, completion: nil )
    }
    
    func messageComposeViewController(_ controller: MFMessageComposeViewController, didFinishWith result: MessageComposeResult) {
        
    }
    
    @IBAction func favoritesClosePopUp(_ sender: Any) {
        self.removeAnimate()
        //self.view.removeFromSuperview()
    }
    
    
    func showAnimate() {
        self.view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
        self.view.alpha = 0.0;
        UIView.animate(withDuration: 0.25, animations: {
            self.view.alpha = 1.0
            self.view.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        });
    }
    
    func removeAnimate() {
        UIView.animate(withDuration: 0.25, animations: {
            self.view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
            self.view.alpha = 0.0;
        }, completion: {(finished : Bool)  in
            if (finished) {
                self.view.removeFromSuperview()
            }
        });
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
