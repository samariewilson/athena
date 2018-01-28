//
//  CheckoutViewController.swift
//  SheHacks Project
//
//  Created by Christy  Lee on 1/27/18.
//  Copyright © 2018 Samarie Wilson. All rights reserved.
//

import UIKit

class CheckoutViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func checkShowPopUp(_ sender: Any) {
        let popOverVC2 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "checkPopUpID") as! CheckPopUpViewController
        self.addChildViewController(popOverVC2)
        popOverVC2.view.frame = self.view.frame
        self.view.addSubview(popOverVC2.view)
        popOverVC2.didMove(toParentViewController: self)
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
