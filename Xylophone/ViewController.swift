import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        var buttonName: String = sender.currentTitle!
        playSound(ButtonName: buttonName)
    }
    
    func playSound(ButtonName : String) {
        let url = Bundle.main.url(forResource: ButtonName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}
