import Scenes

class MainScene : Scene {

    let backgroundLayer = BackgroundLayer()
    let interactionLayer = InteractionLayer()
    let foregroundLayer = ForegroundLayer()
    
    init() {
        super.init(name:"GameScene")
        insert(layer:backgroundLayer, at:.back)
        insert(layer:interactionLayer, at: .inFrontOf(object: backgroundLayer))
        insert(layer:foregroundLayer, at:.front)
    }

}