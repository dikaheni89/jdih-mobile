import 'package:flutter/material.dart';
import 'package:jdihmobile/page/listperaturan.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<ListPeraturan> dataWidgets = [
    const ListPeraturan(
      title: 'Peraturan Pusat',
      subtitle: 'Undang-Undang Republik Indonesia Nomor 48 Tahun 2009 Tentang Kekuasaan Kehakiman',
      date: 'Jan 21',
    ),
    const ListPeraturan(
      title: 'Peraturan Daerah Provinsi',
      subtitle: 'Undang-Undang Republik Indonesia Nomor 20 Tahun 2023 Tentang Aparatur Sipil Negara',
      date: 'Jan 21',
    ),
    const ListPeraturan(
      title: 'Peraturan Gubernur',
      subtitle: 'Undang-Undang Republik Indonesia Nomor 51 Tahun 2009 Tentang Perubahan Kedua Atas Undang-Undang Nomor 5 Tahun 1986 Tentang Peradilan Tata Usaha Negara',
      date: 'Aug 21',
    ),
    const ListPeraturan(
      title: 'Peraturan Daerah Kabupaten',
      subtitle: 'Undang-Undang Republik Indonesia Tentang Kebijakan Akuntansi Provinsi Banten',
      date: 'Jan 21',
    ),
    const ListPeraturan(
      title: 'Peraturan Daerah Kabupaten',
      subtitle: 'Undang-Undang Republik Indonesia Tentang Kebijakan Akuntansi Provinsi Banten',
      date: 'Jan 21',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        title: Image.asset(
          'assets/image/logo.png',
          fit: BoxFit.contain,
          height: 48,
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(16),
          child: Container(),
        ),
      ),
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Container(
          color: Colors.grey[200],
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    width: double.infinity,
                    height: 200,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/image/banner.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Produk Hukum',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(
                          Icons.add_box_outlined,
                          size: 36,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: dataWidgets.length,
                    itemBuilder: (BuildContext context, int index) {
                      return dataWidgets[index];
                    },
                  ),
                  const SizedBox(height: 16),
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Informasi Hukum',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(
                          Icons.add_box_outlined,
                          size: 36,
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
