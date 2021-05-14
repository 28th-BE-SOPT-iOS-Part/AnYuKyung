//
//  SignUpViewController.swift
//  Week1_hw
//
//  Created by kong on 2021/04/03.
//

import UIKit

class SignUpViewController: UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func goToLoginClicked(_ sender: Any) {
        
        self.navigationController?.popViewController(animated: true)
        
    }
    

    @IBAction func newAccountClicked(_ sender: Any) {
        
        if emailTextField.text == "" || passwordTextField.text == "" || confirmPasswordTextField.text == "" {
            
            return
            
        }
        
        self.makeRequestAlert(title: "알림",
                              message: "회원가입 하시겠습니까요?",
                              okAction: {
                                _ in self.signupAction()
                                
                              })
        
//        guard let homeVC = self.storyboard?.instantiateViewController(withIdentifier: "TabBarController") else { return }
//          self.navigationController?.pushViewController(homeVC, animated: true)

        
    }
    
    func signupAction()
        {
        SignupService.shared.Signup(email: self.emailTextField.text!, password: self.passwordTextField.text!) { result in
            switch result
            {
            case .success(let message):
                    
            if let message = message as? String{
                        
                        self.makeAlert(title: "알림",
                                       message: message)

                    }
                    
                case .requestErr(let message):
                    
                    if let message = message as? String{
                        
                        self.makeAlert(title: "알림",
                                  message: message)
                    }
                               
                    
                default :
                    print("ERROR")
                }
            }
        }
}
