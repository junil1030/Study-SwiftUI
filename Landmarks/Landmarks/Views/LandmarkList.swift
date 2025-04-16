//
//  LandmarkList.swift
//  Landmarks
//
//  Created by 서준일 on 4/16/25.
//

import SwiftUI

// 개별 랜드마크를 눌렀을 때 상세 페이지로 이동하도록 해야 함
struct LandmarkList: View {
    var body: some View {
        NavigationSplitView {
            List(landmarks, id: \.id) { landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    LandmarkList()
}
