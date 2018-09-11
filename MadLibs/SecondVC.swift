//
//  SecondVC.swift
//  MadLibs
//
//  Created by Neil Sood on 9/10/18.
//  Copyright © 2018 Neil Sood. All rights reserved.
//

import UIKit

class SecondVC: UIViewController {
    
    @IBOutlet weak var adjTextField: UITextField!
    @IBOutlet weak var v1TextField: UITextField!
    @IBOutlet weak var v2TextField: UITextField!
    @IBOutlet weak var nounTextField: UITextField!
    
    
    @IBAction func submitButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "unwindToMainVC", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! MainVC
        destination.data = "We are having a perfectly \(adjTextField.text!) time now. Later we will \(v1TextField.text!) and \(v2TextField.text!) in the \(nounTextField.text!). Ya BIIIIIIITTTTCCCHHHHHHHH"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
