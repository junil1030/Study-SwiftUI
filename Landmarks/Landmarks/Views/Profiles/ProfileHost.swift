//
//  ProfileHost.swift
//  Landmarks
//
//  Created by 서준일 on 4/24/25.
//

import SwiftUI


struct ProfileHost: View {
    @State private var draftProfile = Profile.default


    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            ProfileSummary(profile: draftProfile)
        }
        .padding()
    }
}


#Preview {
    ProfileHost()
}
