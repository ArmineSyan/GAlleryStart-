//
//  ForgotPasswordViewController.swift
//  hamar5
//
//  Created by Artyom on 14.12.21.
//
import UIKit

class ForgotPasswordViewController: UIViewController {
 
    @IBOutlet weak var email: UITextField!
    
    @IBOutlet weak var send: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getCornerRadius()
        
    }
    
    func getCornerRadius() {
        Utils.getCornerRadiusToTextFields(instance: email, radius: Utils.radius25)
        Utils.getCornerRadiusToButton(instance: send, radius: Utils.radius25)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
  

    @IBAction func sendButton(_ sender: UIButton) {
        Utils.toCreateNewPasswordVC(target: self)
    }
    @IBAction func dismiss(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}

