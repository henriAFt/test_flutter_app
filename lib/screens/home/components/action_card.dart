import 'package:flutter/material.dart';
import 'package:test_app/constante.dart';

class ActionCard extends StatelessWidget {
  const ActionCard({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.press,
  });

  final String image, title, description;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: const EdgeInsets.only(top: 12, bottom: 0, left: 0, right: 0),
      margin: const EdgeInsets.only(
        //left: Dimensions.width(20),
        left: kDefaultPadding,
        right: kDefaultPadding,
        bottom: kDefaultPadding / 10,
      ),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 10),
            blurRadius: 50,
            color: kPrimaryColor!.withOpacity(0.23),
          ),
        ],
      ),
      child: Row(
        children: [
          GestureDetector(
            onTap: press,
            child: Container(
              width: 60,
              height: 60,
              margin: const EdgeInsets.only(
                left: kDefaultPadding / 2,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.transparent,
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.cover),
              ),
            ),
          ),
          GestureDetector(
            onTap: press,
            child: Container(
              width: 283,
              height: 125,
              margin: const EdgeInsets.only(
                left: kDefaultPadding / 2,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.transparent,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                //mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          //text: "$title\n".toUpperCase(),
                          text: "$title\n",
                          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                        TextSpan(
                          //text: "$country".toUpperCase(),
                          text: description,
                          style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 17,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
