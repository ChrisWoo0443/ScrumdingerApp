//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by Chis Woo on 7/11/23.
//

import SwiftUI


struct ScrumsView: View {
    let scrums: [DailyScrum]
    
    var body: some View {
        if #available(macOS 13.0, *) {
            NavigationStack {
                List(scrums) { scrum in
                    NavigationLink(destination: Text(scrum.title)) {
                        CardView(scrum: scrum)
                    }
                    .listRowBackground(scrum.theme.mainColor)
                }
                .navigationTitle("Daily Scrums")
                .toolbar {
                    Button(action: {}) {
                        Image(systemName: "plus")
                    }
                    .accessibilityLabel("New Scrum")
                }
            }
        } else {
            // Fallback on earlier versions
        }
    }
}


struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
        ScrumsView(scrums: DailyScrum.sampleData)
    }
}
