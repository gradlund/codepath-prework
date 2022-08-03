//
//  ViewController.swift
//  Prework
//
//  Created by Grace Radlund on 8/1/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //Change label color
    @IBOutlet var TextLabel: UILabel!
    @IBAction func ColorButtonClicked(_ sender: Any) {
        TextLabel.textColor = UIColor.cyan
    }
    
    //Change color of background view
    @IBOutlet var Background: UIView!
    @IBOutlet var ChangeColor: UIButton!
    @IBAction func BackgroundButtonClicked(_ sender: Any) {
        
        let randomInt = Int.random(in: 1..<4)
        
        switch randomInt{
        case 1:
            Background.backgroundColor = UIColor.systemGreen
            
        case 2:
            Background.backgroundColor = UIColor.systemBlue
        case 3:
            Background.backgroundColor = UIColor.systemTeal
            
        default:
            Background.backgroundColor = UIColor.systemOrange
        }
        
    }
    
    //Change label to "goodbye"
    @IBAction func TextButtonClicked(_ sender: Any) {
        TextLabel.text = "Goodbye"
    }
    
    //Reset views to default
    @IBAction func RespondToTapGesture(_ sender: Any) {
        TextLabel.textColor = UIColor.red
        TextLabel.text = "Hello"
        Background.backgroundColor = UIColor.systemGray3
        Textbox.text = ""
    }
    
    //Update label with text field
    @IBOutlet var Textbox: UITextField!
    @IBAction func ChangeTextButtonClicked(_ sender: Any) {
        let text = Textbox.text
        
        //If nothing is inputted in the textbox - show message
        if text == ""{
            TextLabel.text = "Input something"
        }
        //Else show text that was inputted to label
        else{
            TextLabel.text = text
        }
    }
    
}

