import Scenes

class GameScene : Scene {

    class GenericLayerWrapper : Layer {
        init(instance: RenderableEntity, registry: String) {
            super.init(name:"game-\(registry)")
            insert(entity:instance, at:.back)
        }
    }
    
    init() {
        super.init(name:"GameScene")
        insert(layer:GenericLayerWrapper(instance:GameBackground(), registry:"background"), at:.back)
        insert(layer:GenericLayerWrapper(instance:GameForeground(), registry:"foreground"), at:.front)
        insert(layer:GenericLayerWrapper(instance:GameInteraction(), registry:"interaction"), at:.front)
    }

}