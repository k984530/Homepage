class Projects {
  int ImgNum = 1;
  String ImgAddr = 'assets/projects/img';
  String fullAddr = 'assets/projects/img1.png';
  void ReturnImgAddr() {
    ImgNum++;
    if (ImgNum > 34) {
      ImgNum = 1;
    }
    fullAddr = ImgAddr + ImgNum.toString() + '.png';
  }
}
