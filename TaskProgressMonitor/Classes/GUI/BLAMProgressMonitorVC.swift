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
        configGestures()
        // Create the job
        createJob()
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

    func configGestures()
    {
        let tapDismis = UITapGestureRecognizer()
        tapDismis.addTarget(self, action: #selector(dismissView))
        self.circleView.addGestureRecognizer(tapDismis)
    }
    
    func dismissView(){
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    // MARK: - Create Job in Core Data
    // Used to log job enable reporting on progress of previous jobs
    func createJob(){
        
    }


}
