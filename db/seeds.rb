# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Slider.create(
  title: 'Women Collection 2018',
  promo_text: 'New arrivals', button_text: 'Shop Now', link: 'product.html'
)
Slider.create(
  title: 'Women Collection 2019',
  promo_text: 'New arrivals', button_text: 'Shop Now', link: 'product.html'
)
Slider.create(
  title: 'Women Collection 2020',
  promo_text: 'New arrivals', button_text: 'Shop Now', link: 'product.html'
)

Product.create(
  title: 'Herschel supply co 25l',
  link: 'product-detail.html', price: 75
)
Product.create(
  title: 'Denim jacket blue',
  link: 'product-detail.html', price: 92.50
)
Product.create(
  title: 'Coach slim easton black',
  link: 'product-detail.html', price: 165.90
)
Product.create(
  title: 'Frayed denim shorts',
  link: 'product-detail.html', price: 165.90
)
Product.create(
  title: 'Herschel supply co 25l',
  link: 'product-detail.html', price: 75
)
Product.create(
  title: 'Denim jacket blue',
  link: 'product-detail.html', price: 92.50
)
Product.create(
  title: 'Coach slim easton black',
  link: 'product-detail.html', price: 165.90
)
Product.create(
  title: 'Frayed denim shorts',
  link: 'product-detail.html', price: 165.90
)

Inspire.create(
  title: 'Black Friday Guide: Best Sales & Discount Codes',
  content: 'Duis ut velit gravida nibh bibendum commodo.' \
  ' Sus-pendisse pellentesque mattis augue id euismod.' \
  ' Inter-dum et malesuada fames',
  link: 'blog-detail.html'
)
Inspire.create(
  title: 'The White Sneakers Nearly Every Fashion Girls Own',
  content: 'Nullam scelerisque, lacus sed consequat laoreet,' \
  ' dui enim iaculis leo, eu viverra ex nulla in tellus.' \
  ' Nullam nec ornare tellus, ac fringilla lacus. Ut sit ame',
  link: 'blog-detail.html'
)
Inspire.create(
  title: 'New York SS 2018 Street Style: Annina Mislin',
  content: 'Proin nec vehicula lorem, a efficitur ex.' \
  ' Nam vehicula nulla vel erat tincidunt,' \
  ' sed hendrerit ligula porttitor. Fusce sit amet maximus nunc',
  link: 'blog-detail.html'
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
