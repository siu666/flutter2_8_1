import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/page/BBSdetail/replyList.dart';
import './mainBanner.dart';
import '../../widgets/ScrollCustom.dart';
import './fixHeader.dart';
class BBSDetail extends StatefulWidget {
  const BBSDetail({Key? key}) : super(key: key);

  @override
  _BBSDetailState createState() => _BBSDetailState();
}

class _BBSDetailState extends State<BBSDetail> {
  double moreModelSheetHeight = 0;
  // ScrollController _controller = ScrollController(keepScrollOffset: false);

  @override
  initState() {

    super.initState();
  }
 
  Widget build(BuildContext context) {
        print('bbsDetail');

    // const List<Widget>slivers =[ReplyList()];
    return CustomScrollView(
      physics:AlwaysScrollableScrollPhysics(),
      slivers: [
        const MainBanner(),
        const FixHeader(),
        const ReplyList()
        ],
    );
    //  ScreenUtilInit(
    //     designSize: Size(375, 812),
    //     builder: () => 
    
  }
  }


  


//   void _showModal() {
//     moreModelSheetHeight=MediaQuery.of(context).size.height-MediaQuery.of(context).padding.top;
//     Future<void> ModalSheet = showModalBottomSheet(
//         enableDrag: false,
//         isScrollControlled: true,
//         context: context,
//         backgroundColor: Colors.transparent,
//         builder: (BuildContext context) {
//           return MoreReply(moreModelSheetHeight: moreModelSheetHeight);
//         });
//     ModalSheet.then((void value) => {print('closeModal')});
//   }
// }


