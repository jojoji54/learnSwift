import 'package:learnswift/Singleton/purchaseManagerSingleton.dart';
import 'package:learnswift/data/courses/coursesExModel.dart';

List<CoursesExModel> sbModel = [
  CoursesExModel(
    id: 0,
    exerciseName: 'Hello World',
    alreadyBuy: PurchaseManagerSingleton().purchaseAndDevelop.elementAt(0).purchased!,
    completed: PurchaseManagerSingleton().purchaseAndDevelop.elementAt(0).completed!,
  ),
  CoursesExModel(
    id: 1,
    exerciseName: 'Number',
    alreadyBuy: PurchaseManagerSingleton().purchaseAndDevelop.elementAt(1).purchased!,
    completed: PurchaseManagerSingleton().purchaseAndDevelop.elementAt(1).completed!,
  ),
  CoursesExModel(
    id: 2,
    exerciseName: 'Prints()',
    alreadyBuy: PurchaseManagerSingleton().purchaseAndDevelop.elementAt(2).purchased!,
    completed: PurchaseManagerSingleton().purchaseAndDevelop.elementAt(2).completed!,
  ),
  CoursesExModel(
    id: 3,
    exerciseName: 'mathRegex',
    alreadyBuy: PurchaseManagerSingleton().purchaseAndDevelop.elementAt(3).purchased!,
    completed: PurchaseManagerSingleton().purchaseAndDevelop.elementAt(3).completed!,
  ),
  CoursesExModel(
    id: 4,
    exerciseName: 'Str Interpolation',
    alreadyBuy: PurchaseManagerSingleton().purchaseAndDevelop.elementAt(4).purchased!,
    completed: PurchaseManagerSingleton().purchaseAndDevelop.elementAt(4).completed!,
  ),
  CoursesExModel(
    id: 5,
    exerciseName: 'Challenge 1',
    alreadyBuy: PurchaseManagerSingleton().purchaseAndDevelop.elementAt(5).purchased!,
    completed: PurchaseManagerSingleton().purchaseAndDevelop.elementAt(5).completed!,
  ),
  CoursesExModel(
    id: 6,
    exerciseName: 'Challenge 2',
    alreadyBuy: PurchaseManagerSingleton().purchaseAndDevelop.elementAt(6).purchased!,
    completed: PurchaseManagerSingleton().purchaseAndDevelop.elementAt(6).completed!,
  ),
  CoursesExModel(
    id: 7,
    exerciseName: 'Data Types',
    alreadyBuy: PurchaseManagerSingleton().purchaseAndDevelop.elementAt(7).purchased!,
    completed: PurchaseManagerSingleton().purchaseAndDevelop.elementAt(7).completed!,
  ),
  CoursesExModel(
    id: 8,
    exerciseName: 'Constants',
    alreadyBuy: PurchaseManagerSingleton().purchaseAndDevelop.elementAt(8).purchased!,
    completed: PurchaseManagerSingleton().purchaseAndDevelop.elementAt(8).completed!,
  ),
  CoursesExModel(
    id: 9,
    exerciseName: 'Arrays',
    alreadyBuy: PurchaseManagerSingleton().purchaseAndDevelop.elementAt(9).purchased!,
    completed: PurchaseManagerSingleton().purchaseAndDevelop.elementAt(9).completed!,
  ),
  CoursesExModel(
    id: 10,
    exerciseName: 'Functions',
    alreadyBuy: PurchaseManagerSingleton().purchaseAndDevelop.elementAt(10).purchased!,
    completed: PurchaseManagerSingleton().purchaseAndDevelop.elementAt(10).completed!,
  ),
  CoursesExModel(
    id: 11,
    exerciseName: 'Working with const.',
    alreadyBuy: PurchaseManagerSingleton().purchaseAndDevelop.elementAt(11).purchased!,
    completed: PurchaseManagerSingleton().purchaseAndDevelop.elementAt(11).completed!,
  ),
  CoursesExModel(
    id: 12,
    exerciseName: 'Challenge 3',
    alreadyBuy: PurchaseManagerSingleton().purchaseAndDevelop.elementAt(12).purchased!,
    completed: PurchaseManagerSingleton().purchaseAndDevelop.elementAt(12).completed!,
  ),
  CoursesExModel(
    id: 13,
    exerciseName: 'Challenge 4',
    alreadyBuy: PurchaseManagerSingleton().purchaseAndDevelop.elementAt(13).purchased!,
    completed: PurchaseManagerSingleton().purchaseAndDevelop.elementAt(13).completed!,
  ),
  CoursesExModel(
    id: 14,
    exerciseName: 'Challenge 5',
    alreadyBuy: PurchaseManagerSingleton().purchaseAndDevelop.elementAt(14).purchased!,
    completed: PurchaseManagerSingleton().purchaseAndDevelop.elementAt(14).completed!,
  ),
];
