//
//  ViewController.swift
//  PartyRockApp
//
//  Created by yoann lathuiliere on 23/11/2016.
//  Copyright © 2016 ylth. All rights reserved.
//

import UIKit

class HomeVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
  @IBOutlet weak var tableView: UITableView!
  
  var videos = [VideoCellData]()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    videos.append(VideoCellData(imageURL: "https://i.ytimg.com/vi/uxpDa-c-4Mc/hqdefault.jpg?custom=true&w=196&h=110&stc=true&jpg444=true&jpgq=90&sp=68&sigh=tMb1WupZIEIXACQyhkEFXAgzRIA", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/uxpDa-c-4Mc\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Drake - Hotline Bling"))
    
    videos.append(VideoCellData(imageURL: "https://i.ytimg.com/vi/-zzP29emgpg/hqdefault.jpg?custom=true&w=196&h=110&stc=true&jpg444=true&jpgq=90&sp=68&sigh=EUurGNcJldRRIAS7Qb8u5IvZaNU", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/-zzP29emgpg\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Drake - Take Care ft. Rihanna"))
    
    videos.append(VideoCellData(imageURL: "https://i.ytimg.com/vi/RubBzkZzpUA/hqdefault.jpg?custom=true&w=196&h=110&stc=true&jpg444=true&jpgq=90&sp=68&sigh=dCBLq3Qi1Si1_ennVtH1NYLQh1o", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/RubBzkZzpUA\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Drake - Started From The Bottom (Explicit)"))
    
    videos.append(VideoCellData(imageURL: "https://i.ytimg.com/vi/GxgqpCdOKak/hqdefault.jpg?custom=true&w=196&h=110&stc=true&jpg444=true&jpgq=90&sp=68&sigh=rYsaOr4JnenLNuIYdqxAleUF39Y", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/GxgqpCdOKak\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Drake - Hold On, We’re Going Home ft. Majid Jordan"))
    
    videos.append(VideoCellData(imageURL: "https://i.ytimg.com/vi/7LnBvuzjpr4/hqdefault.jpg?custom=true&w=196&h=110&stc=true&jpg444=true&jpgq=90&sp=68&sigh=f01d5Fj9NZ3i8vuFW8LWLaJK5No", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/7LnBvuzjpr4\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Drake - Energy"))
    
    videos.append(VideoCellData(imageURL: "https://i.ytimg.com/vi/BYDKK95cpfM/hqdefault.jpg?custom=true&w=196&h=110&stc=true&jpg444=true&jpgq=90&sp=68&sigh=-jqfRHDgGI7FUttHoD4_xFYbyzg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/0V2VVEH6AX4\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: " Drake - The Motto (Edited) ft. Lil Wayne, Tyga"))
    
    videos.append(VideoCellData(imageURL: "https://i.ytimg.com/vi/CccnAvfLPvE/hqdefault.jpg?custom=true&w=196&h=110&stc=true&jpg444=true&jpgq=90&sp=68&sigh=HtsLg6I-1ykL578TBb60pTit5h4", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/U5pzmGX8Ztg\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Drake - Worst Behavior"))
    
    tableView.delegate = self
    tableView.dataSource = self
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    if let cell = tableView.dequeueReusableCell(withIdentifier: "VideoCell", for: indexPath) as? VideoCell{
      let videoCellData = videos[indexPath.row]
      
      cell.updateUI(videoCellData: videoCellData)
      
      return cell
    }else{
      return UITableViewCell()
    }
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return videos.count
  }
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    let _sender = videos[indexPath.row]
    performSegue(withIdentifier: "VideoVC", sender: _sender)
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if let destination = segue.destination as? VideoVC{
      if let video = sender as? VideoCellData{
        destination.videoCellData = video
      }
    }
  }
}

