//
//  FirstViewController.swift
//  Traktion
//
//  Created by Dylan Welch on 7/22/17.
//  Copyright © 2017 Dylan Welch. All rights reserved.
//

import UIKit

class RadioTab: UITableViewController {
    
    let cellId = "cellId"
    
    let songs = ["Hello World", "New Song", "Song"]
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return(songs.count)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! RadioTabTableViewCell
        cell.artistImage.image = UIImage(named: "Pink Floyd")
        cell.backgroundColor = .white
        
        return(cell)
        
    }
    
    func setupTableView(){
        tableView.register(RadioTabTableViewCell.self, forCellReuseIdentifier: cellId)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()

    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


