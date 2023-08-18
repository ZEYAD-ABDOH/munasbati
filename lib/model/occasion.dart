

class Occasion {
  int servings;
  List<Ingredient> ingredients;
  String label;
  String imageUrl;
  String dces;

  Occasion(this.label, this.imageUrl, this.servings, this.ingredients , this.dces);

  static List<Occasion> samples = [
  

    Occasion(
      'اعراس',
      // 'assets/occasion/image1.jpg',
      'assets/img/Cold Coffee.png',
      1,
      [
        Ingredient(1, '', 'فساتين'),
        Ingredient(2, '', ' الفرقة'),
        Ingredient(3, '', 'كوشة'),
        Ingredient(4, '', 'مصورين'),
        Ingredient(5, '', 'ستاندات'),
        Ingredient(6, '', 'اماكن الاحتفال'),
        Ingredient(7, '', 'الكروت'),
        Ingredient(8, '', 'المشروبات'),
        Ingredient(9, '', 'محلات هدايا'),
        Ingredient(10, '', 'كوافير'),
        Ingredient(11, '', 'جاتو'),
        Ingredient(12, '', 'نقش'),
      ],
      ""
    ),
    Occasion(
      'تخرج',
      'assets/img/Cold Coffee.png',
      2,
      [
        Ingredient(1, '', ' الفرقة'),
        Ingredient(2, '', 'كوشة'),
        Ingredient(3, '', 'مصورين'),
        Ingredient(4, '', 'محلات خياط'),
        Ingredient(5, '', 'اماكن الاحتفال'),
        Ingredient(6, '', 'الكروت'),
        Ingredient(7, '', 'المشروبات'),
        Ingredient(8, '', 'محلات هدايا'),
      ],
      "اخيرا بعد عناء طويل تخرجت "
    ),
    Occasion(
      'مؤتمرات',
      'assets/img/Cold Coffee.png',
      1,
      [
        Ingredient(1, '', 'كوشة'),
        Ingredient(2, '', 'مصورين'),
        Ingredient(3, '', 'اعلاميين'),
        Ingredient(4, '', 'اماكن الاحتفال'),
        //  Ingredient(5, '', 'الكروت'),
        //  Ingredient(6, '', 'المشروبات'),
      ],
      "يمكنك عقد موتمارات وتنظيمه عند طريقنا"
    ),
    Occasion(
      'افتتاحيات',
      'assets/img/Cold Coffee.png',
      24,
      [
        Ingredient(2, '', ' الفرقة'),
        Ingredient(3, '', 'كوشة'),
        Ingredient(4, '', 'مصورين'),
        Ingredient(5, '', 'اعلاميين'),
        Ingredient(6, '', 'اماكن الاحتفال'),
        Ingredient(7, '', 'الكروت'),
        Ingredient(8, '', 'المشروبات'),
      ],
      "من اجلك تم افتتاح هذا طلب"
    ),
    Occasion(
      'عيد ميلاد',
      'assets/img/Cold Coffee.png',
      1,
      [
        Ingredient(2, '', ' الفرقة'),
        Ingredient(3, '', 'كوشة'),
        Ingredient(4, '', 'مصورين'),
        Ingredient(5, '', 'ستاندات'),
        Ingredient(7, '', 'الكروت'),
        Ingredient(8, '', ' مشروبات ووجبات'),
        Ingredient(9, '', 'تنسيق احتفالات '),
        Ingredient(11, '', 'جاتوهات'),
      ],
      "عيد ميلاد سعيد اتمنى لكم دوام سعاده"
    ),
    Occasion(
      'ختم قران',
      'assets/img/Cold Coffee.png',
      4,
      [
        Ingredient(3, '', 'كوشة'),
        Ingredient(4, '', 'مصورين'),
        Ingredient(5, '', 'ستاندات'),
        Ingredient(6, '', 'اماكن الاحتفال'),
        Ingredient(7, '', 'الكروت'),
        Ingredient(8, '', 'المشروبات ووجبات'),
        Ingredient(11, '', 'جاتوهات'),
      ],
      "الحمدلله الذي بنعمته تم عليا حفظ كتابه الله عزوجل"
    ),
  ];
}

class Ingredient {
  double quantity;
  String measure;
  String name;
  

  Ingredient(this.quantity, this.measure, this.name);
}
