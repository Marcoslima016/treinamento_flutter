import 'package:flutter/material.dart';

BottomNavigationBarItem barItem(IconData icon, titulo) {
  return BottomNavigationBarItem(
    icon: new Stack(
      children: <Widget>[
        //------------- ICONE -------------

        Center(
          child: Icon(
            icon,
            //color: Colors.grey.withOpacity(0.5),
          ),
        ),

        //------------- BADGE -------------
        // Badge(
        //   // bottomNavStore: store,
        //   titulo: titulo,
        // )
      ],
    ),

    //------------- TITULO -------------
    title: Text(
      titulo,
      // style: TextStyle(
      //   color: Colors.grey.withOpacity(0.5),
      // ),
    ),
  );
}

//============================= STATELESS BADGE =============================
class Badge extends StatelessWidget {
  Badge({
    this.titulo,
    // this.bottomNavStore,
  });

  var titulo = "";
  // BottomNavStore bottomNavStore = BottomNavStore();

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 0,
      child: new Container(
        padding: EdgeInsets.all(1),
        decoration: new BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(6),
        ),
        constraints: BoxConstraints(
          minWidth: 12,
          minHeight: 12,
        ),
        child: new Text(
          ' ',
          style: new TextStyle(
            color: Colors.white,
            fontSize: 8,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
