//
//  SignUpViewController.swift
//  GAlleryStart
//
//  Created by Armine on 12/9/21.
//

import UIKit

class SignUpViewController: UIViewController {
    
    
    @IBOutlet weak var signUpScrollView: UIScrollView!
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var signUpLabel: UILabel!
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var idUsername: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var phoneNumber: UITextField!
    @IBOutlet weak var genderLabel: UILabel!
    @IBOutlet weak var maleButton: UIButton!
    @IBOutlet weak var femaleButton: UIButton!
    @IBOutlet weak var dateOfBirthLabel: UILabel!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var confirmPassword: UITextField!
    @IBOutlet weak var selectAgreement: UIButton!
    @IBOutlet weak var signUpButton: UIButton!
    
    


    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        getCornerRadius()

    }

    func getCornerRadius() {
        
        let txtFields: [UITextField] = [firstName, lastName, idUsername, email, phoneNumber, password, confirmPassword]
        let buttons: [UIButton] = [maleButton, femaleButton,signUpButton]
        txtFields.forEach{ Utils.getCornerRadiusToTextFields(instance: $0, radius: Utils.radius25)}
        buttons.forEach{ Utils.getCornerRadiusToButton(instance: $0, radius: Utils.radius25)}
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
  
    
    @IBAction func male(_ sender: UIButton) {
        maleButton.backgroundColor = UIColor(named: "darkPink")
        femaleButton.backgroundColor = UIColor(named: "lightGray")
        
    }
    
    @IBAction func female(_ sender: UIButton) {
        femaleButton.backgroundColor = UIColor(named: "darkPink")
        maleButton.backgroundColor = UIColor(named: "lightGray")
    }
    
   
    
    @IBAction func signUp(_ sender: UIButton) {
        Utils.toMyAccountVC(target: self)
    }
    
    @IBAction func logIn(_ sender: UIButton) {
        Utils.toLogInVC(target: self)
    }
    
    @IBAction func dismiss(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}
