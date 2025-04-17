//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by 서준일 on 4/17/25.
//

import SwiftUI

// Binding 속성 래퍼를 사용하면 데이터를 저장하는 속성과 데이터를 표시하고
// 변경하는 보기 사이에서 읽고 쓸 수 있음
// binding을 사용하기 때문에 이 보기 내에서 수행된 변경 사항은 데이터 소스로 다시 보내짐
struct FavoriteButton: View {
    @Binding var isSet: Bool
    
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
                .labelStyle(.iconOnly)
                .foregroundStyle(isSet ? .yellow : .gray)
        }
    }
}

#Preview {
    FavoriteButton(isSet: .constant(true))
}
