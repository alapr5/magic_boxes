part of magic_boxes;

class PngPanel {

final Board board;

  ImageElement modelImage;
  ButtonElement fromModelToPngButton;
  ButtonElement clearButton;

  PngPanel(this.board) {
    modelImage = document.query('#modelImage');
    fromModelToPngButton = document.query('#fromModelToPng');
    fromModelToPngButton.onClick.listen((MouseEvent e) {
      modelImage.src = board.canvas.toDataUrl("image/png");
      show();
    });
    clearButton = document.query('#clearImage');
    clearButton.onClick.listen((MouseEvent e) {
      hide();
    });
  }

  void hide() {
    modelImage.hidden = true;
  }

  void show() {
    modelImage.hidden = false;
  }

}
