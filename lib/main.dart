import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget rowSection = Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(Icons.star, size: 50),
          Icon(Icons.star, size: 50),
          Icon(Icons.star, size: 100),
        ],
    );

    Widget columnSection = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.agriculture_outlined, size: 50),
        Icon(Icons.agriculture_outlined, size: 50),
        Icon(Icons.agriculture_outlined, size: 50),
      ],
    );

    Widget baseLineSection = Row(
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      children: [
        Text(
          'Baseline',
          style: Theme.of(context).textTheme.headline2,
        ),
        Text(
          'Baseline',
          style: Theme.of(context).textTheme.bodyText1,
        )
      ],
    );

    Widget maxSizeSection = Container(
      color: Colors.red[100],
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Icon(Icons.zoom_in, size: 50),
          Icon(Icons.zoom_in, size: 50),
          Icon(Icons.zoom_in, size: 50),
        ],
      ),
    );

    Widget minSizeSection = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          color: Colors.teal[100],
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.wifi_sharp, size: 50),
              Icon(Icons.wifi_sharp, size: 50),
              Icon(Icons.wifi_sharp, size: 50),
            ],
          ),
        )
      ],
    );

    Widget sameLengthButtons = Center(
      child: IntrinsicWidth(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Text('Short'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('A bit longer'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('The longest text button'),
            )
          ],
        ),
      ),
    );

    Widget expandedSection = Row(
      children: [
        Expanded(
          child: Container(
            color: Colors.red,
            child: Text('data'),
          ),
          flex: 4,
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.blueGrey[0],
              border: Border.all(
                color: Colors.yellowAccent,
                width: 8
              )
            ),
            child: Text('test'),
          ),
          flex: 2,
        ),
        Expanded(
          child: Text('Expanded'),
          flex: 1,
        )
      ],
    );

    Widget alignSection = Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          color: Colors.amber[500],
          child: Text('Container'),
        ),
        Align(
          child: ElevatedButton(
            onPressed: () {print('${context}');},
            child: const Text('Button'),
          ),
        )
      ],
    );

    Widget backgroundImageSection = Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        color: Colors.amber[0],
        image: DecorationImage(
          fit: BoxFit.fitWidth,
          image: NetworkImage(
            'https://flutter.io/images/catalog-widget-placeholder.png'
          )
        )
      ),
    );

    Widget shapeSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            color: Colors.yellow,
            shape: BoxShape.circle
          )
        ),
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            color: Colors.yellow,
            shape: BoxShape.rectangle
          )
        )
      ],
    );

    return MaterialApp(
      title: 'Flutter cheet sheat',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter design cheet sheat')
        ),
        body: ListView(
          children: [
            rowSection,
            columnSection,
            baseLineSection,
            maxSizeSection,
            minSizeSection,
            sameLengthButtons,
            expandedSection,
            alignSection,
            backgroundImageSection,
            shapeSection
          ],
        ),
      )
    );
  }
}