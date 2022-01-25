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
                ScrumsView(scrums: $store.scrums) {
                    ScrumStore.save(scrums: store.scrums) { result in
                        if case .failure(let error) = result {
                            fatalError(error.localizedDescription)
                        }
                    }
                }
            }
            .onAppear {
                ScrumStore.load { result in
                    switch result {
                    case .failure(let error):
                        fatalError(error.localizedDescription)
                    case .success(let scrums):
                        store.scrums = scrums
                    }
                }
            }
        }
    }
}
