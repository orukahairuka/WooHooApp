import SwiftUI

struct LevelButton: View {

  @State var willColorAnimate: Bool = false
  @State var willScaleAnimate: Bool = false
  @State var willOffsetAnimate: Bool = false

  // for reset
  @State var isResseting: Bool = false

  var body: some View {
    VStack {
      Image(systemName: "star.fill")
        .font(.system(size: 64))
        .foregroundColor(willColorAnimate ? Color.yellow : Color.gray)
        .animation(.easeInOut(duration: 0.5), value: willColorAnimate)
        .scaleEffect(willScaleAnimate ? 1.0 : 0.4)
        // ★リセット時はアニメーションの方法を変更
        .animation(
          isResseting
          ? .linear(duration: 0.5)
          : .interpolatingSpring(
            mass: 1.0,
            stiffness: 240.0,
            damping: 12.0,
            initialVelocity: 20.0
          ),
          value: willScaleAnimate
        )
        .offset(y: willOffsetAnimate ? 10 : 0)
        .animation(
            .timingCurve(0.25, 1.0, 0.5, 1.0, duration: 0.5),
            value: willOffsetAnimate
        )

      HStack(spacing: 32) {
        Button {
          willScaleAnimate = true
          willOffsetAnimate = true
          willColorAnimate = true
        } label: {
          Text("スタート")
        }
        .disabled(willScaleAnimate)

        Button {
          // ★ リセットボタンタップ時にフラグを更新
          isResseting = true
          willScaleAnimate = false
          willOffsetAnimate = false
          willColorAnimate = false
          isResseting = false
        } label: {
          Text("リセット")
        }
        .disabled(!willScaleAnimate)
      }

    }
  }
}

#Preview {
    LevelButton()
}
