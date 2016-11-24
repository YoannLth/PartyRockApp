//
//  videoCellData.swift
//  PartyRockApp
//
//  Created by yoann lathuiliere on 23/11/2016.
//  Copyright © 2016 ylth. All rights reserved.
//

import Foundation

class VideoCellData{
  private var _imageURL: String!
  private var _videoURL: String!
  private var _videoTitle: String!
  
  var imageURL: String{
    return _imageURL
  }
  
  var videoURL: String{
    return _videoURL
  }
  
  var videoTitle: String{
    return _videoTitle
  }
  
  init(imageURL: String, videoURL: String, videoTitle:String){
    _imageURL = imageURL
    _videoURL = videoURL
    _videoTitle = videoTitle
  }
  
}
