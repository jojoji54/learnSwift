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
    alreadyBuy: purchaseManagerHive.getPurchasedTrue(1),
    completed: purchaseManagerHive.getCompleted(1),
  ),
  CoursesExModel(
    id: 2,
    exerciseName: 'Prints()',
    productID: 'com.mrrubik.learnswift.swiftbasicex2',
    alreadyBuy: purchaseManagerHive.getPurchasedTrue(2),
    completed: purchaseManagerHive.getCompleted(2),
  ),
  CoursesExModel(
    id: 3,
    exerciseName: 'mathRegex',
    productID: 'com.mrrubik.learnswift.swiftbasicex3',
    alreadyBuy: purchaseManagerHive.getPurchasedTrue(3),
    completed: purchaseManagerHive.getCompleted(3),
  ),
  CoursesExModel(
    id: 4,
    exerciseName: 'Str Interpolation',
    productID: 'com.mrrubik.learnswift.swiftbasicex4',
    alreadyBuy: purchaseManagerHive.getPurchasedTrue(4),
    completed: purchaseManagerHive.getCompleted(4),
  ),
  CoursesExModel(
    id: 5,
    exerciseName: 'Challenge 1',
    productID: 'com.mrrubik.learnswift.swiftbasicex5',
    alreadyBuy: purchaseManagerHive.getPurchasedTrue(5),
    completed: purchaseManagerHive.getCompleted(5),
  ),
  CoursesExModel(
    id: 6,
    exerciseName: 'Challenge 2',
    productID: 'com.mrrubik.learnswift.swiftbasicex6',
    alreadyBuy: purchaseManagerHive.getPurchasedTrue(6),
    completed: purchaseManagerHive.getCompleted(6),
  ),
  CoursesExModel(
    id: 7,
    exerciseName: 'Data Types',
    productID: 'com.mrrubik.learnswift.swiftbasicex7',
    alreadyBuy: purchaseManagerHive.getPurchasedTrue(7),
    completed: purchaseManagerHive.getCompleted(7),
  ),
  CoursesExModel(
    id: 8,
    exerciseName: 'Constants',
    productID: 'com.mrrubik.learnswift.swiftbasicex8',
    alreadyBuy: purchaseManagerHive.getPurchasedTrue(8),
    completed: purchaseManagerHive.getCompleted(8),
  ),
  CoursesExModel(
    id: 9,
    exerciseName: 'Arrays',
    productID: 'com.mrrubik.learnswift.swiftbasicex9',
    alreadyBuy: purchaseManagerHive.getPurchasedTrue(9),
    completed: purchaseManagerHive.getCompleted(9),
  ),
  CoursesExModel(
    id: 10,
    exerciseName: 'Functions',
    productID: 'com.mrrubik.learnswift.swiftbasicex10',
    alreadyBuy: purchaseManagerHive.getPurchasedTrue(10),
    completed: purchaseManagerHive.getCompleted(10),
  ),
  CoursesExModel(
    id: 11,
    exerciseName: 'Working with const.',
    productID: 'com.mrrubik.learnswift.swiftbasicex11',
    alreadyBuy: purchaseManagerHive.getPurchasedTrue(11),
    completed: purchaseManagerHive.getCompleted(11),
  ),
  CoursesExModel(
    id: 12,
    exerciseName: 'Challenge 3',
    productID: 'com.mrrubik.learnswift.swiftbasicex12',
    alreadyBuy: purchaseManagerHive.getPurchasedTrue(12),
    completed: purchaseManagerHive.getCompleted(12),
  ),
  CoursesExModel(
    id: 13,
    exerciseName: 'Challenge 4',
    productID: 'com.mrrubik.learnswift.swiftbasicex13',
    alreadyBuy: purchaseManagerHive.getPurchasedTrue(13),
    completed: purchaseManagerHive.getCompleted(13),
  ),
  CoursesExModel(
    id: 14,
    exerciseName: 'Challenge 5',
    productID: 'com.mrrubik.learnswift.swiftbasicex14',
    alreadyBuy: purchaseManagerHive.getPurchasedTrue(14),
    completed: purchaseManagerHive.getCompleted(14),
  ),
];
