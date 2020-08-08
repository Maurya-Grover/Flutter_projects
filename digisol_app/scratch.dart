/*
ProductItems product = ProductItems();
void buildList(dynamic productData) {
  setState(
        () {
      if (productData == null) {
        product.detDesc =
        List<String>.generate(productData.length, (index) => 'NA');
        product.id = List<int>.generate(productData.length, (index) => 0);
        product.usp =
        List<String>.generate(productData.length, (index) => 'NA');
        product.feature =
        List<String>.generate(productData.length, (index) => 'NA');
        product.desc =
        List<String>.generate(productData.length, (index) => 'NA');
        product.image =
        List<String>.generate(productData.length, (index) => 'NA');
        product.name =
        List<String>.generate(productData.length, (index) => 'NA');
      } else {
        product.usp =
        List<String>.generate(productData.length, (index) => 'NA');
        product.feature =
        List<String>.generate(productData.length, (index) => 'NA');
        product.desc = List<String>.generate(productData.length,
                (index) => productData[index]['title']['rendered']);
        product.image = List<String>.generate(productData.length,
                (index) => productData[index]['acf']['image_1']);
        product.name = List<String>.generate(productData.length,
                (index) => productData[index]['acf']['model_number']);
        product.detDesc = List<String>.generate(productData.length,
                (index) => productData[index]['content']['rendered']);
        product.id = List<int>.generate(
            productData.length, (index) => productData[index]['id']);
      }
    },
  );
}

@override
void initState() {
  buildList(widget.productData);
  super.initState();
}*/