//
//  ViewController.swift
//  ShowMe
//
//  Created by Oleg Koptev on 15.10.2020.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textToSendField: UITextField!
    @IBAction func showMe(_ sender: Any) {
        NSLog("User Wrote: %@", textToSendField.text!)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let messageController = segue.destination as! MessageViewController
        messageController.messageData = textToSendField.text
    }
}

