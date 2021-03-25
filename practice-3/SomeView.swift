//
//  SomeView.swift
//  practice-3
//
//  Created by taisei sumiyama on 2021/03/26.
//

import SwiftUI

struct SomeView: View {
    var body: some View {
        VStack{
            Text("プレゼンテーション")
            Image(systemName: "gift")
                .imageScale(.large)
                .padding()
        }
    }
}

struct SomeView_Previews: PreviewProvider {
    static var previews: some View {
        SomeView()
    }
}
