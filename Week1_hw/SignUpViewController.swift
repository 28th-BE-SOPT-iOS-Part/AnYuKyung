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

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func newAccountClicked(_ sender: Any) {
        
        if emailTextField.text == "" || passwordTextField.text == "" || confirmPasswordTextField.text == "" {
            
            return
            
        }
        guard let homeVC = self.storyboard?.instantiateViewController(withIdentifier: "TabBarController") else { return }
          self.navigationController?.pushViewController(homeVC, animated: true)
//        guard let homeVC = self.storyboard?.instantiateViewController(identifier: "HomeViewController") as? HomeViewController else { return }
//
//        homeVC.modalPresentationStyle = .fullScreen
//        self.present(homeVC, animated: true, completion: { self.navigationController?.popViewController(animated: true)} )
        
    }
}
