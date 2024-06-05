void main() {
  Tiktok t1 = Tiktok('Tiktok');
  Youtube y1 = Youtube('Youtube');

  t1.commentVideos();
  t1.dragDownForNextShort();
  t1.followAccount();
  y1.dragDownForNextShort();
  y1.likedVideos();
  y1.searchedVideos();
}

class Application {
  String name = '';
  Application(this.name);
  void searchedpersonChannel() {
    print('You are seaching person channel in $name');
  }

  void shortVideos() {
    print('You are watching short videos in $name');
  }

  void likedVideos() {
    print('You liked videos in $name');
  }

  void sharedVideos() {
    print('You shared videos in $name');
  }

  void commentVideos() {
    print('You commented videos in $name');
  }

  void dragDownForNextShort() {
    print('Drag down to wath next short in $name');
  }
}

class Youtube extends Application {
  Youtube(super.name);
  void searchedVideos() {
    print('You are searching videos in $name');
  }

  void subcribedChannels() {
    print('You subribed channel in $name');
  }
}

class Tiktok extends Application {
  Tiktok(super.name);
  void followAccount() {
    print('You follow account in $name');
  }
}
