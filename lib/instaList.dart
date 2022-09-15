import 'package:flutter/material.dart';
import 'package:instagramcloneflutter/instStories.dart';
class InstaList extends StatelessWidget {

final faces = [
  "https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
  "https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
  "https://images.pexels.com/photos/762020/pexels-photo-762020.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
  "https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
  "https://www.biography.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cg_face%2Cq_auto:good%2Cw_300/MTU0NDU2MTI2ODc4OTE3Njgy/hailee-steinfeld-visits-build-london-on-december-7-2017-in-london-england-photo-by-mike-marsland_mike-marsland_wireimage-square.jpg",
  "https://images.pexels.com/photos/943084/pexels-photo-943084.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"

];

final images = [
  "https://images.pexels.com/photos/160933/girl-rabbit-friendship-love-160933.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
  "https://media.istockphoto.com/photos/fitness-woman-listening-to-music-on-wireless-headphones-picture-id1194087257?s=612x612",
  "https://images.freeimages.com/images/large-previews/5e0/daisys-1392171.jpg",
  "https://media.istockphoto.com/photos/portrait-of-young-smiling-woman-face-partially-covered-with-flying-picture-id1297159365?s=612x612",
  "https://media.istockphoto.com/photos/young-woman-applying-cosmetic-white-cream-on-her-face-picture-id1300104968"
  "https://media.istockphoto.com/photos/portrait-of-small-girl-in-living-room-at-home-picture-id1352096257"

];

final names = [
  "rachel",
  "rebecca",
  "hannah",
  "Adela",
  "Alberta",
  "Agatha"
];

@override
Widget build(BuildContext context){
  return ListView.builder(
    itemCount: images.length,
    itemBuilder: (context,index) => index==0 ?SizedBox(
        child: InstaStories(),
        height: 100.0,
    ) : Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 35,
                    height: 35,
                    decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit:  BoxFit.fitHeight,
                        image: NetworkImage(faces[index]),)),
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Text(names[index],style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                  ),
                ],
              ),
              IconButton(
                  onPressed: () {

                  },
                  icon: Icon(Icons.more_vert)
              )
            ],
          ),
        ),
        Center(
          child: Flexible(
            fit: FlexFit.loose,
            child: Image(
              image: NetworkImage(images[index]),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children:  [
                  Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.favorite_border,
                      )),
                  Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.chat_bubble_outline,
                      )),
                  Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.send,
                      )),
                ],
              ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.bookmark_border),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children:  [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("270 Beğenme",
              style: TextStyle(fontWeight: FontWeight.bold),),
            ),

          ],
        ),
        Padding(
          padding:  EdgeInsets.only(left: 5.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start ,
                children: [
                Text("${names[index].toString()}: "),
              ],),
              Text("Lorem Ipsum ")
            ],
          ),
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget> [
            Padding(
              padding: EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
              child: Container(
                width: 25.0,
                height: 25.0,
                decoration:  BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            "https://www.biography.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cg_face%2Cq_auto:good%2Cw_300/MTU0NDU2MTI2ODc4OTE3Njgy/hailee-steinfeld-visits-build-london-on-december-7-2017-in-london-england-photo-by-mike-marsland_mike-marsland_wireimage-square.jpg"))),
              ),
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Yorum Ekle.."
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Column(
              children: [
                Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text(
                      '1 Saat önce',
                      style: TextStyle(color: Colors.grey),
                    )),
              ],
            ),
          ],
        ),

      ],

    ),
  );

}


}