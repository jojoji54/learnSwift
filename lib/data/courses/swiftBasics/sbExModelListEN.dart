import 'package:learnswift/Singleton/purchaseManagerSingleton.dart';
import 'package:learnswift/data/Hive/PurchaseManagerHive.dart';
import 'package:learnswift/data/courses/coursesExModel.dart';

final purchaseManagerHive = PurchaseManagerHive();

List<CoursesExModel> sbModelEN = [
  CoursesExModel(
    id: 0,
    exerciseName: 'Hello World',
    
    productID: 'com.mrrubik.learnswift.swiftbasicex0',
    alreadyBuy: purchaseManagerHive.getPurchasedTrue(0),
    completed: purchaseManagerHive.getCompleted(0),
  ),
  CoursesExModel(
    id: 1,
    exerciseName: 'Number',
    
    productID: 'com.mrrubik.learnswift.swiftbasicex1',
    alreadyBuy: PurchaseManagerSingleton().purchaseAndDevelop.elementAt(1).purchased!,
    completed: PurchaseManagerSingleton().purchaseAndDevelop.elementAt(1).completed!,
  ),
  CoursesExModel(
    id: 2,
    exerciseName: 'Prints()',
    
    productID: 'com.mrrubik.learnswift.swiftbasicex2',
    alreadyBuy: PurchaseManagerSingleton().purchaseAndDevelop.elementAt(2).purchased!,
    completed: PurchaseManagerSingleton().purchaseAndDevelop.elementAt(2).completed!,
  ),
  CoursesExModel(
    id: 3,
    exerciseName: 'mathRegex',
    
    productID: 'com.mrrubik.learnswift.swiftbasicex3',
    alreadyBuy: PurchaseManagerSingleton().purchaseAndDevelop.elementAt(3).purchased!,
    completed: PurchaseManagerSingleton().purchaseAndDevelop.elementAt(3).completed!,
  ),
  CoursesExModel(
    id: 4,
    exerciseName: 'Str Interpolation',
    
    productID: 'com.mrrubik.learnswift.swiftbasicex4',
    alreadyBuy: PurchaseManagerSingleton().purchaseAndDevelop.elementAt(4).purchased!,
    completed: PurchaseManagerSingleton().purchaseAndDevelop.elementAt(4).completed!,
  ),
  CoursesExModel(
    id: 5,
    exerciseName: 'Challenge 1',
    
    productID: 'com.mrrubik.learnswift.swiftbasicex5',
    alreadyBuy: PurchaseManagerSingleton().purchaseAndDevelop.elementAt(5).purchased!,
    completed: PurchaseManagerSingleton().purchaseAndDevelop.elementAt(5).completed!,
  ),
  CoursesExModel(
    id: 6,
    exerciseName: 'Challenge 2',
    
    productID: 'com.mrrubik.learnswift.swiftbasicex6',
    alreadyBuy: PurchaseManagerSingleton().purchaseAndDevelop.elementAt(6).purchased!,
    completed: PurchaseManagerSingleton().purchaseAndDevelop.elementAt(6).completed!,
  ),
  CoursesExModel(
    id: 7,
    exerciseName: 'Data Types',
    
    productID: 'com.mrrubik.learnswift.swiftbasicex7',
    alreadyBuy: PurchaseManagerSingleton().purchaseAndDevelop.elementAt(7).purchased!,
    completed: PurchaseManagerSingleton().purchaseAndDevelop.elementAt(7).completed!,
  ),
  CoursesExModel(
    id: 8,
    exerciseName: 'Constants',
    
    productID: 'com.mrrubik.learnswift.swiftbasicex8',
    alreadyBuy: PurchaseManagerSingleton().purchaseAndDevelop.elementAt(8).purchased!,
    completed: PurchaseManagerSingleton().purchaseAndDevelop.elementAt(8).completed!,
  ),
  CoursesExModel(
    id: 9,
    exerciseName: 'Arrays',
    
    productID: 'com.mrrubik.learnswift.swiftbasicex9',
    alreadyBuy: PurchaseManagerSingleton().purchaseAndDevelop.elementAt(9).purchased!,
    completed: PurchaseManagerSingleton().purchaseAndDevelop.elementAt(9).completed!,
  ),
  CoursesExModel(
    id: 10,
    exerciseName: 'Functions',
    
    productID: 'com.mrrubik.learnswift.swiftbasicex10',
    alreadyBuy: PurchaseManagerSingleton().purchaseAndDevelop.elementAt(10).purchased!,
    completed: PurchaseManagerSingleton().purchaseAndDevelop.elementAt(10).completed!,
  ),
  CoursesExModel(
    id: 11,
    exerciseName: 'Working with const.',
    
    productID: 'com.mrrubik.learnswift.swiftbasicex11',
    alreadyBuy: PurchaseManagerSingleton().purchaseAndDevelop.elementAt(11).purchased!,
    completed: PurchaseManagerSingleton().purchaseAndDevelop.elementAt(11).completed!,
  ),
  CoursesExModel(
    id: 12,
    exerciseName: 'Challenge 3',
    productID: 'com.mrrubik.learnswift.swiftbasicex12',
    
    alreadyBuy: PurchaseManagerSingleton().purchaseAndDevelop.elementAt(12).purchased!,
    completed: PurchaseManagerSingleton().purchaseAndDevelop.elementAt(12).completed!,
  ),
  CoursesExModel(
    id: 13,
    exerciseName: 'Challenge 4',
    productID: 'com.mrrubik.learnswift.swiftbasicex13',
    
    alreadyBuy: PurchaseManagerSingleton().purchaseAndDevelop.elementAt(13).purchased!,
    completed: PurchaseManagerSingleton().purchaseAndDevelop.elementAt(13).completed!,
  ),
  CoursesExModel(
    id: 14,
    exerciseName: 'Challenge 5',
    productID: 'com.mrrubik.learnswift.swiftbasicex14',
    
    alreadyBuy: PurchaseManagerSingleton().purchaseAndDevelop.elementAt(14).purchased!,
    completed: PurchaseManagerSingleton().purchaseAndDevelop.elementAt(14).completed!,
  ),
];
