import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallpaperapp/controller/pexel_image_controller.dart';
import 'package:wallpaperapp/model/pexel_photo_model.dart';
import 'package:wallpaperapp/screens/wallpaper/full_screen_wallpaper.dart';
import 'package:wallpaperapp/services/pexels_remote_service.dart';
import 'package:cached_network_image/cached_network_image.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  final PexelsImageController pexelsImageController =
      Get.put(PexelsImageController());

  TabController _tabController;
  final List<Tab> myTabs = <Tab>[
    Tab(
      icon: Icon(Icons.image),
    ),
    Tab(
      icon: Icon(FontAwesomeIcons.borderAll),
    ),
    Tab(icon: Icon(FontAwesomeIcons.images)),
  ];

  // final PexelRemoteService pexelRemoteService = PexelRemoteService();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 3);
    PexelRemoteService.getCategorieWallpaper(category: "mountain");
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
        title: Text(
          "Wallpaper App",
          style: GoogleFonts.montserrat(
            // ignore: deprecated_member_use
            color: Theme.of(context).textTheme.headline1.color,
            fontSize: 24.0,
          ),
        ),
        centerTitle: true,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.grid_view))],
        bottom: TabBar(
          // ignore: deprecated_member_use
          indicatorColor: Theme.of(context).accentColor,
          indicatorWeight: 1.0,
          indicatorPadding: EdgeInsets.symmetric(horizontal: 20.0),
          indicatorSize: TabBarIndicatorSize.tab,

          onTap: (int index) {
            switch (index) {
            }
          },
          controller: _tabController,
          tabs: myTabs,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          SingleChildScrollView(
            primary: false,
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                SizedBox(height: 8.0),
                // CarouselSlider(
                //   items: <Widget>[
                //     Container(
                //         decoration: BoxDecoration(
                //       image: DecorationImage(
                //           fit: BoxFit.cover,
                //           image: NetworkImage(
                //               "https://images.pexels.com/photos/545008/pexels-photo-545008.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500")),
                //       borderRadius: BorderRadius.circular(30.0),
                //     )),
                //     Container(
                //         decoration: BoxDecoration(
                //       image: DecorationImage(
                //           fit: BoxFit.cover,
                //           image: NetworkImage(
                //               "https://images.pexels.com/photos/34950/pexels-photo.jpg?auto=compress&cs=tinysrgb&dpr=2&w=500")),
                //       borderRadius: BorderRadius.circular(30.0),
                //     )),
                //     Container(
                //         decoration: BoxDecoration(
                //       image: DecorationImage(
                //           fit: BoxFit.cover,
                //           image: NetworkImage(
                //               "https://images.pexels.com/photos/466685/pexels-photo-466685.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500")),
                //       borderRadius: BorderRadius.circular(30.0),
                //     )),
                //   ],
                //   options: CarouselOptions(
                //     autoPlay: true,
                //     enlargeCenterPage: true,
                //     viewportFraction: 0.8,
                //     aspectRatio: 2.0,
                //     initialPage: 2,
                //   ),
                // ),
                PexelsWallpaper(pexelsImageController: pexelsImageController),
              ],
            ),
          ),
          Center(
            child: Text("1"),
          ),
          Center(
            child: Text("2"),
          ),
        ],
      ),
    );
  }
}

class PexelsWallpaper extends StatelessWidget {
  const PexelsWallpaper({
    Key key,
    @required this.pexelsImageController,
  }) : super(key: key);

  final PexelsImageController pexelsImageController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AnimationLimiter(
        child: Obx(() {
          return GridView.builder(
            itemCount: pexelsImageController.imageList.length,
            shrinkWrap: true,
            primary: false,
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 3 / 4.5,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
            ),
            itemBuilder: (BuildContext context, int index) {
              PexelPhotosModel pexelPhotosModel =
                  pexelsImageController.imageList[index];
              return AnimationConfiguration.staggeredGrid(
                position: index,
                columnCount: pexelsImageController.imageList.length,
                child: ScaleAnimation(
                  child: FadeInAnimation(
                    child: GestureDetector(
                      onTap: () {
                        Get.to(() => FullScreenWallpaper(
                            imageUrl: pexelPhotosModel.src.original));
                      },
                      child: CachedNetworkImage(
                        imageUrl: pexelPhotosModel.src.portrait,
                        imageBuilder: (context, imageProvider) => Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                            image: DecorationImage(
                              image: imageProvider,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        placeholder: (context, url) =>
                            Center(child: CircularProgressIndicator()),
                        errorWidget: (context, url, error) => Icon(Icons.error),
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        }),
      ),
    );
  }
}
