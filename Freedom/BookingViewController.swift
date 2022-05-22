//
//  BookingViewController.swift
//  Freedom
//
//  Created by Дмитрий Бессонов on 31.03.2022.
//

import UIKit
import WebKit


class BookingViewController: UIViewController, WKUIDelegate {
    
    var webView: WKWebView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = URL(string:"https://fotogenico.ru/photostudio/1482/vk_calendar/")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }
}

    

