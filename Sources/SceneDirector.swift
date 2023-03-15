import Igis
import Scenes

class ShellDirector : Director {
    required init() {
        super.init()
        enqueueScene(scene:GameScene())
    }
    override func framesPerSecond() -> Int {
        return 60
    }
}