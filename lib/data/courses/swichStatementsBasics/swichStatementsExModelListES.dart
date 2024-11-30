import 'package:learnswift/Singleton/purchaseManagerSingleton.dart';
import 'package:learnswift/data/courses/coursesExModel.dart';

List<CoursesExModel> switchModelES = [

  CoursesExModel(
    id: 46,
    exerciseName: 'Switch Básico',
    productID: 'com.mrrubik.learnswift.swiftbasicex46',
    alreadyBuy:
        PurchaseManagerSingleton().purchaseAndDevelop.elementAt(46).purchased!,
    completed:
        PurchaseManagerSingleton().purchaseAndDevelop.elementAt(46).completed!,
  ),
];
