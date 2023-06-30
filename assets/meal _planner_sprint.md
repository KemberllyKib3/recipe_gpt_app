# Meal planner 
Can you help me with a personalized meal plan for [nDays] days? 

My dietary preferences are [dietaryPreferences]. 
I have a goal of [calorieMacronutrientGoals]. 
I would like [nMeals] in a day.
I like [cuisinePreferences] cuisine. 
I have [dietaryRestrictions] to consider. 
I am a [level] cook and have [time] minutes for meal preparation.


Follow this pattern:
[Day 1]: 
- [Meal 1]
- [Meal n]
...
[Day n]: 
- [Meal 1]
- [Meal n]
...

Preparation: 
[Preparation time] - [dificulty]

Ingredients
how to prepare
Instructions for organized storage

Tips and suggestions



=========


Can you help me with a personalized meal plan for [5] days? 

My dietary preferences are [beef, chicken, rice]. 
I have a goal of [2000] kcal. 
I would like [2] in a day.
I like [brazilian] cuisine. 
I have [nuts-free] to consider. 
I am a [amateur] cook and have [60] minutes for meal preparation.


Follow this pattern:
[Day 1]: 
- [Meal 1]
- [Meal n]
...
[Day n]: 
- [Meal 1]
- [Meal n]
...

Preparation: 
[Preparation time] - [dificulty]

Ingredients
how to prepare
Instructions for organized storage

Tips and suggestions

=====

Can you help me to take all those ingredients from all dishes to make a shopping list?

I need this to export in JSON as follow:
{
    "shopping_list": "Meal plan for [nDays]",
    "description": "exported in [date] from [Recipe GPT]",
    "items": [
        {
            "product_name": [itemName],
            "quantity": [amount]
        },
        ...
        {
            "product_name": [itemName],
            "quantity": [amount]
        }
    ]
}