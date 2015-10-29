//
//  Movies.swift
//  unwindsegueexam
//
//  Created by Student on 3/4/15.
//  Copyright (c) 2015 Student. All rights reserved.
//

import UIKit

class Movie: NSObject {
    var movieName : String
    var actor :String
    var actress : String
    var musicDirector : String
    
    init(movieName : String , actor : String , actress : String ,musicDirector : String)
    {
        self.movieName = movieName
         self.actor = actor
         self.actress = actress
         self.musicDirector = musicDirector
    }
   
}

class Movies : NSObject
{
    var movieDetails :[Movie]
    
    override init()
    {
       self.movieDetails = [Movie(movieName: "Murari", actor: "Maheshbabu", actress: "Sonali", musicDirector: "Manisharma"),Movie(movieName: "Okkadu", actor: "Maheshbabu", actress: "Boomika", musicDirector: "Manisharma")]
    }
    
}