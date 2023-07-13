//
//  ScrumdingerAppApp.swift
//  ScrumdingerApp
//
//  Created by Chis Woo on 7/12/23.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: DailyScrum.sampleData)
        }
    }
}
