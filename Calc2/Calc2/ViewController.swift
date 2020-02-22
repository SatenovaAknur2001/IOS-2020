//
//  ViewController.swift
//  Calc2
//
//  Created by Акнур on 2/18/20.
//  Copyright © 2020 Акнур. All rights reserved.
//

import UIKit
class ViewController: UIViewController {
   
    
    @IBOutlet weak var Result: UILabel!
    var first: Double=0
    var Last: Double=0
    var check:Bool=false
    var  Oper:Int=0
    @IBAction func numberPressed(_ sender: UIButton) {
                if check==true{
        Result.text=String(sender.tag)
                    
                    check=false
                }
                else{
Result.text=Result.text!+String(sender.tag)
                }
            }
    // Do any additional setup after loading the view
   
    
    @IBAction func Operation(_ sender: UIButton) {
    
        first=Double(Result.text!)!
    
        if sender.tag==14{
            Result.text="+"
            
        }
        if sender.tag==12{
            Result.text="x"
        }
        if sender.tag==15{
            Result.text="/"
               }
        if sender.tag==13{
            Result.text="-"
                      }
        if sender.tag==11{
            Last=Double(Result.text!)!
            Result.text=String(first+Last)
        }

        
        check=true
        Oper=sender.tag
if sender.tag==18{
                  Result.text = "";
        
}

}
}
