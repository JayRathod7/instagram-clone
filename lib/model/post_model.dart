import '../strings.dart';

class PostModel {
  String? postPhoto;
  String? profilePhoto;
  String? profileName;
  String? profileNameLabel;
  bool? isMute;
  bool? isLike;
  int? likeCounter;
  int? viewCounter;

  PostModel(
      {this.isLike,
      this.isMute,
      this.likeCounter,
      this.postPhoto,
      this.profileName,
      this.profileNameLabel,
      this.profilePhoto,
      this.viewCounter});


}

class PostData{
  List<PostModel> dataList = [
    PostModel(
        isLike: true,
        likeCounter: 123654,
        profileName: "IronMan",
        postPhoto: Strings.post1,
        profilePhoto: Strings.image1),
    PostModel(
        isLike: true,
        likeCounter: 20023,
        profileName: "Thor",
        postPhoto: Strings.post2,
        profilePhoto: Strings.image2),
    PostModel(
        isLike: true,
        likeCounter: 24898,
        profileName: "Natasha Roman",
        postPhoto: Strings.post3,
        profilePhoto: Strings.image3),
    PostModel(
        isLike: true,
        likeCounter: 123654,
        profileName: "Scarlet witch",
        postPhoto: Strings.post4,
        profilePhoto: Strings.image4),
    PostModel(
        isLike: true,
        likeCounter: 96757,
        profileName: "client ",
        postPhoto: Strings.post5,
        profilePhoto: Strings.image5),
    PostModel(
        isLike: true,
        likeCounter: 888888,
        profileName: "Caption America",
        postPhoto: Strings.post6,
        profilePhoto: Strings.image6),
    PostModel(
        isLike: true,
        likeCounter: 123654,
        profileName: "IronMan",
        postPhoto: Strings.post1,
        profilePhoto: Strings.image1),
    PostModel(
        isLike: true,
        likeCounter: 20023,
        profileName: "Thor",
        postPhoto: Strings.post2,
        profilePhoto: Strings.image2),
    PostModel(
        isLike: true,
        likeCounter: 24898,
        profileName: "Natasha Roman",
        postPhoto: Strings.post3,
        profilePhoto: Strings.image3),
    PostModel(
        isLike: true,
        likeCounter: 123654,
        profileName: "Scarlet witch",
        postPhoto: Strings.post4,
        profilePhoto: Strings.image4),
    PostModel(
        isLike: true,
        likeCounter: 96757,
        profileName: "client ",
        postPhoto: Strings.post5,
        profilePhoto: Strings.image5),
    PostModel(
        isLike: true,
        likeCounter: 888888,
        profileName: "Caption America",
        postPhoto: Strings.post6,
        profilePhoto: Strings.image6),
    PostModel(
        isLike: true,
        likeCounter: 123654,
        profileName: "IronMan",
        postPhoto: Strings.post1,
        profilePhoto: Strings.image1),
    PostModel(
        isLike: true,
        likeCounter: 20023,
        profileName: "Thor",
        postPhoto: Strings.post2,
        profilePhoto: Strings.image2),
    PostModel(
        isLike: true,
        likeCounter: 24898,
        profileName: "Natasha Roman",
        postPhoto: Strings.post3,
        profilePhoto: Strings.image3),
    PostModel(
        isLike: true,
        likeCounter: 123654,
        profileName: "Scarlet witch",
        postPhoto: Strings.post4,
        profilePhoto: Strings.image4),
    PostModel(
        isLike: true,
        likeCounter: 96757,
        profileName: "client ",
        postPhoto: Strings.post5,
        profilePhoto: Strings.image5),
    PostModel(
        isLike: true,
        likeCounter: 888888,
        profileName: "Caption America",
        postPhoto: Strings.post6,
        profilePhoto: Strings.image6),
  ];
}
