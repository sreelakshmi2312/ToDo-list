class Tasks{
  final String title;
  bool checkBoxstate;
  Tasks({required this.title , this.checkBoxstate=false});
  void ToggleDone(){
    checkBoxstate=!checkBoxstate;
  }
}
