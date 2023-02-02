import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Profile extends StatelessWidget {
  const Profile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) => ListView(
        physics: BouncingScrollPhysics(),
        children: [
          SizedBox(
            height: 30,
          ),
          buildProfile(context),
        ],
      );
  // Widget buildPhotos(BuildContext context) => Container(
  //       padding: EdgeInsets.symmetric(horizontal: 12),
  //       child: Column(
  //         children: [
  //           Align(
  //             alignment: Alignment.centerLeft,
  //             child: Text(
  //               'PHOTOS',
  //               style: TextStyle(
  //                 color: Theme.of(context).iconTheme.color,
  //                 fontSize: 16,
  //                 fontWeight: FontWeight.bold,
  //               ),
  //             ),
  //           ),
  //           SizedBox(height: 12),

  //         ],
  //       ),
  //     );

  // Widget buildPhotoGrid() => StaggeredGridView.countBuilder(
  //       primary: false,
  //       shrinkWrap: true,
  //       crossAxisCount: 4,
  //       mainAxisSpacing: 8,
  //       crossAxisSpacing: 8,
  //       itemCount: 8,
  //       itemBuilder: (BuildContext context, int index) {
  //         final urlImage = 'https://source.unsplash.com/random?sig=$index';

  //         return Container(
  //           decoration: BoxDecoration(
  //             borderRadius: BorderRadius.circular(10),
  //             image: DecorationImage(
  //               image: NetworkImage(urlImage),
  //               fit: BoxFit.cover,
  //             ),
  //           ),
  //         );
  //       },
  //       staggeredTileBuilder: (int index) =>
  //           StaggeredTile.count(2, index.isEven ? 2 : 1),
  //     );
  Widget buildProfile(BuildContext context) => Column(
        children: [
          SizedBox(height: 20),
          CircleAvatar(
            radius: 46,
            backgroundColor: Theme.of(context).iconTheme.color,
            child: CircleAvatar(
              radius: 44,
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/user.jpg'),
                radius: 40,
              ),
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Nandani Patel',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.location_on),
              const SizedBox(width: 4),
              Text('Ahmedabad GJ India'),
            ],
          ),
          SizedBox(height: 16),
          Text('Developer developing features...'),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              buildCounters(context, '5', 'Events'),
              buildCounters(context, '3.5K', 'Following'),
              buildCounters(context, '15K', 'Followers'),
            ],
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Theme.of(context).iconTheme.color,
                    width: 0.25,
                  ),
                ),
                child: Row(
                  children: [
                    Icon(Icons.person_add),
                    SizedBox(width: 8),
                    Text(
                      'Follow',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Theme.of(context).iconTheme.color,
                    width: 0.25,
                  ),
                ),
                child: Row(
                  children: [
                    Icon(Icons.message),
                    SizedBox(width: 8),
                    Text(
                      'Message',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      );

  Widget buildCounters(context, String firstLine, String secondLine) => Column(
        children: [
          Text(
            firstLine,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Text(secondLine),
        ],
      );
}
