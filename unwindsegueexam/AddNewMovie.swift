//
//  AddNewMovie.swift
//  unwindsegueexam
//
//  Created by Student on 3/4/15.
//  Copyright (c) 2015 Student. All rights reserved.
//

import UIKit

class AddNewMovie: UIViewController {

    
    @IBOutlet weak var movieNameTF: UITextField!

    @IBOutlet weak var actorTF: UITextField!
    
    @IBOutlet weak var actressTF: UITextField!
    
    @IBOutlet weak var musicTF: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    //this method is called when you click on cancel button and the view controller is dismissed
    @IBAction func cancel(sender: AnyObject) {
//        var alert : UIAlertView = UIAlertView(title: "", message: "Are you sure you dont want to save this details", delegate: nil, cancelButtonTitle: "ok")
//        alert.show()
        self.dismissViewControllerAnimated(true , completion: nil)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

  
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
    //this method is called just before dismissing the present view controller
    //so this is the place where you can utilise to transfer data from this view controller to the destination view controller
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        var movieTable : MoviesTableViewController = segue.destinationViewController as MoviesTableViewController
        movieTable.movie = Movie(movieName: movieNameTF.text! , actor: actorTF.text!, actress: actressTF.text!, musicDirector: musicTF.text!)
        
        
    }
   

}
