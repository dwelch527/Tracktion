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
    
    let artistName: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font =  UIFont(name: "Test", size: 16)
        label.text = "Test"
        return label
    }()

    
//    @IBOutlet weak var songName: UILabel!
//    @IBOutlet weak var artistName: UILabel!
//    @IBOutlet weak var albumName: UILabel!
//    @IBOutlet weak var albumImage: UIImageView!
    
    override func setupViews() {
        
        
        addSubview(artistImage)
        addSubview(artistName)
        
        
        artistImage.leftAnchor.constraint(equalTo: leftAnchor, constant: 16).isActive = true
        artistImage.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        artistImage.widthAnchor.constraint(equalToConstant: 75).isActive = true
        artistImage.heightAnchor.constraint(equalToConstant: 75).isActive = true
        
        artistName.leftAnchor.constraint(equalTo: artistImage.rightAnchor, constant: 16).isActive = true
        artistName.topAnchor.constraint(equalTo: artistImage.topAnchor).isActive = true
        artistName.widthAnchor.constraint(equalToConstant: 250).isActive = true
        artistName.heightAnchor.constraint(equalToConstant: 80).isActive = true
        
        
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
