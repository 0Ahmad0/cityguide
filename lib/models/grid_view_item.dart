class GridViewItem {
  String image;
  String text;

  GridViewItem({this.image,this.text});
}

List<GridViewItem> gridItems = [
  GridViewItem(
    image: 'assets/images/restaurants.png',
    text: 'Restaurants'
  ),
  GridViewItem(
      image: 'assets/images/hotels.png',
      text: 'Hotels'
  ),
  GridViewItem(
      image: 'assets/images/nightlife.png',
      text: 'Nightlife'
  ),
  GridViewItem(
      image: 'assets/images/shopping.png',
      text: 'Shopping'
  ),
  GridViewItem(
      image: 'assets/images/culture.png',
      text: 'Culture'
  ),
  GridViewItem(
      image: 'assets/images/popular.png',
      text: 'Popular'
  ),
];