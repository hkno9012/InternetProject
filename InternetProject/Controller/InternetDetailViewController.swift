//================================================================
//----------------------------------------------------------------
//  InternetDetailViewController.swift
//  InternetProject
//
//  Created by Knott, Hunter on 12/14/18.
//  Copyright © 2018 Knott, Hunter. All rights reserved.
//

import UIKit
import WebKit
//================================================================
public class InternetDetailViewController: UIViewController
{
    @IBOutlet weak var screenTitle: UILabel!
    @IBOutlet weak var webViewer: WKWebView!
    //================================================================
    var detailTitle : String?
    {
        didSet//Like a listener for the variable
        {
            updateView()
        }
    }
    //================================================================
    var detailAddress : String?
    {
        didSet
        {
            updateView()
        }
    }
    //================================================================
    private func updateView() -> Void
    {
        if (detailTitle != nil && screenTitle != nil && webViewer != nil)
        {
            if (detailTitle?.range(of: "Definitions", options: .caseInsensitive) != nil)//Basically a .contains in Swift
            {
                loadPDF()
            }
            else
            {
                if (detailAddress != nil)
                {
                    loadURL(webAddress: detailAddress!)
                }
            }
            screenTitle?.text = detailTitle
        }
    }
    //================================================================
    public override func viewDidLoad() -> Void
    {
        super.viewDidLoad()
        updateView()
    }
    //================================================================
    private func loadURL(webAddress: String) -> Void
    {
        let currentURL = URL(string: webAddress)
        let currentWebRequest = URLRequest(url: currentURL!)
        webViewer.load(currentWebRequest)
    }
    //================================================================
    private func loadPDF() -> Void
    {
        if let contentPDF = Bundle.main.url(forResource: "Internet Topics", withExtension: "pdf", subdirectory: nil, localization: nil)
        {
            let requestPDF = NSURLRequest(url: contentPDF)
            webViewer.load(requestPDF as URLRequest)
        }
    }
    //================================================================
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
     {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
}
