//
//  StepsViewController.swift
//  TopWalker
//
//  Created by Dong Kelly on 5/20/21.
//

import UIKit
import HealthKit

class StepsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var healthStore = HKHealthStore()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        self.authorizeHealthKit()

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        cell.textLabel?.text = "row: \(indexPath.row)"
        return cell
    }
    
    func authorizeHealthKit() {
        let share = Set([HKCategoryType.quantityType(forIdentifier: .heartRate)!, HKCategoryType.quantityType(forIdentifier: .stepCount)!])
        let read = Set([HKCategoryType.quantityType(forIdentifier: .heartRate)!, HKCategoryType.quantityType(forIdentifier: .stepCount)!])
        healthStore.requestAuthorization(toShare: share, read: read){ (chk, error) in
            if(chk){
                print("Permission granted")
                //self.fetchLatestHeartRate()
                self.getTodayTotalStepCounts()
            }
        }
    }
    
    func getTodayTotalStepCounts(){
        guard let sampleType = HKCategoryType.quantityType(forIdentifier: .stepCount) else {
            return
        }
        let startDate = Calendar.current.startOfDay(for: Date())
        let predicate = HKQuery.predicateForSamples(withStart: startDate, end: Date(), options: .strictEndDate)
        // let sortDescriptor = NSSortDescriptor(key: HKSampleSortIdentifierStartDate, ascending: false)
        var interval = DateComponents()
        let query = HKStatisticsCollectionQuery(quantityType: sampleType, quantitySamplePredicate: predicate, options: [.cumulativeSum], anchorDate: startDate, intervalComponents: interval)
        query.initialResultsHandler = {
            query,result,error in
            
            if let myresult = result {
                myresult.enumerateStatistics(from: startDate, to: Date()) { (statistic, value) in
                    if let count = statistic.sumQuantity(){
                        let val = count.doubleValue(for: HKUnit.count())
                        print("Total step taken today is \(val) steps")
                    }
                }
            }
        }
        healthStore.execute(query)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
