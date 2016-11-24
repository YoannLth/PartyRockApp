//
//  PartyCellTableViewCell.swift
//  PartyRockApp
//
//  Created by yoann lathuiliere on 23/11/2016.
//  Copyright © 2016 ylth. All rights reserved.
//

import UIKit

class VideoCell: UITableViewCell {

  @IBOutlet weak var videoPreviewImage: UIImageView!
  @IBOutlet weak var videoTitleLabel: UILabel!
  
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
  
  func updateUI(videoCellData: VideoCellData){
    videoTitleLabel.text = videoCellData.videoTitle
    
    let url = URL(string: videoCellData.imageURL)!
    
    DispatchQueue.global().async {
      do{
        let data = try Data(contentsOf: url)
        DispatchQueue.global().async {
          self.videoPreviewImage.image = UIImage(data: data)
        }
      } catch{
        // handle the error
      }
    }
  }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
