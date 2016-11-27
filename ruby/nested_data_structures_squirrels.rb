food_pyramid = {
	'Vegetables' => ['lettuce','carrots','string beans', 'collards'],
	:dairy => ['yogurt','milk','cheese',],
	:meats => ['chicken','fish','beef','goat','lamb'],
	'Fruits' => ['papaya','oranges','avocado','watermelon']
}

p food_pyramid['Vegetables'][3]
p food_pyramid[:dairy]
p food_pyramid['Grains & Cereals']=['bread','rice', 'barley','amaranth']
p food_pyramid [:meats].push('turkey')
p food_pyramid['Fruits'][-1] = 'mango'
p food_pyramid['Fruits']