//
//  SoundPlayer.swift
//  WooHooApp
//
//  Created by 櫻井絵理香 on 2024/05/16.
//

import UIKit
import AVFoundation

class SoundPlayer: NSObject {

    let music_data=NSDataAsset(name: "level")!.data   // 音源の指定
    var music_player:AVAudioPlayer!

    // 音楽を再生
    func musicPlayer(){

        do{
            music_player=try AVAudioPlayer(data:music_data)   // 音楽を指定
            music_player.play()   // 音楽再生
        }catch{
            print("エラー発生.音を流せません")
        }

    }

    // 音楽を停止
    func stopAllMusic (){
        music_player?.stop()
    }
}

