//
//  StartView.swift
//  iWorkout WatchKit Extension
//
//  Created by Daniel Barclay on 15/06/2021.
//

import HealthKit
import SwiftUI

struct StartView: View {
    var workoutTypes: [HKWorkoutActivityType] = [.cycling, .running, .soccer, .walking]
    
    var body: some View {
        List(workoutTypes) { workoutType in
            NavigationLink(workoutType.name, destination: Text(workoutType.name)).padding(.vertical, 15).padding(.horizontal, 5)
        }.listStyle(.carousel)
            .navigationBarTitle("Workouts")
    }
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}

extension HKWorkoutActivityType: Identifiable {
    public var id: UInt {
        rawValue
    }
    
    var name: String {
        switch self {
        case .running:
            return "Run"
        case .cycling:
            return "Bike"
        case .walking:
            return "Walk"
        case .soccer:
            return "Football"
        default:
            fatalError("Activity Type not supported")
        }
    }
}
