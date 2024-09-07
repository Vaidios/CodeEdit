//
//  SourceControlSettingsView.swift
//  CodeEdit
//
//  Created by Raymond Vleeshouwer on 02/04/23.
//

import SwiftUI

enum SourceControlSettingsTab {
    case general, git
}

struct SourceControlSettingsView: View {
    @State var selectedTab: SourceControlSettingsTab = .general

    var body: some View {
        Group {
            switch selectedTab {
            case .general:
                SourceControlGeneralView()
            case .git:
                SourceControlGitView()
            }
        }
        .safeAreaInset(edge: .top, spacing: 0) {
            Picker("", selection: $selectedTab) {
                Text("General").tag(SourceControlSettingsTab.general)
                Text("Git").tag(SourceControlSettingsTab.git)
            }
            .pickerStyle(.segmented)
            .labelsHidden()
            .padding(.horizontal, 20)
            .padding(.bottom, 20)

        }
    }
}
