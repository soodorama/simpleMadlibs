//
//  ViewController.swift
//  MadLibs
//
//  Created by Neil Sood on 9/10/18.
//  Copyright © 2018 Neil Sood. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    
    @IBOutlet weak var madlibLabel: UILabel!
    
    @IBAction func createButtonPressed(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "FormSegue", sender: sender)
    }
    
    var data : String = "..."
    
    @IBAction func unwindToVC1(segue:UIStoryboardSegue) { }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        print(data)
//
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print(data)
//        let adj = data[0]!
//        let verb1 = data[1]!
//        let verb2 = data[2]!
//        let noun = data[3]!
        madlibLabel?.text = data
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

