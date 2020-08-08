//import 'package:flutter/material.dart';
import 'networking.dart';

const String prodLink =
    'https://www.digisol.com/wp-json/wp/v2/active_networking';

class Product {
  Future<dynamic> getProductIds() async {
    NetworkHelper networkHelper = NetworkHelper(prodLink);
    var prodData = await networkHelper.getData();
    return prodData;
  }

  Future<dynamic> getProductData(int id) async {
    NetworkHelper networkHelper = NetworkHelper('$prodLink/$id');
    var prodData = await networkHelper.getData();
    print(prodData);
    return prodData;
  }
}

class ProductItems {
  List<String> name;
  List<String> desc;
  List<String> image;
  List<int> id;
}

class ProductDetails {
  String name;
  String desc;
  String image;

  //List<String> images;  //use when the links for all images have been generated
  String usp;
  String feature;
}

List info = [
  {
    'name': 'DG-HR1420 (H/W Ver. A1)',
    'desc':
        'DG-HR1420 (H/W Ver. A1) , DIGISOL 150Mbps Wireless Broadband 4G/3G Home Router with USB Port',
    'image':
        'https://www.digisol.com/wp-content/uploads/2019/01/DG-HR1420-Ver1A-2.png',
    'feature':
        '1) Up to 150Mbps Wireless Speed\n2) Multiple Wireless modes to select WLAN Operation Mode\n3)Multiple SSID support for multiple Wi-Fi networks\n4)WMM function enhances the multimedia experience on wireless\n5)Better Wi-Fi coverage using High gain Antenna (5dBi)\n6)WAN Failover to 4G/3G\n7)4G Supported\n8)Protect your LAN/WLAN network using Firewall & DoS Protection\n9)URL blocking for Parental control\n10)USB Port for connecting 4G/3G Dongle 11)IPv6 Support\n',
    'USP':
        'DIGISOL DG-HR1420 wireless 4G/3G router has Quick Setup Wizard quickly configures your new wireless router to get you up and running in minutes. Our Setup Wizard shows you step by step installation process to configure your Internet connection, wireless network settings and security.',
    'detDesc':
        'DIGISOL DG-HR1420, IEEE802.11n wireless 4G/3G router provides a better wireless signal for your network than previous-generation IEEE802.11g technology. Upgrading your home network to IEEE802.11n wireless router provides an excellent solution for sharing an Internet resource and files such as video, music, and documents. DG-HR1420 use intelligent antenna technology to transmit multiple streams of data which enables you to receive wireless signals faster at your home. Not only the IEEE802.11n technology extends your wireless range, it also works with previous-generation IEEE802.11b/g wireless devices. The wireless router also includes QoS (Quality of Service) prioritization technology that analyzes and separates multiple data streams based on sensitivity to delay, enabling multiple applications to stream smoothly across your network. DG-HR1420 supports wireless 802.11b/g/n and the following security protocols: WEP, WPA, WPA2.',
  },
  {
    'name': 'DG-VG2300N',
    'desc': 'DG-VG2300N , 300 Mbps Wireless VDSL Router',
    'image':
        'https://www.digisol.com/wp-content/uploads/2018/10/DG-VG2300N-Ver1A.png',
    'feature': '',
    'USP': '',
    'detDesc': '',
  },
  {
    'name': 'DG-BR5411QAC',
    'desc':
        'DG-BR5411QAC , AC 1200 Gigabit Dual Band Wireless Broadband Router',
    'image':
        'https://www.digisol.com/wp-content/uploads/2018/10/DG-BR5411QAC-Ver1A-2.png',
    'feature': '',
    'USP': '',
    'detDesc': '',
  },
  {
    'name': 'DG-HR3300TA (H/W Ver. A1)',
    'desc':
        'DG-HR3300TA (H/W Ver. A1) , DIGISOL 300Mbps Wireless Broadband Home Router',
    'image':
        'https://www.digisol.com/wp-content/uploads/2018/09/DG-HR3300TA-Ver1A-2.png',
    'feature': '',
    'USP': '',
    'detDesc': '',
  },
  {
    'name': 'DG-HR3400 (H/W Ver. E1)',
    'desc':
        'DG-HR3400 (H/W Ver. E1) , DIGISOL 300Mbps Wireless Broadband Home Router',
    'image':
        'https://www.digisol.com/wp-content/uploads/2018/09/DG-HR3400-Ver-E1-A-3.png',
    'feature': '',
    'USP': '',
    'detDesc': '',
  },
  {
    'name': 'DG-BG4300NU',
    'desc':
        'DG-BG4300NU (H/W Ver. B2) , DIGISOL 300Mbps Wireless ADSL 2/2+ Broadband Router with USB Port',
    'image':
        'https://www.digisol.com/wp-content/uploads/2018/09/DG-BG4300NU-IS-Ver-B1-C-2.png',
    'feature': '',
    'USP': '',
    'detDesc': '',
  },
  {
    'name': 'DG-BG4100NU',
    'desc':
        'DG-BG4100NU (H/W Ver. A2) , DIGISOL 150Mbps Wireless ADSL 2/2+ Broadband Router with USB Port',
    'image':
        'https://www.digisol.com/wp-content/uploads/2018/09/DG-BG4100NU-IS-Ver-A1-C.png',
    'feature': '',
    'USP': '',
    'detDesc': '',
  },
];
