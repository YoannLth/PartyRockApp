//
//  VideoVC.swift
//  PartyRockApp
//
//  Created by yoann lathuiliere on 23/11/2016.
//  Copyright © 2016 ylth. All rights reserved.
//

import UIKit

class VideoVC: UIViewController {
  
  @IBOutlet weak var webView: UIWebView!
  
  private var _videoCellData: VideoCellData!
  @IBOutlet weak var titleLabel: UILabel!
  
  var videoCellData: VideoCellData{
    get{
      return _videoCellData
    }
    set{
      _videoCellData = newValue
    }
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    titleLabel.text = videoCellData.videoTitle
    webView.loadHTMLString(videoCellData.videoURL, baseURL: nil)
  }
  
}
