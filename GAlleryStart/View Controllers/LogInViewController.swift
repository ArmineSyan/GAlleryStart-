//
//  ViewController.swift
//  XcodeHomework1
//
//  Created by Artyom on 19.10.21.
//

import UIKit

class LogInViewController: UIViewController {
     
    

    @IBOutlet weak var email: UITextField!
    
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var logIn: UIButton!
    @IBOutlet weak var signUp: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
         getCornerRadius()

         
    }

     override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
         self.view.endEditing(true)
     }
   
     
     @objc func didTapButton() {
          dismiss(animated: true, completion:  nil)
     }
     
     
     func getCornerRadius() {
          let txtFields: [UITextField] = [email, password]
          txtFields.forEach{ Utils.getCornerRadiusToTextFields(instance: $0, radius: Utils.radius25)}
          Utils.getCornerRadiusToButton(instance: signUp, radius: Utils.radius25)
     }
     

     
    @IBAction func logInButton(_ sender: UIButton) {
         Utils.toMyAccountVC(target: self)
    }
    
    @IBAction func signUpButton(_ sender: UIButton) {
         Utils.toSignUpVC(target: self)
    }
    
    @IBAction func forgotPasswordButton(_ sender: UIButton) {
         Utils.toForgotPasswordVC(target: self)
    }
     
     @IBAction func toHome(_ sender: UIButton) {
          Utils.toTabBarVC(target: self)
     }
     
}

