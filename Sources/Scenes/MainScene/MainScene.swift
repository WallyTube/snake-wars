import Scenes

class MainScene : Scene {

    let backgroundLayer = MainBackgroundLayer()
    let interactionLayer = MainInteractionLayer()
    let foregroundLayer = MainForegroundLayer()
    
    init() {
        super.init(name:"MainScene")
        insert(layer:backgroundLayer, at:.back)
        insert(layer:interactionLayer, at: .inFrontOf(object: backgroundLayer))
        insert(layer:foregroundLayer, at:.front)
    }

}