//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by François-Xavier Méité on 17/01/2022.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @StateObject private var store = ScrumStore()
    //@State private var scrums = DailyScrum.sampleData
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScrumsView(scrums: $store.scrums)
            }
        }
    }
}
