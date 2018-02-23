//
//  ViewController.swift
//  WebView
//
//  Created by Yousef arafa on 2/12/18.
//  Copyright © 2018 Yousef arafa. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UIWebViewDelegate{

    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var activity: UIActivityIndicatorView!
    @IBOutlet weak var bg: UIImageView!
    @IBOutlet weak var loadingLbl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadaddress()
        webView.delegate = self
        bg.layer.cornerRadius = 10
        activity.startAnimating()
//        bg.layer.cornerRadius = 10
        bg.isHidden = false
        loadingLbl.isHidden = false
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func loadaddress()  {
        let url = URL(string: "https://www.apple.com")
        let request = URLRequest(url: url!)
        webView.loadRequest(request)
    }

    
    func webViewDidStartLoad(_ webView: UIWebView) {
        activity.startAnimating()
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        activity.stopAnimating()
        activity.hidesWhenStopped = true
        bg.isHidden = true
        loadingLbl.isHidden = true
    }
}

