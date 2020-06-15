[![pub package](https://img.shields.io/pub/v/tutorial_coach_mark.svg)](https://pub.dartlang.org/packages/tutorial_coach_mark)

# TutorialCoachMark

Example 1             |  Example 2
:-------------------------:|:-------------------------:
![](https://github.com/RafaelBarbosatec/tutorial_coach_mark/blob/master/img/exampleTutorialCoachMark.gif)  |  ![](https://github.com/RafaelBarbosatec/tutorial_coach_mark/blob/master/img/example_boleiro.gif)

# Usage
To use this plugin, add `tutorial_coach_mark` as a [dependency in your pubspec.yaml file](https://flutter.io/platform-plugins/).

### Example

``` dart
import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

void showTutorial() {
    TutorialCoachMark(
      context,
      targets: targets, // List<TargetFocus>
      colorShadow: Colors.red, // DEFAULT Colors.black
       // alignSkip: Alignment.bottomRight,
       // textSkip: "SKIP",
       // paddingFocus: 10,
      finish: (){
        print("finish");
      },
      clickTarget: (target){
        print(target);
      },
      clickSkip: (){
        print("skip");
      }
    )..show();
  }
```
#### WARN: Make sure your view has been rendered before calling 'show' so the lib can find the position of the widget on the screen.

### Creating targets (TargetFocus)

TargetFocus is the class that represents the widget that will be focused and configure what will be displayed after you focus it.

Attributes:

| Attribute | Type | Description |
| --- | --- | --- |
| `identify` | dynamic | free for identification use |
| `keyTarget` | GlobalKey | GlobalKey widget that wants to be focused |
| `targetPosition` | TargetPosition | If you do not want to use GlobalKey, you can create a TargetPosition to determine where to focus |
| `contents` | ContentTarget[] | Content list you want to display after focusing widget |

### Creating contents (ContentTarget)

ContentTarget is the class responsible for determining what should be displayed and how it will appear after focusing on the widget.

Attributes:

| Attribute | Type | Description |
| --- | --- | --- |
| `align` | AlignContent | With this attribute you determine in which region to display the content in relation to the focused widget (top,bottom,left,right) |
| `child` | Widget | Content you want to be displayed |

### Example Complete

``` dart
import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

List<TargetFocus> targets = List();

 @override
 void initState() {
    targets.add(
        TargetFocus(
            identify: "Target 1",
            keyTarget: keyButton,
            contents: [
              ContentTarget(
                  align: AlignContent.bottom,
                  child: Container(
                    child:Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Titulo lorem ipsum",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20.0
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin pulvinar tortor eget maximus iaculis.",
                            style: TextStyle(
                                color: Colors.white
                            ),),
                        )
                      ],
                    ),
                  )
              )
            ]
        )
    );

    targets.add(
        TargetFocus(
            identify: "Target 2",
            keyTarget: keyButton4,
            contents: [
              ContentTarget(
                  align: AlignContent.left,
                  child: Container(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Multiples content",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20.0
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin pulvinar tortor eget maximus iaculis.",
                            style: TextStyle(
                                color: Colors.white
                            ),),
                        )
                      ],
                    ),
                  )
              ),
              ContentTarget(
                  align: AlignContent.top,
                  child: Container(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Multiples content",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20.0
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin pulvinar tortor eget maximus iaculis.",
                            style: TextStyle(
                                color: Colors.white
                            ),),
                        )
                      ],
                    ),
                  )
              )
            ]
        )
    );

    targets.add(
        TargetFocus(
            identify: "Target 3",
            keyTarget: keyButton5,
            contents: [
              ContentTarget(
                  align: AlignContent.right,
                  child: Container(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Title lorem ipsum",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20.0
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin pulvinar tortor eget maximus iaculis.",
                            style: TextStyle(
                                color: Colors.white
                            ),),
                        )
                      ],
                    ),
                  )
              )
            ]
        )
    );
}

void showTutorial() {
    TutorialCoachMark(
      context,
      targets: targets, // List<TargetFocus>
      colorShadow: Colors.red, // DEFAULT Colors.black
       // alignSkip: Alignment.bottomRight,
       // textSkip: "SKIP",
       // paddingFocus: 10,
       // opacityShadow: 0.8,
      finish: (){
        print("finish");
      },
      clickTarget: (target){
        print(target);
      },
      clickSkip: (){
        print("skip");
      }
    )..show();
  }
```

# Contribution

If you find any errors or want to add improvements, you can open a issue or develop the fix and open a pull request. Thank you for your cooperation!
