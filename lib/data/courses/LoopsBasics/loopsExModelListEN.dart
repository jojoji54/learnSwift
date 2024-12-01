import 'package:learnswift/Singleton/purchaseManagerSingleton.dart';
import 'package:learnswift/data/courses/coursesExModel.dart';

List<CoursesExModel> loopsModelEN = [

    CoursesExModel(
    id: 61,
    exerciseName: 'Challenge 5: Day Planner',
    productID: 'com.mrrubik.learnswift.swiftbasicex61',
    alreadyBuy:
        PurchaseManagerSingleton().purchaseAndDevelop.elementAt(61).purchased!,
    completed:
        PurchaseManagerSingleton().purchaseAndDevelop.elementAt(61).completed!,
  ),
];
