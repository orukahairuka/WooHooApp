import SwiftUI
import AudioToolbox

struct LevelButton: View {
    let buttonCount = 28 // ボタンの数
    @State var animatingButton: Int? = nil // アニメーション中のボタンのインデックス

    // 音楽再生
    let players: [MusicPlayer] = [
        SoundPlayer(soundType: .level),
        SoundPlayer(soundType: .buza),
        SoundPlayer(soundType: .dj),
        SoundPlayer(soundType: .hajimei),
        SoundPlayer(soundType: .chanchan),
        SoundPlayer(soundType: .hakusyu),
        SoundPlayer(soundType: .yahoo),
        SoundPlayer(soundType: .buta),
        SoundPlayer(soundType: .denwanai),
        SoundPlayer(soundType: .denwanai2),
        SoundPlayer(soundType: .goukaku),
        SoundPlayer(soundType: .guaa1),
        SoundPlayer(soundType: .guaa2),
        SoundPlayer(soundType: .katana),
        SoundPlayer(soundType: .kikku),
        SoundPlayer(soundType: .nigeru),
        SoundPlayer(soundType: .niwatori),
        SoundPlayer(soundType: .nogoukaku),
        SoundPlayer(soundType: .ushi),
        SoundPlayer(soundType: .uwa1),
        SoundPlayer(soundType: .washi),
        SoundPlayer(soundType: .yagi),
        SoundPlayer(soundType: .jan),
        SoundPlayer(soundType: .money),
        SoundPlayer(soundType: .ohoo),
        SoundPlayer(soundType: .pafu),
        SoundPlayer(soundType: .role),
        SoundPlayer(soundType: .typewriter)
    ]

    var body: some View {
        VStack {
            Spacer()
            ScrollView {
                Grid (horizontalSpacing: 50, verticalSpacing: 50) {
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

                                    // 音の再生
                                    if index < players.count {
                                        players[index].playMusic()
                                    }

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
            Spacer()
        }
    }
}

struct LevelButton_Previews: PreviewProvider {
    static var previews: some View {
        LevelButton()
    }
}
