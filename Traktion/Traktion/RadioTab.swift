//
//  FirstViewController.swift
//  Traktion
//
//  Created by Dylan Welch on 7/22/17.
//  Copyright © 2017 Dylan Welch. All rights reserved.
//

import UIKit

class RadioTab: UITableViewController {
    //You're a poopy lol
    let cellId = "cellId"
    
    let animals = ["Dog", "Cat", "Ferret"]
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return(animals.count)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! RadioTabTableViewCell
        cell.artistName.text = animals[indexPath.item]
        cell.backgroundColor = .white
        
//        cell.albumImage.image = UIImage(named: animals[indexPath.row])
        
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










//Oh I see you found me
