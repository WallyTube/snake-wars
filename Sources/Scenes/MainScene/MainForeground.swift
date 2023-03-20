import Scenes
import Igis

class MainForeground : RenderableEntity {
    let text : Text

    init() {

        text = Text(location:Point(x:50, y:50), text:"AAAAAAAAAAAAAAA")

        super.init(name:"main-foreground")

    }

    override func setup(canvasSize:Size, canvas:Canvas) {
        canvas.render(text)
    }

}