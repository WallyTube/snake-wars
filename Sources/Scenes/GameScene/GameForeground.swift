import Scenes
import Igis

class GameBackground : RenderableEntity {
    let text : Text

    init() {

        text = Text(location:Point(x:50, y:50), text:"Leo should gimme a kiss.")
        text.font = "30pt Ariel"

        super.init(name:"main-foreground")

    }

    override func setup(canvasSize:Size, canvas:Canvas) {
        canvas.render(text)
    }

}