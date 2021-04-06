//
//  ViewController.swift
//  Deneme3
//
//  Created by KAAN YİĞİT on 1.04.2021.
//

import UIKit

class ViewController: UIViewController {
    var name = " "
    @IBOutlet weak var txtName: UITextField!
    override func viewDidLoad() {
        print("Hello1")
        super.viewDidLoad()
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("WillDissappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("DidDsappear")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("WillAppear")
        txtName.text = "Name :"
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("DidAppear")
        
    }

    @IBAction func btnSave(_ sender: Any) {
        name = txtName.text!
        performSegue(withIdentifier: "toVC2", sender: nil)
        let Alert = UIAlertController(title: "Success!", message: "\(name) eklendi.", preferredStyle: UIAlertController.Style.actionSheet)
        let okButton = UIAlertAction(title: "OK!", style: UIAlertAction.Style.default, handler: nil)
        Alert.addAction(okButton)
        self.present(Alert, animated: true, completion: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let toVC2 = segue.destination as? ViewController2{
            toVC2.name = self.name
        }
    }
    
}

