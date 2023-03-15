import Scenes

class GameBackgroundLayer : Layer {

    let background = GameBackground()
    
    init() {
        super.init(name:"game-background")
        insert(entity:background, at:.back)
    }
    
}