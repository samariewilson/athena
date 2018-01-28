//
//  SettingsViewController.swift
//  SheHacks Project
//
//  Created by Christy  Lee on 1/27/18.
//  Copyright © 2018 Samarie Wilson. All rights reserved.
//

import UIKit
import Foundation
import MessageUI




class SettingsViewController: UIViewController, MFMessageComposeViewControllerDelegate
{

    @IBAction func tips(_ sender: UIButton) {
        let alert = UIAlertController(title: "Tips:", message: "Please enter your name and home address, and the phone number of an emergency contact. In order to immediately send a text to your emergency contact with both your name and location, press the 'Send all items to cart?' button and confirm yes. In order to immediately send a text to emergency law enforcement at 911, press the 'Proceed to checkout?' button and confirm yes.", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: { (action) in alert.dismiss(animated: true, completion: nil)
            
        }))
        self.present(alert, animated: true, completion: nil)
}
    
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtNumber: UITextField!
    @IBOutlet weak var txtAddress: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
//    override func viewDidAppear(_ animated: Bool) {
//        createAlert(title: "Successfully added!", message: "")
//    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func addInfo(_ sender: Any) {
        let alert = UIAlertController(title: "", message: "Successfully Added!", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: { (action) in alert.dismiss(animated: true, completion: nil)
            }))
    
        self.present(alert, animated: true, completion: nil)
        // the bottom code is the messaging code
//        let composeVC = MFMessageComposeViewController()
//        composeVC.body = "I am in danger and my location is " + txtAddress.text!
//        composeVC.recipients = [txtNumber.text!]
//        composeVC.messageComposeDelegate = self
//
//        self.present(composeVC, animated: true, completion: nil )
    }
    func messageComposeViewController(_ controller: MFMessageComposeViewController, didFinishWith result: MessageComposeResult) {
        
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
