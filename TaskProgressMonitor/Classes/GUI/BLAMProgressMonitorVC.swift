//
//  BLAMProgressMonitorVC.swift
//  Pods
//
//  Created by Peter Todd Air on 21/06/2016.
//
//

import UIKit


public class BLAMProgressMonitorVC: UIViewController {
    
    let notificationProgress = "com.brightbluecircle.circleViewProgress"
 //   var selectedJob : Job!
    var jobLabel : String!
    

    
    @IBOutlet weak var circleView: BGSUICircleView!
    @IBOutlet weak var stepTV: UITableView!
    

    public override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //     let dataSourceTV = tableView.dataSource as! BGSPMTableViewDataSource
        //   tableView.dataSource = dataSourceTV
   //     configGestures()
        // Create the job
   //     createJob()
        //    dataSourceTV.selectedJob = selectedJob
        
    
   //     NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(updateProgress), name: notificationProgress, object: nil)
    /*
        circleView.percentageComplete = NSNumber(float: 0.0) // Scale 0 - 1
        circleView.indicatorArcColor = UIColor.blueColor()
        circleView.fillColor = UIColor.lightGrayColor()
        circleView.lineWidth = 5
        circleView.fillAlpha = 0.3
        if jobLabel != nil{
            circleView.lblText = jobLabel
        }else{
            circleView.lblText = ""
        }
        circleView.showPercentage = true
        circleView.showPercentage = true
        
        circleView.contentMode = UIViewContentMode.Redraw
*/
    }

    public override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
