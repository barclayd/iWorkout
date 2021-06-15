//
//  iWorkoutApp.swift
//  iWorkout WatchKit Extension
//
//  Created by Daniel Barclay on 15/06/2021.
//

import SwiftUI

@main
struct iWorkoutApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                StartView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
