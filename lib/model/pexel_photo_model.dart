class PexelPhotosModel {
  String url;
  String photographer;
  String photographerUrl;
  int photographerId;
  SrcModel src;

  PexelPhotosModel(
      {this.url,
      this.photographer,
      this.photographerId,
      this.photographerUrl,
      this.src});

  factory PexelPhotosModel.fromMap(Map<String, dynamic> parsedJson) {
    return PexelPhotosModel(
        url: parsedJson["url"],
        photographer: parsedJson["photographer"],
        photographerId: parsedJson["photographer_id"],
        photographerUrl: parsedJson["photographer_url"],
        src: SrcModel.fromMap(parsedJson["src"]));
  }
}

class SrcModel {
  String portrait;
  String large;
  String landscape;
  String medium;
  String original;

  SrcModel(
      {this.portrait, this.landscape, this.large, this.medium, this.original});

  factory SrcModel.fromMap(Map<String, dynamic> srcJson) {
    return SrcModel(
        portrait: srcJson["portrait"],
        large: srcJson["large"],
        landscape: srcJson["landscape"],
        medium: srcJson["medium"],
        original: srcJson["original"]);
  }
}
