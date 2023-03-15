import Scenes

class MainScene : Scene {

    class GenericLayerWrapper : Layer {
        init(instance: RenderableEntity, registry: String) {
            super.init(name:"main-\(registry)")
            insert(entity:instance, at:.back)
        }
    }
    
    init() {
        super.init(name:"MainScene")
        insert(layer:GenericLayerWrapper(instance:MainBackground(), registry:"background"), at:.back)
        insert(layer:GenericLayerWrapper(instance:MainForeground(), registry:"foreground"), at:.front)
        insert(layer:GenericLayerWrapper(instance:MainInteraction(), registry:"interaction"), at:.front)
    }

}