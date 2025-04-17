//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by 서준일 on 4/16/25.
//

import SwiftUI

// 각 랜드마크에 대한 세부 정보를 표시하는 row 뷰
struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            
            Spacer()
            
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundStyle(.yellow)
            }
        }
    }
}

// #Preview 매크로를 사용해 선언한 모든 미리보기를 자동으로 인식함
// 여러 개의 프리뷰를 선언하고 제목을 정해주면 해당 제목으로 프리뷰를 볼 수 있음
//#Preview("Turtle Rock") {
//    // 아래와 같이 같은 뷰 여러 개를 그룹으로 엮어서 표현 가능
//    Group {
//        LandmarkRow(landmark: landmarks[0])
//        LandmarkRow(landmark: landmarks[1])
//    }
//}
//
//#Preview("Salmon") {
//    LandmarkRow(landmark: landmarks[1])
//}

#Preview {
    let landmarks = ModelData().landmarks
    return Group {
        LandmarkRow(landmark: landmarks[0])
        LandmarkRow(landmark: landmarks[1])
    }
}
