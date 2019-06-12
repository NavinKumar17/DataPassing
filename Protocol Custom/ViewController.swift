//
//  ViewController.swift
//  Protocol Custom
//
//  Created by Krish on 11/06/19.
//  Copyright © 2019 Krish. All rights reserved.
//

import UIKit

class ViewController: UIViewController,MyDataSendingDelegateProtocol {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBOutlet weak var dataToShow: UILabel!
    
    
    func sendDataToFIrstViewController(myData: String) {
        dataToShow.text = myData
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "getDataSegue" {
            let secondVC: SecondViewController = segue.destination as! SecondViewController
            secondVC.delegate = self
        }
    }
    
    
}

