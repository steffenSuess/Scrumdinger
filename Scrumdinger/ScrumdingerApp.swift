//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Steffen Suess on 09.10.22.
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
