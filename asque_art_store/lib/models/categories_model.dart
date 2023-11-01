import 'package:equatable/equatable.dart';

class Category extends Equatable{
final String name;


const Category({required this.name, });


  @override
  List<Object?> get props => [name,];

  static List<Category> categories = [
    const Category(
      name: 'Art works',
    ),
    const Category(
      name: 'Collections',
    ),
    const Category(
      name: 'Documentries',
    ),
    const Category(
      name: 'Photograph',
    ),
    const Category(
      name: 'Sculpture',
    ),
    const Category(
      name: 'Fine art',
    ),
  ];
}