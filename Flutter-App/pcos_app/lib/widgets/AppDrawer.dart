import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pcos_app/homepage.dart';
class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Drawer(
      child: Column(
        children: [
          Expanded(
            flex: 5,
            child: DrawerHeader(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 5,
                    child: Container(
                      height: 90,
                      width: 130,
                      child: CircleAvatar(
                        radius: 80,
                        backgroundImage: AssetImage("assets/images/profile.jpg"),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 2.0),
                      child: Text("Sakshi Oswal",
                        style: TextStyle(fontFamily: 'SegoeUI-Bold',fontSize: 25,fontWeight: FontWeight.bold,decoration: TextDecoration.none),

                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 3.0),
                      child: Text("@sakshi_17", textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 12,decoration: TextDecoration.none),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 10,

            child: ListView(
              children: [
                DrawerListItem(icon: Icons.home,title: "Home", id : HomePage.id,
                ),
                DrawerListItem(icon: Icons.assignment_ind , title: "Health Profile", id: null,
                ),
                DrawerListItem(icon: Icons.info_outline,title: "About Us", id : null,
                ),
                DrawerListItem(icon: Icons.exit_to_app,title: "Log Out", id : null,
                ),

              ],
            ),
          ),

        ],
      ),


    );
  }
}
class DrawerListItem extends StatelessWidget {
  final IconData icon;
  final String id;
  final String title;
  DrawerListItem({@required this.icon, @required this.id, @required this.title});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon,color: Colors.blue,),
      title: Text(title),
    );
  }
}


//class DrawerListItem extends StatelessWidget {
//  final IconData icon;
//  final String id;
//  final String title;
//  DrawerListItem({@required this.icon, @required this.id, @required this.title});
//  @override
//  Widget build(BuildContext context) {
//    return ListTile(
//      leading: Icon(icon),
//      title: Text(title),
//      onTap: (){
//        Navigator.of(context).pop();
//        print(id);
//        if(id == Login.id)
//        {
//          setLoginStatus(false);
//          Navigator.of(context).pushNamedAndRemoveUntil(id, (route) => false);
//          print("heello");
//          return;
//        }
//        bool currentRouteIsHome = false;
//        bool currentRouteIsNewRoute = false;
//
//        Navigator.popUntil(context, (currentRoute) {
//          // This is just a way to access currentRoute; the top route in the
//          // Navigator stack.
//          if (currentRoute.settings.name ==   HomePage.id ) {
//            currentRouteIsHome = true;
//          }
//          if (currentRoute.settings.name == id ) {
//            currentRouteIsNewRoute = true;
//          }
//
//          // Return true so popUntil() pops nothing.
//          return true;
//        });
//
//        // Switch screen
//        if (!currentRouteIsNewRoute) {
//          // Only switch screen if new route is different from current route.
//          if (currentRouteIsHome) {
//            // Navigate from home to non-home screen.
//            Navigator.pushNamed(context, id);
//          } else {
//            if ( id == HomePage.id) {
//              // Navigate from non-home screen to home.
//              Navigator.pop(context);
//            } else {
//              // Navigate from non-home screen to non-home screen.
//              Navigator.popAndPushNamed(context, id);
//            }
//          }
//        }
//
//      },
//    );
//  }
//
//
//}

