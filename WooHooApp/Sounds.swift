//
//  SoundPlayer.swift
//  WooHooApp
//
//  Created by 櫻井絵理香 on 2024/05/16.
//

import UIKit
import AVFoundation

class LevelSound: NSObject {

    let music_data=NSDataAsset(name: "level")!.data   // 音源の指定
    var music_player:AVAudioPlayer!

    // 音楽を再生
    func musicPlayer(){

        do{
            music_player=try AVAudioPlayer(data:music_data)   // 音楽を指定
            music_player.play()   // 音楽再生
        }catch{
            print("レベルアップのエラー発生.音を流せません")
        }

    }

    // 音楽を停止
    func stopAllMusic (){
        music_player?.stop()
    }
}

class BuzaSound: NSObject {

    let music_data=NSDataAsset(name: "buza")!.data   // 音源の指定
    var music_player:AVAudioPlayer!

    // 音楽を再生
    func musicPlayer(){

        do{
            music_player=try AVAudioPlayer(data:music_data)   // 音楽を指定
            music_player.play()   // 音楽再生
        }catch{
            print("ブザーのエラー発生.音を流せません")
        }

    }

    // 音楽を停止
    func stopAllMusic (){
        music_player?.stop()
    }
}

class DjSound: NSObject {

    let music_data=NSDataAsset(name: "dj")!.data   // 音源の指定
    var music_player:AVAudioPlayer!

    // 音楽を再生
    func musicPlayer(){

        do{
            music_player=try AVAudioPlayer(data:music_data)   // 音楽を指定
            music_player.play()   // 音楽再生
        }catch{
            print("DJのエラー発生.音を流せません")
        }

    }

    // 音楽を停止
    func stopAllMusic (){
        music_player?.stop()
    }
}

class HajimeiSound: NSObject {

    let music_data=NSDataAsset(name: "hajimei")!.data   // 音源の指定
    var music_player:AVAudioPlayer!

    // 音楽を再生
    func musicPlayer(){

        do{
            music_player=try AVAudioPlayer(data:music_data)   // 音楽を指定
            music_player.play()   // 音楽再生
        }catch{
            print("Hajimeiのエラー発生.音を流せません")
        }

    }

    // 音楽を停止
    func stopAllMusic (){
        music_player?.stop()
    }
}

class ChanchanSound: NSObject {

    let music_data=NSDataAsset(name: "buza")!.data   // 音源の指定
    var music_player:AVAudioPlayer!

    // 音楽を再生
    func musicPlayer(){

        do{
            music_player=try AVAudioPlayer(data:music_data)   // 音楽を指定
            music_player.play()   // 音楽再生
        }catch{
            print("Chanchanブザーのエラー発生.音を流せません")
        }

    }

    // 音楽を停止
    func stopAllMusic (){
        music_player?.stop()
    }
}

class HakusyuSound: NSObject {

    let music_data=NSDataAsset(name: "buza")!.data   // 音源の指定
    var music_player:AVAudioPlayer!

    // 音楽を再生
    func musicPlayer(){

        do{
            music_player=try AVAudioPlayer(data:music_data)   // 音楽を指定
            music_player.play()   // 音楽再生
        }catch{
            print("Hakusyuブザーのエラー発生.音を流せません")
        }

    }

    // 音楽を停止
    func stopAllMusic (){
        music_player?.stop()
    }
}

class YahooSound: NSObject {

    let music_data=NSDataAsset(name: "buza")!.data   // 音源の指定
    var music_player:AVAudioPlayer!

    // 音楽を再生
    func musicPlayer(){

        do{
            music_player=try AVAudioPlayer(data:music_data)   // 音楽を指定
            music_player.play()   // 音楽再生
        }catch{
            print("yahooブザーのエラー発生.音を流せません")
        }

    }

    // 音楽を停止
    func stopAllMusic (){
        music_player?.stop()
    }
}

class ButaSound: NSObject {

    let music_data=NSDataAsset(name: "buza")!.data   // 音源の指定
    var music_player:AVAudioPlayer!

    // 音楽を再生
    func musicPlayer(){

        do{
            music_player=try AVAudioPlayer(data:music_data)   // 音楽を指定
            music_player.play()   // 音楽再生
        }catch{
            print("ブザーのエラー発生.音を流せません")
        }

    }

    // 音楽を停止
    func stopAllMusic (){
        music_player?.stop()
    }
}

class DenwanaiSound: NSObject {

    let music_data=NSDataAsset(name: "buza")!.data   // 音源の指定
    var music_player:AVAudioPlayer!

    // 音楽を再生
    func musicPlayer(){

        do{
            music_player=try AVAudioPlayer(data:music_data)   // 音楽を指定
            music_player.play()   // 音楽再生
        }catch{
            print("denwanaiブザーのエラー発生.音を流せません")
        }

    }

    // 音楽を停止
    func stopAllMusic (){
        music_player?.stop()
    }
}

