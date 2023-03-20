import Scenes
import Igis
import ScenesControls

class GameInteraction : RenderableEntity {

    init(layerInstance: Layer?) {

        super.init(name:"game-interaction")
        guard let layer = layerInstance else {
            return
        }

        let switchSceneButton = Button(name: "switchScene-Main", labelString: "Switch To Main Scene", topLeft: Point(x: 50, y: 100))
        switchSceneButton.clickHandler = { (control: Control, location: Point) in
            layer.director.enqueueScene(scene: MainScene())
            layer.director.transitionToNextScene()
        }

        layer.insert(entity: switchSceneButton, at: .front)

    }

    override func setup(canvasSize:Size, canvas:Canvas) {
    }

}