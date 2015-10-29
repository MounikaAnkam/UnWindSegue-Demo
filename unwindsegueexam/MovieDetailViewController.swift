//
//  ViewController.swift
//  unwindsegueexam
//
//  Created by Student on 3/4/15.
//  Copyright (c) 2015 Student. All rights reserved.
//

import UIKit

class MovieDetailViewController: UIViewController {
    var movie : Movie!

   
    @IBOutlet weak var actorLBL: UILabel!
    
    @IBOutlet weak var actressLBL: UILabel!
    
    @IBOutlet weak var musicLBL: UILabel!
    
   
    
    //the details of the selected will be updated in the given labels
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = movie.movieName
        actorLBL.text = movie.actor
        actressLBL.text = movie.actress
        musicLBL.text = movie.musicDirector
       
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

