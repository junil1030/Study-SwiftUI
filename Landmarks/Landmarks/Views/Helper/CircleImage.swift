//
//  CircleImage.swift
//  Landmarks
//
//  Created by 서준일 on 4/16/25.
//

import SwiftUI

struct CircleImage: View {
    var image: Image // 하드코딩을 없애고 json으로부터 데이터 받아오기
    var body: some View {
        image
        // Cicle 타입은 mask로 사용할 수 있는 도형이며, storke, fill등 을 지정해 하나의 뷰로도 사용할 수 있음
        // 이미지가 Circle안에 존재하는 화면의 구성은
        // Image -> Clipshape -> Circle 순서로 화면 위에 그려지기 때문
            .clipShape(Circle())
        // 흰색 테두리를 가진 원을 하나 만들고, overlay로 이미지 위에 추가하여 이미지에 테두리를 줌
        // 그 다음 이미지에 그림자를 추가한다
        // 중요한 것은 overlay에 그림자가 추가되는 것이 아니고 이미지 자체에 추가되는 것
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
        
    }
}

#Preview {
    CircleImage(image: Image("turtlerock"))
}
