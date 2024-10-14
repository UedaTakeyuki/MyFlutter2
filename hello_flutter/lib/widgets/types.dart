import 'package:flutter/material.dart';
import 'package:hello_flutter/data/effectiveness.dart';
import 'package:hello_flutter/data/type_color.dart';
import 'package:hello_flutter/data/type_id.dart';
import 'package:hello_flutter/data/type_name.dart';


class Types extends StatefulWidget {
  @override
  _TypesState createState() => _TypesState();
}

class _TypesState extends State<Types> {

  String _selectedId = "Normal";

/*
  List<Widget> _getSupperEffectives(){
    List<Widget> list = new List<Widget>();
    list.add(new Text("効果はばつぐん！の技"));
    final typeList = effectiveness["suppereffective"][_selectedId];
    for (var i = 0; i < typeList.length; i++){
      var typeIdStr = typeList[i];
      var typeIdNum = TypeId.s2n(typeIdStr);
      list.add(new FlatButton(
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        color: type_color[typeIdNum],
        child: Text(type_name["ja"][TypeId.n2s(typeIdNum)]),
        onPressed: () {setState(() {
          _selectedId = TypeId.n2s(typeIdNum);
        });},
      ));
    }
    return list;
  }
*/
  Widget _getSupperEffectives(){
    List<Widget> list = [];//new List<Widget>();
//    list.add(new Text("効果はばつぐん！の技"));
    final typeList = ((effectiveness["suppereffective"] ?? {})[_selectedId] ?? []);
    for (var i = 0; i < typeList.length; i++){
      var typeIdStr = typeList[i];
      var typeIdNum = TypeId.s2n(typeIdStr);
      list.add(new TextButton(
//        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
//        color: type_color[typeIdNum],
        child: Text((type_name["ja"] ?? {})[TypeId.n2s(typeIdNum)] ?? ''),
        onPressed: () {setState(() {
          _selectedId = TypeId.n2s(typeIdNum);
        });},
      ));
    }
//    return list;
    return new Column(
        children: [Text("効果はばつぐん！の技"), Wrap(children: list), Text(" ")]
    );
  }

/*
  List<Widget> _getNotVeryEffective(){
    List<Widget> list = new List<Widget>();
    list.add(new Text("効果はいまひとつ！の技"));
    final typeList = effectiveness["notveryeffective"][_selectedId];
    for (var i = 0; i < typeList.length; i++){
      var typeIdStr = typeList[i];
      var typeIdNum = TypeId.s2n(typeIdStr);
      list.add(new FlatButton(
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        color: type_color[typeIdNum],
        child: Text(type_name["ja"][TypeId.n2s(typeIdNum)]),
        onPressed: () {setState(() {
          _selectedId = TypeId.n2s(typeIdNum);
        });},
      ));
    }
    return list;
  }
 */
  Widget _getNotVeryEffective(){
    List<Widget> list = [];
//    list.add(new Text("効果はいまひとつ！の技"));
    final typeList = (effectiveness["notveryeffective"] ?? {})[_selectedId] ?? [];
    for (var i = 0; i < typeList.length; i++){
      var typeIdStr = typeList[i];
      var typeIdNum = TypeId.s2n(typeIdStr);
      list.add(new TextButton(
//        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
//        color: type_color[typeIdNum],
        child: Text((type_name["ja"] ?? {})[TypeId.n2s(typeIdNum)] ?? ''),
        onPressed: () {setState(() {
          _selectedId = TypeId.n2s(typeIdNum);
        });},
      ));
    }
//    return list;
    return new Column(
        children: [Text("効果はいまひとつ！の技"), Wrap(children: list), Text(" ")]
    );
  }

/*
  List<Widget> _getNoEffect(){
    List<Widget> list = new List<Widget>();
    list.add(new Text("効果がない！の技"));
    final typeList = effectiveness["noeffect"][_selectedId];
    for (var i = 0; i < typeList.length; i++){
      var typeIdStr = typeList[i];
      var typeIdNum = TypeId.s2n(typeIdStr);
      list.add(new FlatButton(
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        color: type_color[typeIdNum],
        child: Text(type_name["ja"][TypeId.n2s(typeIdNum)]),
        onPressed: () {setState(() {
          _selectedId = TypeId.n2s(typeIdNum);
        });},
      ));
    }
    return list;
  }
*/
  Widget _getNoEffect(){
    List<Widget> list = [];
//    list.add(new Text("効果がない！の技"));
    final typeList = (effectiveness["noeffect"] ?? {})[_selectedId] ?? [];
    if (0 == typeList.length){
//      return null; // no draw.
    }

    for (var i = 0; i < typeList.length; i++){
      var typeIdStr = typeList[i];
      var typeIdNum = TypeId.s2n(typeIdStr);
      list.add(new TextButton(
//        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
//        color: type_color[typeIdNum],
        child: Text((type_name["ja"] ?? {})[TypeId.n2s(typeIdNum)] ?? ''),
        onPressed: () {setState(() {
          _selectedId = TypeId.n2s(typeIdNum);
        });},
      ));
    }
//    return list;
    return new Column(
        children: [Text("効果がない！の技"), Wrap(children: list), Text(" ")]
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        children: <Widget>[
          Container(
            color: type_color[TypeId.s2n(_selectedId)],

            padding: EdgeInsets.all(12.0),
            child: Row(
              children: <Widget>[
                Text(
                  (type_name["ja"] ?? {})[_selectedId] ?? '',
                ),
              ],
            ),
          ),
//          Text("種族を選択してください"),
          ExpansionTile(
              key: GlobalKey(), // auto collupsing after selected https://stackoverflow.com/a/57078686/11073131
              title: Text("種族を選択"),
              children: [Wrap(
                /*
            children: (types["ids"].map((v) => new Chip(
             backgroundColor: type_color[v],
              label: Text(v)
            )).toList())
             */
                /*
            children: (types["ids2"].map((v) => new Chip(
              backgroundColor: type_color2[types['ids2'].indexOf(v)],
              label: Text(v)
            )).toList())
            */
                /*
            children: List<Widget>.generate(
              types["ids2"].length,
                (i) => new Chip(
                  backgroundColor: type_color2[i],
                  label: Text(types['ids2'][i]),
                )
            ).toList(),
            */
                children: List<Widget>.generate(
                    TypeId.ids.length,
                        (i) =>
                    new TextButton(
                      // remove mergin https://stackoverflow.com/questions/53744731/flutter-add-button-without-margin
    //                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
    //                  color: type_color[i],
                      child: Text((type_name["ja"] ?? {})[TypeId.n2s(i)] ?? ''),
                      onPressed: () {
                        setState(() {
                          _selectedId = TypeId.n2s(i);
                        });
                      },
                    )
                ).toList(),
              ),
              ]
          ),
          _getSupperEffectives(),
          _getNotVeryEffective(),
          _getNoEffect(),
/*
          Wrap(
            children: _getSupperEffectives(),
          ),


          Wrap(
            children: _getNotVeryEffective(),
          ),
          Wrap(
            children: _getNoEffect(),
          ),

 */


          /*AdmobBanner(
            adUnitId: getBannerAdUnitId(),
            adSize: AdmobBannerSize.BANNER,
          ),*/
        ]
    );
  }
}