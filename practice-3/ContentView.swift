//
//  ContentView.swift
//  practice-3
//
//  Created by taisei sumiyama on 2021/03/24.
//

import SwiftUI

struct ContentView: View {
    @State var isError: Bool = false
    @State var isSheet: Bool = false
    @State var isModel: Bool = false
    @State var counter: Int = 0
    
    var body: some View {
        VStack{
            Button(action: {
                self.isError = true
            }) {
                Text("Alartテスト")
            }.alert(isPresented: $isError, content:{
                Alert(title: Text("タイトル"),message: Text("メッセージ分"),
                      primaryButton: .default(Text("OK"),action: {
                        okAction()
                }),
                      secondaryButton:  .cancel(Text("キャンセル"),action: {}))
            })
        Button(action: {
            self.isSheet = true
        }) {
            Text("Action Sheet テスト")
        }.actionSheet(isPresented: $isSheet) {
            ActionSheet(title: Text("タイトル"),
                        message: Text("メッセージ分"),
                        buttons:[
                            .default(Text("ボタン1"),action: {}),
                            .default(Text("ボタン2"),action: {}),
                            .destructive(Text("削除"),action: {}),
                            .cancel(Text("キャンセル"),action: {})
                        ])
            }
            Button(action: {
                self.isModel = true
            }) {
                Text("Sheetテスト")
            }.sheet(isPresented: $isModel, onDismiss: {self.countUp()}) {
                SomeView()
            }.disabled(counter >= 3)
            Text("回数:\(counter)")
                .font(.title)
                .padding()
            
        }
    }
    func okAction(){
        print("OKボタンが選ばれた")
    }
    func countUp(){
        self.counter += 1
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
