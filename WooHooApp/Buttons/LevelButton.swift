import SwiftUI

struct LevelButton: View {
    let buttonCount = 10 // ボタンの数
    @State var animatingButton: Int? = nil // アニメーション中のボタンのインデックス

    //音楽再生
    let musicPlayer = SoundPlayer()

    var body: some View {
        VStack {
            Grid {
                ForEach(0..<buttonCount/2, id: \.self) { rowIndex in
                    GridRow {
                        ForEach(0..<2) { columnIndex in
                            let index = rowIndex * 2 + columnIndex
                            Button {
                                if animatingButton == index {
                                    // 同じボタンが連続してタップされた場合は、アニメーションをリセット
                                    animatingButton = nil
                                } else {
                                    // 他のボタンがタップされた場合は、現在のアニメーションをリセットしてから新しいボタンのアニメーションを開始
                                    animatingButton = index
                                }
                                musicPlayer.musicPlayer()
                            } label: {
                                Image(systemName: "star.fill")
                                    .font(.system(size: 64))
                                    .foregroundColor(animatingButton == index ? Color.yellow : Color.gray)
                                    .animation(.easeInOut(duration: 0.5), value: animatingButton == index)
                                    .scaleEffect(animatingButton == index ? 1.0 : 0.4)
                                    .animation(
                                        animatingButton == index
                                        ? .interpolatingSpring(
                                            mass: 1.0,
                                            stiffness: 240.0,
                                            damping: 12.0,
                                            initialVelocity: 20.0
                                        )
                                        : .linear(duration: 0.5),
                                        value: animatingButton == index
                                    )
                                    .offset(y: animatingButton == index ? 10 : 0)
                                    .animation(
                                        .timingCurve(0.25, 1.0, 0.5, 1.0, duration: 0.5),
                                        value: animatingButton == index
                                    )
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    LevelButton()
}
