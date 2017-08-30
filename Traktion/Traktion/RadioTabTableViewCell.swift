//
//  RadioTabTableViewCell.swift
//  Traktion
//
//  Created by Dylan Welch on 8/20/17.
//  Copyright © 2017 Dylan Welch. All rights reserved.
//

import UIKit

class RadioTabTableViewCell: BaseCell {
    
    let artistImage: UIImageView = {
        let iv = UIImageView()
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.image = #imageLiteral(resourceName: "Pink Floyd")
        iv.contentMode = .scaleAspectFit
        return iv
    }()
    
    let albumName: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font =  UIFont(name: "Test", size: 12)
        label.text = "Shakes EP"
        return label
    }()
    
    let artistName: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font =  UIFont(name: "Test", size: 14)
        label.text = "The Shakes"
        return label
    }()
    
    let songName: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font =  UIFont(name: "Test", size: 16)
        label.text = "Brand New Song"
        return label
    }()
    
    override func setupViews() {
        
        addSubview(artistImage)
        addSubview(artistName)
        addSubview(songName)
        
        // Configure artist images
        artistImage.leftAnchor.constraint(equalTo: leftAnchor, constant: 16).isActive = true
        artistImage.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        artistImage.widthAnchor.constraint(equalToConstant: 75).isActive = true
        artistImage.heightAnchor.constraint(equalToConstant: 75).isActive = true
        
        // Configure artist names label
        artistName.leftAnchor.constraint(equalTo: artistImage.rightAnchor, constant: 16).isActive = true
        artistName.topAnchor.constraint(equalTo: artistImage.topAnchor).isActive = true
        artistName.widthAnchor.constraint(equalToConstant: 250).isActive = true
        artistName.heightAnchor.constraint(equalToConstant: 80).isActive = true
        
        // Configure song names label
        songName.leftAnchor.constraint(equalTo: artistImage.rightAnchor, constant: 14).isActive = true
        songName.centerYAnchor.constraint(equalTo: artistImage.topAnchor).isActive = true
        songName.widthAnchor.constraint(equalToConstant: 250).isActive = true
        songName.heightAnchor.constraint(equalToConstant: 78).isActive = true
   
    }

}

class BaseCell: UITableViewCell{
    
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
    }
    
    func setupViews(){
        
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }
}
