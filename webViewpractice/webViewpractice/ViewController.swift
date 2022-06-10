//
//  ViewController.swift
//  webViewpractice
//
//  Created by Deepak B on 03/06/22.
//

import UIKit
import WebKit
import SafariServices
    
class ViewController: UIViewController {
    
    @IBOutlet weak var webView: WKWebView!
    @IBOutlet weak var address: UILabel!
    @IBOutlet weak var adressUrlField: UITextField!
    
    let urlPrefix = "https://www."
    let urlSuffix = ".com"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func webViewpressed(_ sender: Any) {
        let url = urlPrefix + adressUrlField.text! + urlSuffix
        let urlRequest = URLRequest(url: URL(string: url)!)
        
        webView.load(urlRequest)
        
    }
    
    @IBAction func safariPressed(_ sender: Any) {
        let url = urlPrefix + adressUrlField.text! + urlSuffix
        let safariVC = SFSafariViewController(url: URL(string: url)!)
        present(safariVC, animated: true) {
            self.adressUrlField.text = ""
        }
        
        
        
    }
    
}

