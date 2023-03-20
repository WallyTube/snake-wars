import Scenes

class GameScene : Scene {

    class GenericLayerWrapper : Layer {
        var instance : RenderableEntity
        init(instance: RenderableEntity, registry: String) {
            self.instance = instance
            super.init(name:"game-\(registry)")
            insert(entity:instance, at:.back)
        }
    }

    var backgroundLayer: GenericLayerWrapper
    var foregroundLayer: GenericLayerWrapper
    var interactionLayer: GenericLayerWrapper

    init() {

        // Create the GenericLayerWrapper with an empty instance
        backgroundLayer = GenericLayerWrapper(instance: GameBackground(layerInstance: nil), registry: "background")
        foregroundLayer = GenericLayerWrapper(instance: GameForeground(layerInstance: nil), registry: "foreground")
        interactionLayer = GenericLayerWrapper(instance: GameInteraction(layerInstance: nil), registry: "interaction")
        
        // Change the instance to pass the parent class through.
        backgroundLayer.instance = GameBackground(layerInstance: backgroundLayer)
        foregroundLayer.instance = GameForeground(layerInstance: foregroundLayer)
        interactionLayer.instance = GameInteraction(layerInstance: interactionLayer)

        super.init(name: "GameScene")

        // Insert layer into Scene.
        insert(layer: backgroundLayer, at:.back)
        insert(layer: foregroundLayer, at:.front)
        insert(layer: interactionLayer, at:.front)
        
    }

}