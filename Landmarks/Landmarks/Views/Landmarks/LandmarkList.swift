//
//  LandmarkList.swift
//  Landmarks
//
//  Created by 서준일 on 4/16/25.
//

import SwiftUI

// 개별 랜드마크를 눌렀을 때 상세 페이지로 이동하도록 해야 함
// ModelData 객체를 만들었으니, 앱에서 이 객체를 공통 데이터 저장소로 사용하도록 뷰를 업데이트
struct LandmarkList: View {
    // 프로퍼티 래퍼를 추가하면 modelData 프로퍼티가 자동으로 값을 받아옴
    // 현재 뷰의 환경에서 데이터를 읽어오게 하고,
    @Environment(ModelData.self) var modelData
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    var body: some View {
        NavigationSplitView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .animation(.default, value: filteredLandmarks)
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    LandmarkList()
    // 이 수식어는 그 데이터를 하위 뷰로 전달해줌
        .environment(ModelData())
}
