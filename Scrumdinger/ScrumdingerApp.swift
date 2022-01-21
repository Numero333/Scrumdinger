//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by François-Xavier Méité on 17/01/2022.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    
    @State private var scrums = DailyScrum.sampleData
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScrumsView(scrums: $scrums)
            }
        }
    }
}