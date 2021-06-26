class ItemBoard {
  String image, cityName, description;

  ItemBoard({
    this.image,
    this.cityName,
    this.description,
  });
}

List<ItemBoard> items = [
  ItemBoard(
    image: 'assets/images/london.jpg',
    cityName: 'London City',
    description: "London is the capital and most populous city of England and the United Kingdom Standing on the River Thames in the south east of the island of Great Britain, London has been a major settlement for two millennia. It was founded by the Romans, who named it Londinium. London's ancient core",
  ),
  ItemBoard(
    image: 'assets/images/moscow.jpg',
    cityName: 'Moscow City',
    description: "Moscow is the capital and largest city of Russia. The city stands on the Moskva River in Central Russia, with a population estimated at 12.4 million residents within the city limits, over 17 million residents in the urban area, and over 20 million residents in the metropolitan area.",
  ),
  ItemBoard(
    image: 'assets/images/nweyork.jpg',
    cityName: 'New York City',
    description: "New York City, often simply called New York, is the most populous city in the United States. With an estimated 2019 population of 8,336,817 distributed over about 302.6 square miles, New York City is also the most densely populated major city in the United States. Located at the southern",
  ),
  ItemBoard(
    image: 'assets/images/paris.jpg',
    cityName: 'Paris City',
    description: "Paris is the capital and most populous city of France, with an estimated population of 2,175,601 residents as of 2018, in an area of more than 105 square kilometres. Since the 17th century, Paris has been one of Europe's",
  ),
];
