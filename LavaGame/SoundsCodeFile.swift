//
//  SoundsCodeFile.swift
//  LavaGame
//
//  Created by saba on 20/06/1444 AH.
//

import SwiftUI
import AVKit


class SoundManager {
    static let instance = SoundManager()
    
    var player: AVAudioPlayer?
    // ? means optional and its typ e audio player
    
    enum soundOption : String {
        case  Watersound
        case  Sparklesound
        case  beeb10seconds
        case Helium
        case fire
        case woosh
        case Kidsmusic
        case LetsPlayTogethersound
        case Getoffthefloor
        case whenisaydance
        case nowletsdance
        case ilikeyourmove
        case LetsDancePagesound
        case allthesong
        case allsong
    }
    //هذي الاينوم تاخذ اكثر من اوبشن وعلى حسب الماخوذ تشغله كانها لسته
    
    func playSound(sound : soundOption ) {
        //هذي الفنكشن سويتها تاخذ الاصوات من البندل بعدين تشغلهم
        guard let url = Bundle.main.url(forResource: sound.rawValue , withExtension: ".mp3")
                
                //file name then file extetion
        else { return }
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        }
        catch let error {
            print("Error playing sound\(error.localizedDescription)")
            
            
        }
        
    }
    
}
//acess sound through all app through this instance
//initisliez sengelton o use this on all veiws insted of using it in this view only
struct SoundsCodeFile: View {
    
    var soundManager = SoundManager()
    
    var body: some View {
        VStack{
            Button("Play sound 1"){
                SoundManager.instance.playSound(sound: .Sparklesound)
                //trhough instnce i acn access the class all
            }.foregroundColor(.red)
            Button("Play sound 2"){
                SoundManager.instance.playSound(sound: .Helium)
            }.foregroundColor(.red)
        }
    }
}

struct SoundsCodeFile_Previews: PreviewProvider {
    static var previews: some View {
        SoundsCodeFile()
    }
}