class Denwanai2Sound: NSObject {

    let music_data=NSDataAsset(name: "buza")!.data   // 音源の指定
    var music_player:AVAudioPlayer!

    // 音楽を再生
    func musicPlayer(){

        do{
            music_player=try AVAudioPlayer(data:music_data)   // 音楽を指定
            music_player.play()   // 音楽再生
        }catch{
            print("denwanai2ブザーのエラー発生.音を流せません")
        }

    }

    // 音楽を停止
    func stopAllMusic (){
        music_player?.stop()
    }
}

class GoukakuSound: NSObject {

    let music_data=NSDataAsset(name: "buza")!.data   // 音源の指定
    var music_player:AVAudioPlayer!

    // 音楽を再生
    func musicPlayer(){

        do{
            music_player=try AVAudioPlayer(data:music_data)   // 音楽を指定
            music_player.play()   // 音楽再生
        }catch{
            print("ブザーのエラー発生.音を流せません")
        }

    }

    // 音楽を停止
    func stopAllMusic (){
        music_player?.stop()
    }
}

class Guaa1Sound: NSObject {

    let music_data=NSDataAsset(name: "buza")!.data   // 音源の指定
    var music_player:AVAudioPlayer!

    // 音楽を再生
    func musicPlayer(){

        do{
            music_player=try AVAudioPlayer(data:music_data)   // 音楽を指定
            music_player.play()   // 音楽再生
        }catch{
            print("ブザーのエラー発生.音を流せません")
        }

    }

    // 音楽を停止
    func stopAllMusic (){
        music_player?.stop()
    }
}

class Guaa2Sound: NSObject {

    let music_data=NSDataAsset(name: "buza")!.data   // 音源の指定
    var music_player:AVAudioPlayer!

    // 音楽を再生
    func musicPlayer(){

        do{
            music_player=try AVAudioPlayer(data:music_data)   // 音楽を指定
            music_player.play()   // 音楽再生
        }catch{
            print("ブザーのエラー発生.音を流せません")
        }

    }

    // 音楽を停止
    func stopAllMusic (){
        music_player?.stop()
    }
}

class KatanaSound: NSObject {

    let music_data=NSDataAsset(name: "buza")!.data   // 音源の指定
    var music_player:AVAudioPlayer!

    // 音楽を再生
    func musicPlayer(){

        do{
            music_player=try AVAudioPlayer(data:music_data)   // 音楽を指定
            music_player.play()   // 音楽再生
        }catch{
            print("ブザーのエラー発生.音を流せません")
        }

    }

    // 音楽を停止
    func stopAllMusic (){
        music_player?.stop()
    }
}

class KikkuSound: NSObject {

    let music_data=NSDataAsset(name: "buza")!.data   // 音源の指定
    var music_player:AVAudioPlayer!

    // 音楽を再生
    func musicPlayer(){

        do{
            music_player=try AVAudioPlayer(data:music_data)   // 音楽を指定
            music_player.play()   // 音楽再生
        }catch{
            print("ブザーのエラー発生.音を流せません")
        }

    }

    // 音楽を停止
    func stopAllMusic (){
        music_player?.stop()
    }
}

class NigeruSound: NSObject {

    let music_data=NSDataAsset(name: "buza")!.data   // 音源の指定
    var music_player:AVAudioPlayer!

    // 音楽を再生
    func musicPlayer(){

        do{
            music_player=try AVAudioPlayer(data:music_data)   // 音楽を指定
            music_player.play()   // 音楽再生
        }catch{
            print("ブザーのエラー発生.音を流せません")
        }

    }

    // 音楽を停止
    func stopAllMusic (){
        music_player?.stop()
    }
}

class NiwatoriSound: NSObject {

    let music_data=NSDataAsset(name: "buza")!.data   // 音源の指定
    var music_player:AVAudioPlayer!

    // 音楽を再生
    func musicPlayer(){

        do{
            music_player=try AVAudioPlayer(data:music_data)   // 音楽を指定
            music_player.play()   // 音楽再生
        }catch{
            print("ブザーのエラー発生.音を流せません")
        }

    }

    // 音楽を停止
    func stopAllMusic (){
        music_player?.stop()
    }
}

class NogoukakuSound: NSObject {

    let music_data=NSDataAsset(name: "buza")!.data   // 音源の指定
    var music_player:AVAudioPlayer!

    // 音楽を再生
    func musicPlayer(){

        do{
            music_player=try AVAudioPlayer(data:music_data)   // 音楽を指定
            music_player.play()   // 音楽再生
        }catch{
            print("ブザーのエラー発生.音を流せません")
        }

    }

    // 音楽を停止
    func stopAllMusic (){
        music_player?.stop()
    }
}

class UshiSound: NSObject {

    let music_data=NSDataAsset(name: "buza")!.data   // 音源の指定
    var music_player:AVAudioPlayer!

