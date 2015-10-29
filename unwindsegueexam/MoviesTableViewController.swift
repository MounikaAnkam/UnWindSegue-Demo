//
//  MoviesTableViewController.swift
//  unwindsegueexam
//
//  Created by Student on 3/4/15.
//  Copyright (c) 2015 Student. All rights reserved.
//

import UIKit

class MoviesTableViewController: UITableViewController {
    
    var appy = UIApplication.sharedApplication().delegate as AppDelegate
    var movies : Movies!
    var movie : Movie!
    var indexPath : Int!
    
    override func viewDidLoad() {
       
        super.viewDidLoad()
        movies = appy.movies
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
   //this is the func which is called immediately after coming back from the presenting view controller
    @IBAction func unwindback (segue: UIStoryboardSegue) {
        println("came back ")
        
        //here the movie object is added to moviedetails array which has movie objects
        movies.movieDetails.append(movie)
        
        //then the table is reloaded again to populate the new data
        self.tableView.reloadData()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
      
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return movies.movieDetails.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as UITableViewCell
        
        //getting the movie at that particular indexpath from movies class
        var movie : Movie = movies.movieDetails[indexPath.row] as Movie
        cell.textLabel?.text = movie.movieName
     
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

  
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
    //this method is triggered when just before the segue happens,so this is the excellent place to pass the data to the destination view controller before displaying it
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
        
        //if the destination view controller is MovieDetailviewcontroller which has identifier name as detail then the below if condition will be satisfied
        if(segue.identifier == "detail")
        {
            var detailView : MovieDetailViewController = segue.destinationViewController as  MovieDetailViewController
            
            //this variable stores the indexpath for the selected row
            var indexPath = self.tableView.indexPathForSelectedRow()!
            
            //movie object at that particular indexpath or that particular selected row is is stored in movie property which is present indetail view controller
            detailView.movie = movies.movieDetails[indexPath.row]
            
        }
    }
  

}
