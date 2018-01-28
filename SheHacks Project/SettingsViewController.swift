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


    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtNumber: UITextField!
    @IBOutlet weak var txtAddress: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func addInfo(_ sender: Any) {
        let composeVC = MFMessageComposeViewController()
        composeVC.body = txtName.text!
        composeVC.recipients = [txtNumber.text!]
        composeVC.messageComposeDelegate = self
        
        self.present(composeVC, animated: true, completion: nil )
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
