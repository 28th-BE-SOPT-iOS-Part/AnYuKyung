//
//  ViewController.swift
//  Week1_hw
//
//  Created by kong on 2021/04/03.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func loginClicked(_ sender: Any) {
        if emailTextField.text == "" || passwordTextField.text == "" {
            return
            
        }
        
        guard let confirmVC = self.storyboard?.instantiateViewController(identifier: "ConfirmViewController") as? ConfirmViewController else { return }
        confirmVC.massage = emailTextField.text
        confirmVC.modalPresentationStyle = .fullScreen
        //옵셔널바인딩만 하면 끝!
        self.present(confirmVC, animated: true, completion: nil)
        
    }
    
    @IBAction func signupClicked(_ sender: Any) {
        
        guard let signupVC = self.storyboard?.instantiateViewController(identifier: "SignUpViewController") as? SignUpViewController else { return }
        
        self.navigationController?.pushViewController(signupVC, animated: true)
        
        
    }
    
}