    // 音楽を再生
    func musicPlayer(){

        do{
            music_player=try AVAudioPlayer(data:music_data)   // 音楽を指定
            music_player.play()   // 音楽再生
        }catch{
            print("ブザーのエラー発生.音を流せません")
        }

    }

    // 音楽を停止
    func stopAllMusic (){
        music_player?.stop()
    }
}

class Uwa1Sound: NSObject {

    let music_data=NSDataAsset(name: "buza")!.data   // 音源の指定
    var music_player:AVAudioPlayer!

    // 音楽を再生
    func musicPlayer(){

        do{
            music_player=try AVAudioPlayer(data:music_data)   // 音楽を指定
            music_player.play()   // 音楽再生
        }catch{
            print("ブザーのエラー発生.音を流せません")
        }

    }

    // 音楽を停止
    func stopAllMusic (){
        music_player?.stop()
    }
}

class WashiSound: NSObject {

    let music_data=NSDataAsset(name: "buza")!.data   // 音源の指定
    var music_player:AVAudioPlayer!

    // 音楽を再生
    func musicPlayer(){

        do{
            music_player=try AVAudioPlayer(data:music_data)   // 音楽を指定
            music_player.play()   // 音楽再生
        }catch{
            print("ブザーのエラー発生.音を流せません")
        }

    }

    // 音楽を停止
    func stopAllMusic (){
        music_player?.stop()
    }
}

class YagiSound: NSObject {

    let music_data=NSDataAsset(name: "buza")!.data   // 音源の指定
    var music_player:AVAudioPlayer!

    // 音楽を再生
    func musicPlayer(){

        do{
            music_player=try AVAudioPlayer(data:music_data)   // 音楽を指定
            music_player.play()   // 音楽再生
        }catch{
            print("ブザーのエラー発生.音を流せません")
        }

    }

    // 音楽を停止
    func stopAllMusic (){
        music_player?.stop()
    }
}

class JanSound: NSObject {

    let music_data=NSDataAsset(name: "buza")!.data   // 音源の指定
    var music_player:AVAudioPlayer!

    // 音楽を再生
    func musicPlayer(){

        do{
            music_player=try AVAudioPlayer(data:music_data)   // 音楽を指定
            music_player.play()   // 音楽再生
        }catch{
            print("ブザーのエラー発生.音を流せません")
        }

    }

    // 音楽を停止
    func stopAllMusic (){
        music_player?.stop()
    }
}

class MoneySound: NSObject {

    let music_data=NSDataAsset(name: "buza")!.data   // 音源の指定
    var music_player:AVAudioPlayer!

    // 音楽を再生
    func musicPlayer(){

        do{
            music_player=try AVAudioPlayer(data:music_data)   // 音楽を指定
            music_player.play()   // 音楽再生
        }catch{
            print("ブザーのエラー発生.音を流せません")
        }

    }

    // 音楽を停止
    func stopAllMusic (){
        music_player?.stop()
    }
}

class OhooSound: NSObject {

    let music_data=NSDataAsset(name: "buza")!.data   // 音源の指定
    var music_player:AVAudioPlayer!

    // 音楽を再生
    func musicPlayer(){

        do{
            music_player=try AVAudioPlayer(data:music_data)   // 音楽を指定
            music_player.play()   // 音楽再生
        }catch{
            print("ブザーのエラー発生.音を流せません")
        }

    }

    // 音楽を停止
    func stopAllMusic (){
        music_player?.stop()
    }
}

class PafuSound: NSObject {

    let music_data=NSDataAsset(name: "buza")!.data   // 音源の指定
    var music_player:AVAudioPlayer!

    // 音楽を再生
    func musicPlayer(){

        do{
            music_player=try AVAudioPlayer(data:music_data)   // 音楽を指定
            music_player.play()   // 音楽再生
        }catch{
            print("ブザーのエラー発生.音を流せません")
        }

    }

    // 音楽を停止
    func stopAllMusic (){
        music_player?.stop()
    }
}

class RoleSound: NSObject {

    let music_data=NSDataAsset(name: "buza")!.data   // 音源の指定
    var music_player:AVAudioPlayer!

    // 音楽を再生
    func musicPlayer(){

        do{
            music_player=try AVAudioPlayer(data:music_data)   // 音楽を指定
            music_player.play()   // 音楽再生
        }catch{
            print("ブザーのエラー発生.音を流せません")
        }

    }

    // 音楽を停止
    func stopAllMusic (){
        music_player?.stop()
    }
}

class TypeWriterSound: NSObject {

    let music_data=NSDataAsset(name: "buza")!.data   // 音源の指定
    var music_player:AVAudioPlayer!

    // 音楽を再生
    func musicPlayer(){

        do{
            music_player=try AVAudioPlayer(data:music_data)   // 音楽を指定
            music_player.play()   // 音楽再生
        }catch{
            print("ブザーのエラー発生.音を流せません")
        }

    }

    // 音楽を停止
    func stopAllMusic (){
        music_player?.stop()
    }
}
