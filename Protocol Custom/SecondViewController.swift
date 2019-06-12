//
//  SecondViewController.swift
//  Protocol Custom
//
//  Created by Krish on 11/06/19.
//  Copyright © 2019 Krish. All rights reserved.
//

import UIKit



class SecondViewController: UIViewController {
    
    
    
 var delegate:MyDataSendingDelegateProtocol!
    
    @IBOutlet weak var testView: TestView!
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Do any additional setup after loading the view.
    }
    
    func data(){
        
            dismiss(animated: true, completion: nil)
        
        }
    }
  
   
    
   
    
    

