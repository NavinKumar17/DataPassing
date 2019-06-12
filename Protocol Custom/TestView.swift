//
//  TestView.swift
//  Protocol Custom
//
//  Created by Krish on 11/06/19.
//  Copyright © 2019 Krish. All rights reserved.
//

import UIKit


protocol MyDataSendingDelegateProtocol {
    func sendDataToFIrstViewController(myData:String)
}



 class TestView: UIView {

    var move:SecondViewController!

    
    @IBOutlet weak var dataToSend: UITextField!
    
    @IBOutlet var contentView: UIView!
    
    var delegate:MyDataSendingDelegateProtocol!
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
       super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit(){
        
      Bundle.main.loadNibNamed("TestView", owner: self, options: nil)
       addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        
    }
    
    @IBAction func dataToSendButtonClicked(_ sender: Any) {
        
        
            let dataToBeSent = self.dataToSend.text
            self.delegate?.sendDataToFIrstViewController(myData: dataToBeSent!)
             move.data()
        
    
}
}
