import 'package:flutter/material.dart';
import 'package:recipe_gpt/domain/entities/entities.dart';
import 'package:recipe_gpt/presentation/shared/widgets/chat_widgets/chat_ballon_widget.dart';

class ResponseBody extends StatefulWidget {
  final String initialText;

  const ResponseBody({
    super.key,
    required this.initialText,
  });

  @override
  State<ResponseBody> createState() => _ResponseBodyState();
}

class _ResponseBodyState extends State<ResponseBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            reverse: true,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ChatBallonWidget(message: sender),
                ChatBallonWidget(message: responder),
              ],
            ),
          ),
        ),
        const Column()
      ],
    );
  }

  Message get sender {
    return Message.user(
      text: "sent message",
    );
  }

  Message get responder {
    return Message.ai(
      text: "response message",
      recipe: null,
      mealPlan: MealPlan.fromMap(const {
        "meal_plan": "Brazilian Delights",
        "n_days": 1,
        "meals_per_day": 1,
        "meals": [
          {
            "day": "Day 1",
            "recipes": [
              {
                "title": "Mediterranean Quinoa Salad",
                "description":
                    "A delightful and nutritious Mediterranean-inspired quinoa salad.",
                "dificulty": "Easy",
                "time": "25 minutes",
                "ingredients": [
                  "Quinoa - 1 cup, rinsed and cooked according to package instructions",
                  "Cucumber - 1 medium, diced",
                  "Cherry tomatoes - 1 cup, halved",
                  "Kalamata olives - 1/4 cup, pitted and halved",
                  "Red onion - 1/4 cup, finely chopped",
                  "Fresh parsley - 1/4 cup, chopped",
                  "Fresh mint - 1/4 cup, chopped",
                  "Feta cheese - 1/2 cup, crumbled",
                  "Lemon juice - 2 tablespoons",
                  "Extra-virgin olive oil - 2 tablespoons",
                  "Minced garlic - 1 clove",
                  "Dried oregano - 1 teaspoon",
                  "Salt and pepper - To taste"
                ],
                "instructions": [
                  "In a large mixing bowl, combine cooked quinoa, diced cucumber, halved cherry tomatoes, halved Kalamata olives, chopped red onion, chopped fresh parsley, and chopped fresh mint.",
                  "In a small bowl, whisk together lemon juice, extra-virgin olive oil, minced garlic, dried oregano, salt, and pepper to make the dressing.",
                  "Pour the dressing over the salad ingredients and toss gently to combine.",
                  "Add crumbled feta cheese to the salad and toss again to distribute the flavors.",
                  "Adjust seasoning with salt and pepper if needed.",
                  "Serve the Mediterranean Quinoa Salad chilled or at room temperature.",
                  "Enjoy this refreshing and healthy quinoa salad!"
                ],
                "nutrition_facts": {
                  "calories": 350,
                  "fat": 14,
                  "carbohydrates": 45,
                  "sugar": 4,
                  "protein": 12
                },
                "servings": 4,
                "tips_suggestions":
                    "This Mediterranean Quinoa Salad is a wonderful and satisfying dish on its own, but you can also add grilled chicken or chickpeas for extra protein. To save time, you can cook the quinoa ahead and store it in the refrigerator. This salad makes a great meal prep option and can be packed for a healthy lunch or light dinner. For a burst of freshness, add a squeeze of lemon just before serving.",
                "storage_organization": "Refrigerate in an airtight container.",
                "isFreezeble": false
              }
            ]
          }
        ]
      }),
      
    );
  }
}
