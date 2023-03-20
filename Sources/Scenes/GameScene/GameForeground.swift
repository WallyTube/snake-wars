import Scenes
import Igis

class GameForeground : RenderableEntity {
    let text : Text

    init(layerInstance: Layer?) {

        text = Text(location:Point(x:50, y:50), text:"This is the game scene.")
        text.font = "30pt Ariel"

        super.init(name:"game-foreground")

    }

    override func setup(canvasSize:Size, canvas:Canvas) {
        canvas.render(text)
    }

}