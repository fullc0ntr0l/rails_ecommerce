# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Slider.create(
  title: 'Women Collection 2018', image_url: '/images/master-slide-02.jpg',
  promo_text: 'New arrivals', button_text: 'Shop Now', link: 'product.html'
)
Slider.create(
  title: 'Women Collection 2019', image_url: '/images/master-slide-03.jpg',
  promo_text: 'New arrivals', button_text: 'Shop Now', link: 'product.html'
)
Slider.create(
  title: 'Women Collection 2020', image_url: '/images/master-slide-04.jpg',
  promo_text: 'New arrivals', button_text: 'Shop Now', link: 'product.html'
)

Product.create(
  title: 'Herschel supply co 25l', image_url: '/images/item-02.jpg',
  link: 'product-detail.html', price: 75
)
Product.create(
  title: 'Denim jacket blue', image_url: '/images/item-03.jpg',
  link: 'product-detail.html', price: 92.50
)
Product.create(
  title: 'Coach slim easton black', image_url: '/images/item-05.jpg',
  link: 'product-detail.html', price: 165.90
)
Product.create(
  title: 'Frayed denim shorts', image_url: '/images/item-07.jpg',
  link: 'product-detail.html', price: 165.90
)
Product.create(
  title: 'Herschel supply co 25l', image_url: '/images/item-02.jpg',
  link: 'product-detail.html', price: 75
)
Product.create(
  title: 'Denim jacket blue', image_url: '/images/item-03.jpg',
  link: 'product-detail.html', price: 92.50
)
Product.create(
  title: 'Coach slim easton black', image_url: '/images/item-05.jpg',
  link: 'product-detail.html', price: 165.90
)
Product.create(
  title: 'Frayed denim shorts', image_url: '/images/item-07.jpg',
  link: 'product-detail.html', price: 165.90
)

Inspire.create(
  title: 'Black Friday Guide: Best Sales & Discount Codes',
  content: 'Duis ut velit gravida nibh bibendum commodo.' \
  ' Sus-pendisse pellentesque mattis augue id euismod.' \
  ' Inter-dum et malesuada fames',
  link: 'blog-detail.html',
  image_url: '/images/blog-01.jpg'
)
Inspire.create(
  title: 'The White Sneakers Nearly Every Fashion Girls Own',
  content: 'Nullam scelerisque, lacus sed consequat laoreet,' \
  ' dui enim iaculis leo, eu viverra ex nulla in tellus.' \
  ' Nullam nec ornare tellus, ac fringilla lacus. Ut sit ame',
  link: 'blog-detail.html',
  image_url: '/images/blog-02.jpg'
)
Inspire.create(
  title: 'New York SS 2018 Street Style: Annina Mislin',
  content: 'Proin nec vehicula lorem, a efficitur ex.' \
  ' Nam vehicula nulla vel erat tincidunt,' \
  ' sed hendrerit ligula porttitor. Fusce sit amet maximus nunc',
  link: 'blog-detail.html',
  image_url: '/images/blog-03.jpg'
)

Shipping.create(
  title: 'Free Delivery Worldwide', description: 'Click here for more info',
  link: '#'
)
Shipping.create(
  title: '30 Days Return',
  description: 'Simply return it within 30 days for an exchange.'
)
Shipping.create(
  title: 'Store Opening', description: 'Shop open from Monday to Sunday'
)
