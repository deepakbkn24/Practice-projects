//
//  ViewController.swift
//  ExLoginScreen
//
//  Created by Deepak B on 10/06/22.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var emailTxtFld: UITextField!
    
    
    @IBOutlet weak var passTxtFld: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emailTxtFld.delegate = self
        passTxtFld.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.emailTxtFld.resignFirstResponder()
        self.passTxtFld.resignFirstResponder()
        return true
    }
    
    @IBAction func ifLoginTapped(_ sender: Any) {
        
        if let emailText = self.emailTxtFld.text, emailText.isEmpty {
            let alert = UIAlertController(title: "Alert", message: "Email id is Empty.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alert, animated: true) {
                return
            }
        }
        else if let passText = self.passTxtFld.text, passText.isEmpty {
            let alert = UIAlertController(title: "Alert", message: "Password is Empty", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alert, animated: true) {
                return
            }
        }
        
        let emailCheck = checkEmail(testStr: emailTxtFld.text!)
        if emailCheck == false{
            showAlert()
            emailTxtFld.text = ""
        }
        
        let secVc = self.storyboard?.instantiateViewController(withIdentifier: "SecViewController") as! SecViewController
        //self.navigationController?.pushViewController(secVc, animated: true)
        secVc.modalPresentationStyle = .fullScreen
        present(secVc, animated: true, completion: nil)
        
        
    }
    
    func checkEmail(testStr: String) -> Bool {
        let emailFormat = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        
        let emailTest = NSPredicate(format: "SELF MATCHES %@", emailFormat)
        return emailTest.evaluate(with: testStr)
    }

    func showAlert() {
        let alert = UIAlertController(title: "Alert", message: "Enter Valid Email Id.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}

