//
//  ConfirmViewController.swift
//  Week1_hw
//
//  Created by kong on 2021/04/03.
//

import UIKit

class ConfirmViewController: UIViewController {
    @IBOutlet weak var infoLabel: UILabel!
    var massage: String?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setLadel()
    }
    
    func setLadel(){
        
        if let msg = self.massage {
        infoLabel.text = "\(msg)님 가입이 완료되었습니다."
        }
    
    }

    @IBAction func cofirmClicked(_ sender: Any) {
        
        let presentingVC = self.presentingViewController
         self.dismiss(animated: true) {
              presentingVC?.navigationController?.popViewController(animated: false)
         }
        
    }
    
}
