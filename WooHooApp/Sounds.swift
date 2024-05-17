import UIKit
import AVFoundation

protocol MusicPlayer {
    func playMusic()
    func stopMusic()
}

enum SoundType: String {
    case level, buza, dj, hajimei, chanchan, hakusyu, yahoo, buta, denwanai, denwanai2, goukaku, guaa1, guaa2, katana, kikku, nigeru, niwatori, nogoukaku, ushi, uwa1, washi, yagi, jan, money, ohoo, pafu, role, typewriter
}

class SoundPlayer: NSObject, MusicPlayer {
    let musicData: Data
    var musicPlayer: AVAudioPlayer!

    init(soundType: SoundType) {
        musicData = NSDataAsset(name: soundType.rawValue)!.data
        super.init()
    }

    func playMusic() {
        do {
            musicPlayer = try AVAudioPlayer(data: musicData)
            musicPlayer.play()
        } catch {
            print("\(error.localizedDescription)のエラー発生。音を流せません")
        }
    }

    func stopMusic() {
        musicPlayer?.stop()
    }
}
