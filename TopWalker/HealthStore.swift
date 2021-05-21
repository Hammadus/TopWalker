//
//  HealthStore.swift
//  TopWalker
//
//  Created by Dong Kelly on 5/20/21.
//

import Foundation
import HealthKit


class HealthStore{
    var healthStore: HKHealthStore?
    
    init() {
        if HKHealthStore.isHealthDataAvailable() {
            healthStore = HKHealthStore()
        }
    }
}
