//
//  TrackDetailsViewController.swift
//  TrackListApp
//
//  Created by Олег Федоров on 07.09.2021.
//

import UIKit

class TrackDetailsViewController: UIViewController {

    @IBOutlet var coverImageView: UIImageView!
    @IBOutlet var trackNameLabel: UILabel!
    
    var track: Track!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        coverImageView.image = UIImage(named: track.title)
        trackNameLabel.text = track.title
    }
}
