import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:test_provider_archetec/locator.dart';
import 'package:test_provider_archetec/viewmodel/baseModel.dart';

class BaseView<T extends BaseModel> extends StatefulWidget{
  final Widget Function (BuildContext context,T model,Widget child) builder;
  final Function(T) onModelReady;
 BaseView({Key key, this.builder, this.onModelReady}) : super(key: key);
 @override
  _BaseViewState<T>createState() {
    // TODO: implement createState
    return _BaseViewState<T>();
  } 


}
class _BaseViewState<T extends BaseModel>extends State<BaseView>{
  T model=locator<T>();
  @override
  void initState() {

    // TODO: implement initState
    super.initState();
    if (widget.onModelReady != null) {
      widget.onModelReady(model);
    }
  }
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ChangeNotifierProvider<T>(
        builder:(context)=>model,
        child: Consumer<T>(builder: widget.builder),
    );
  }


}