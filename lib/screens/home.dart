import 'package:flutter/material.dart';
import 'package:simon/components/appbar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final PageController _pageController = PageController(initialPage: 0);
  int _activePage = 0;

  final List<Widget> _pages = [
    const Banner(
      header: 'Best Furniture',
      subtitle: '3 years warranty',
      color: Color.fromARGB(255, 205, 6, 122),
    ),
    const Banner(
      header: 'Reliable Furniture',
      subtitle: 'reliable',
      color: Colors.blue,
    ),
  ];

  final List<Widget> _saleItems = [
    const SaleItem(
        image: 'assets/lamp.png',
        title: 'Black Table Lamp',
        newPrice: '\$7.99',
        oldPrice: '\$15',
        percentSold: 92),
    const SaleItem(
        image: 'assets/lamp.png',
        title: 'Modern Sofa',
        newPrice: '\$36',
        oldPrice: '\$49',
        percentSold: 28),
    const SaleItem(
        image: 'assets/lamp.png',
        title: 'Modern Sofa',
        newPrice: '\$36',
        oldPrice: '\$49',
        percentSold: 28),
  ];

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;

    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        const MyAppBar(),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 190,
            child: Stack(
              children: [
                PageView.builder(
                  controller: _pageController,
                  onPageChanged: (int page) {
                    setState(() {
                      _activePage = page;
                    });
                  },
                  itemCount: _pages.length,
                  itemBuilder: (context, index) {
                    return _pages[index % _pages.length];
                  },
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List<Widget>.generate(_pages.length, (index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 7),
                        child: InkWell(
                          onTap: () {
                            _pageController.animateToPage(index,
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.easeIn);
                          },
                          child: CircleAvatar(
                            radius: _activePage == index ? 8 : 5,
                            backgroundColor: Colors.white,
                          ),
                        ),
                      );
                    }),
                  ),
                ),
              ],
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          sliver: SliverFixedExtentList(
            itemExtent: 295,
            delegate: SliverChildListDelegate([
              Container(
                margin: const EdgeInsets.only(top: 20),
                width: w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Row(
                      children: [
                        Text(
                          'Product Category',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        SizedBox(
                          width: w / 3.2,
                          height: 120,
                          child: const Card(
                            color: Colors.white,
                            margin: EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.favorite,
                                  color: Colors.blue,
                                ),
                                SizedBox(height: 8),
                                Text('Women\'s')
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: w / 3.2,
                          height: 120,
                          child: const Card(
                            color: Colors.white,
                            margin: EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.local_drink,
                                  color: Colors.blue,
                                ),
                                SizedBox(height: 8),
                                Text('Juice')
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: w / 3.2,
                          height: 120,
                          child: const Card(
                            color: Colors.white,
                            margin: EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.local_pizza,
                                  color: Colors.blue,
                                ),
                                SizedBox(height: 8),
                                Text('Foods')
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        SizedBox(
                          width: w / 3.2,
                          height: 120,
                          child: const Card(
                            color: Colors.white,
                            margin: EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Colors.blue,
                                ),
                                SizedBox(height: 8),
                                Text('Sports')
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: w / 3.2,
                          height: 120,
                          child: const Card(
                            color: Colors.white,
                            margin: EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.man,
                                  color: Colors.blue,
                                ),
                                SizedBox(height: 8),
                                Text('Men\'s')
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: w / 3.2,
                          height: 120,
                          child: const Card(
                            color: Colors.white,
                            margin: EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.beach_access,
                                  color: Colors.blue,
                                ),
                                SizedBox(height: 8),
                                Text('Travel')
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                width: w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Flash Sale',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        IconButton(
                          icon: const Icon(Icons.more_horiz),
                          iconSize: 35,
                          color: Colors.blue,
                          onPressed: () {},
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Expanded(
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        itemCount: _saleItems.length,
                        itemBuilder: (context, index) {
                          return _saleItems[index];
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ],
    );
  }
}

class SaleItem extends StatelessWidget {
  const SaleItem({
    super.key,
    required this.image,
    required this.title,
    required this.newPrice,
    required this.oldPrice,
    required this.percentSold,
  });

  final String image;
  final String title;
  final String newPrice;
  final String oldPrice;
  final int percentSold;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: SizedBox(
        width: 170,
        child: Card(
          margin: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Image.asset(image, width: 80, height: 100, fit: BoxFit.fill),
                const SizedBox(height: 7),
                Text(title, style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w500, overflow: TextOverflow.ellipsis)),
                const SizedBox(height: 7),
                RichText(
                  text: TextSpan(
                    style: const TextStyle(color: Colors.blue, fontSize: 16),
                    children: [
                      TextSpan(text: '$newPrice  '),
                      TextSpan(
                        text: oldPrice,
                        style: const TextStyle(
                          decoration: TextDecoration.lineThrough,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 7),
                Text('$percentSold% Sold Out'),
                const SizedBox(height: 4),
                SizedBox(
                  height: 5,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: LinearProgressIndicator(
                      backgroundColor: Colors.black12,
                      valueColor: AlwaysStoppedAnimation<Color>(
                          percentSold >= 85 ? Colors.red : Colors.blue),
                      value: double.parse(percentSold.toString()) / 100,
                      minHeight: 5,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Banner extends StatelessWidget {
  const Banner({
    super.key,
    required this.header,
    required this.subtitle,
    required this.color,
  });

  final String header;
  final String subtitle;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
      color: color,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            header,
            style: const TextStyle(
                color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 7),
          Text(
            subtitle,
            style: const TextStyle(color: Colors.white),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 249, 111, 111),
              foregroundColor: Colors.white,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5))),
            ),
            onPressed: () {},
            child: const Text('Buy Now'),
          ),
        ],
      ),
    );
  }
}
