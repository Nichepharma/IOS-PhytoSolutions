import UIKit
import WebKit

class MapViewController: MainViewController, WKUIDelegate {
    
    var webView: WKWebView!
    
    var chosenStore: Store?;
    

    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        //https://www.google.com/maps/search/?api=1&query=<lat>,<lng> Replace By this URL
        //debugPrint(chosenStore?.mapUrl)
        print(chosenStore!.mapUrl)
        if chosenStore?.mapUrl != nil
        {
            let myURL = URL(string: chosenStore!.mapUrl);
            let myRequest = URLRequest(url: myURL!)
            webView.load(myRequest)
        }
        
        
    }
    
  
    
    
}

