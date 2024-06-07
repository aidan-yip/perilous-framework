//
//  ViewController.swift
//  Perilous Framework
//
//  Created by Aidan Y. on 2024-03-22.
//

import Cocoa
import WebKit

class ViewController: NSViewController, WKUIDelegate, WKScriptMessageHandler
{
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        
    }
    
    var webView: WKWebView!

    override func loadView()
        {
        let webConfiguration = WKWebViewConfiguration ();
        webConfiguration.preferences.setValue(true, forKey: "allowFileAccessFromFileURLs");
        webView = WKWebView (frame: CGRect(x:0, y:0, width:1300, height:844), configuration:webConfiguration);
        webView.uiDelegate = self ;
        view = webView;
        }

    override func viewDidLoad() {
        super.viewDidLoad()
        super.viewDidLoad()
            // Enter a web url below to connect it to the framework
                let url = URL(string: "https://apple.com")!
                webView.load(URLRequest(url: url))
                webView.allowsBackForwardNavigationGestures = true
        }
    override func viewDidAppear() {
            super.viewDidAppear()
            self.view.window?.title = "Perilous Framework"
        }
    }
    



