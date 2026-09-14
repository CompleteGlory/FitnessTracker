//
//  HomeViewModel.swift
//  FitnessTracker
//
//  Created by Magd on 14/09/2026.
//

import Foundation
import SwiftUI

@Observable
class HomeViewModel{
    
     var calories: Int = 123
     var active: Int = 52
     var stand: Int = 8

     var mockActivities = [
        Activity(id: 0, title: "Today steps", subTitle: "Goal 12,000", image: "figure.walk", tintColor: .green, amount: "9812"),
        Activity(id: 1, title: "Today", subTitle: "Goal 1,000", image: "figure.walk", tintColor: .blue, amount: "9000"),
        Activity(id: 2, title: "Today steps", subTitle: "Goal 15,000", image: "figure.walk", tintColor: .red, amount: "19000"),
        Activity(id: 3, title: "Today ", subTitle: "Goal 11,000", image: "figure.run", tintColor: .yellow, amount: "5006")
    ]
    
    var mockWorkouts = [
        Workout(id: 0, title: "Running", image: "figure.run", date: "Aug", duration: "51 min", calories: "Aug", tintColor: .red),
        Workout(id: 1, title: "Running", image: "figure.run", date: "Aug", duration: "51 min", calories: "Aug", tintColor: .cyan),
        Workout(id: 2, title: "Running", image: "figure.run", date: "Aug", duration: "51 min", calories: "Aug", tintColor: .cyan),
        Workout(id: 3, title: "Running", image: "figure.run", date: "Aug", duration: "51 min", calories: "Aug", tintColor: .cyan),
        
    ]
}
