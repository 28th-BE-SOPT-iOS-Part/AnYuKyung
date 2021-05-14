//
//  ViewController.swift
//  Week1_hw
//
//  Created by kong on 2021/04/03.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()

    }

    @IBAction func loginClicked(_ sender: Any) {
        if emailTextField.text == "" || passwordTextField.text == "" {
            return
            
        }
        
        self.makeRequestAlert(title: "알림",
                              message: "로그인 하시겠습니까요?",
                              okAction: {
                                _ in self.loginAction()
                                
                              })

//        guard let homeVC = self.storyboard?.instantiateViewController(withIdentifier: "TabBarController") else { return }
//          self.navigationController?.pushViewController(homeVC, animated: true)


    }
    
    @IBAction func signupClicked(_ sender: Any) {
        
        guard let homeVC = self.storyboard?.instantiateViewController(withIdentifier: "SignUpViewController") else { return }
          self.navigationController?.pushViewController(homeVC, animated: true)

        
    }
    
    func loginAction()
        {
        LoginService.shared.login(email: self.emailTextField.text!, password: self.passwordTextField.text!) { result in
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


