# BMI Calculator

### The BMI calculator uses technology to determine if a person is underweight, overweight or obese.
### BMI = weight (kg) / height^2

### The BMI calculator uses smart technology to help people decide if they are underweight, overweight, obese or in the normal category.
#### The body weight values (kg/m2) for adults (men and women above 18 years of age) are:
- Underweight - less than 18.5
- Normal- 18.5 - 25
- Overweight - 25 - 30
- Obese - above 30


## Documentation and References :
[Link](https://pub.dev/packages/font_awesome_flutter#font_awesome_flutter)

#### The free Font Awesome Icon pack available as set of Flutter Icons - based on font awesome version 6.2.1.
#### This icon pack includes only the free icons offered by Font Awesome out-of-the-box. 

## Installation:

#### Use this package as a library
#### Depend on it
#### Run this command:
#### With Flutter:

```
flutter pub add font_awesome_flutter
```

#### This will add a line like this to your package's pubspec.yaml (and run an implicit flutter pub get):
```
dependencies:
  font_awesome_flutter: ^10.4.0
```

#### Import it
#### Now in your Dart code, you can use:

```
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
```

## Slider Widget
#### The easy way is to get the actual SliderTheme used in your context and modify only the properties you need. For example, to modify one slide:
```
SliderTheme(
            data: SliderTheme.of(context).copyWith(
              activeTrackColor: const Color(0xFF28afb0),
              inactiveTrackColor: const Color(0xFFadb5bd),
              thumbColor: const Color(0xFF28afb0),
              overlayColor: const Color(0xFFaecae2),
              thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 15.0),
              overlayShape: const RoundSliderOverlayShape(overlayRadius: 30.0),
            ),
            child: Slider(
              value: height.toDouble(),
              min: 120.0,
              max: 320.0,
              onChanged: (double newValue) {
                setState(() {
                  height = newValue.round();
                });
              },
            ),
          ),
```


## Navigate to a new screen and back 
[Link](https://docs.flutter.dev/cookbook/navigation/navigation-basics)
### Navigate to the second route using Navigator.push()

To switch to a new route, use the Navigator.push() method. The push() method adds a Route to the stack of routes managed by the Navigator. Where does the Route come from? You can create your own, or use a MaterialPageRoute, which is useful because it transitions to the new route using a platform-specific animation.

In the build() method of the FirstRoute widget, update the onPressed() callback:

```
// Within the `FirstRoute` widget
onPressed: () {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const SecondRoute()),
  );
}
```

### Return to the first route using Navigator.pop()
The pop() method removes the current Route from the stack of routes managed by the Navigator.

To implement a return to the original route, update the onPressed() callback in the SecondRoute widget:

```
// Within the SecondRoute widget
onPressed: () {
  Navigator.pop(context);
}
```

# Screenshots:

![WhatsApp Image 2023-03-02 at 10 42 42 PM](https://user-images.githubusercontent.com/91545371/222502287-f11a9bfa-29a4-4150-b905-e0d11ce62f19.jpeg)

![WhatsApp Image 2023-03-02 at 10 42 42 PM (1)](https://user-images.githubusercontent.com/91545371/222502377-47c46fd6-405b-4094-9254-f28df614370c.jpeg)

![WhatsApp Image 2023-03-02 at 10 42 42 PM (2)](https://user-images.githubusercontent.com/91545371/222502472-fa89dee1-1c92-4a3a-a656-015f2f579919.jpeg)

# Video:

https://user-images.githubusercontent.com/91545371/222502799-4d92e680-47e5-46ca-b90e-f6946a7a086e.mp4


