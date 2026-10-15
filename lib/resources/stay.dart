class Stay {
  final int id;
  final String name;
  final String address;
  final String category;
  final String gender;
  final String occupancy;
  final String rooms;
  final String meals;
  final String facilities;
  final int price;
  final String contact;
  final String image;

  Stay({
    required this.id,
    required this.name,
    required this.address,
    required this.category,
    required this.gender,
    required this.occupancy,
    required this.rooms,
    required this.meals,
    required this.facilities,
    required this.price,
    required this.contact,
    required this.image,
  });
}

class StayStore {
  static final List<Stay> stays = [

    // =====================================================
    // GIRLS HOSTELS
    // =====================================================

    Stay(
      id: 1,
      name: 'Divine Girls Hostel and PG',
      address:
          'Padmalay Building, Street No. 10, Kalavad Road, Near Krishna Medical, Rajkot, Gujarat 360005.',
      category: 'Hostel',
      gender: 'Female',
      occupancy: 'Double and Triple Sharing',
      rooms: 'Both AC and Non-AC',
      meals:
          'Included. Homely vegetarian food provided 3 times a day.',
      facilities:
          'Wi-Fi, washing machine, refrigerator, RO water cooler, geyser, CCTV surveillance, attached washrooms, and female warden.',
      price: 6500,
      contact: '+91 88788 94094 / +91 81231 66515',
      image: '',
    ),

    Stay(
      id: 2,
      name: 'Sanskruti Girls Hostel',
      address:
          '3-B, Shakti Nagar, Opposite Atmiya College, New Parimal School Street, Kalavad Road, Rajkot, Gujarat 360005.',
      category: 'Hostel',
      gender: 'Female',
      occupancy: 'Triple and Quad Sharing',
      rooms: 'Both AC and Non-AC',
      meals:
          'Included. Standard 3 times a day plan.',
      facilities:
          'Full power backup, study room, library, high-speed Wi-Fi, 24-hour water supply, and strict gate security.',
      price: 0,
      contact: '+91 99989 95169 / +91 99989 95162',
      image: '',
    ),

    Stay(
      id: 3,
      name: 'Kirti Girls Hostel',
      address:
          'D-124, Raviratna Park Main Road, Golden Park, Beside Someshwar Mahadev Temple, University Road, Rajkot, Gujarat 360005.',
      category: 'Hostel',
      gender: 'Female',
      occupancy: 'Single, Double Sharing, and Multi-Bed Shared Rooms',
      rooms: 'Both AC and Non-AC',
      meals:
          'Not Included. Self-arranged or external tiffin services required.',
      facilities:
          'Standard budget rooms, 24-hour gate access, basic bed-wardrobe setups, and multi-tier female student security.',
      price: 0,
      contact: '+91 97121 56486',
      image: '',
    ),

    Stay(
      id: 4,
      name: 'Galaxy Hostel',
      address:
          '15A Corner, Street No.11, Manhar Plot, Mangla Main Road, Near Virani Chowk, Rajkot, Gujarat 360002.',
      category: 'Hostel',
      gender: 'Female',
      occupancy: 'Single, Double, Triple, Four and Five Sharing',
      rooms: 'Both AC and Non-AC',
      meals:
          'Included. Healthy vegetarian meals 3 times a day.',
      facilities:
          'In-house kitchen, study library, travel assistance, 2-wheeler parking, and 9:30 PM gate closing policy.',
      price: 0,
      contact: '+91 99790 58384 / +91 8904615538',
      image: '',
    ),

    Stay(
      id: 5,
      name: 'Shiv Girls Hostel',
      address:
          'Shreenathji Park Street No. 3, Behind HP Petrol Pump, Panchayat Nagar, University Road, Rajkot, Gujarat 360005.',
      category: 'Hostel',
      gender: 'Female',
      occupancy: 'Double Sharing and Triple Sharing',
      rooms: 'Both AC and Non-AC',
      meals:
          'Included. Standard student meal package, 3 times a day.',
      facilities:
          'Library/study room, hot shower facility, 2-wheeler parking, no-smoking campus, and CCTV surveillance.',
      price: 0,
      contact: '+91 9054778528 / +91 83206 41608',
      image: '',
    ),

    Stay(
      id: 6,
      name: 'Samras Girls Hostel',
      address:
          'Saurashtra University Campus, Munjka, Rajkot, Gujarat 360005.',
      category: 'Hostel',
      gender: 'Female',
      occupancy: 'Two and Four Sharing',
      rooms: 'Only Non-AC',
      meals:
          'Included. Government-funded daily mess providing 3 times a day meals.',
      facilities:
          'Massive campus grounds, housekeeping, subsidized entry, university-standard warden rules, and electronic device restrictions.',
      price: 0,
      contact: '+91 63560 66706',
      image: '',
    ),

    Stay(
      id: 7,
      name: 'Late MJ Kundalia Girls Hostel',
      address:
          'Ram Krishna Nagar, Street No. 1, Near Ramkrishna Ashram Street, Virani Chowk, Rajkot, Gujarat 360002.',
      category: 'Hostel',
      gender: 'Female',
      occupancy: 'Multiple sharing, ranging up to 4 to 6 occupants',
      rooms: 'Only Non-AC',
      meals:
          'Included. Standard 3 times a day traditional Gujarati student mess.',
      facilities:
          'Basic bedding, secure access points, and walking proximity to local commercial hubs.',
      price: 0,
      contact: '+91 99787 08986',
      image: '',
    ),

    Stay(
      id: 8,
      name: 'Shri Hari Wings Hostel',
      address:
          'Nalanda Society, Near Kotecha Circle, Street No 4, Kalavad Road, Rajkot-360005, Gujarat',
      category: 'Hostel',
      gender: 'Female',
      occupancy: 'Double and Triple Sharing',
      rooms: 'Both AC and Non-AC',
      meals:
          'Included. Student-oriented meal schedules 3 times a day.',
      facilities:
          'High-speed internet, daily housekeeping, treated drinking water, and dedicated student workspaces.',
      price: 0,
      contact: '+91 8460408131',
      image: '',
    ),

    Stay(
      id: 9,
      name: 'Wellcare Girls Hostel',
      address:
          'Street No. 3, Shakti Colony Main Road, Near PGVCL Electric Office, Jagnath Plot, Rajkot, Gujarat 360001.',
      category: 'Hostel',
      gender: 'Female',
      occupancy: 'Single Rooms and Twin Sharing',
      rooms: 'Both AC and Non-AC',
      meals:
          'Included. Standard 3 times a day tiffin-style home meals.',
      facilities:
          'Power backup, security locks, RO water purifier, and laundry area access.',
      price: 0,
      contact: '+91 94282 20111',
      image: '',
    ),

    // =====================================================
    // GIRLS PG
    // =====================================================

    Stay(
      id: 10,
      name: "Natural Girl's P.G. Homes",
      address:
          'Opposite R.K. University, Near Greenfarm Hostel, Bhavnagar Highway, Kasturbadham, Rajkot, Gujarat 360020.',
      category: 'PG',
      gender: 'Female',
      occupancy: 'Double Sharing and Triple Sharing',
      rooms: 'Only Non-AC',
      meals:
          'Included. 3 times a day.',
      facilities:
          'Transport assistance, regular room cleaning, study furniture, and high-speed student Wi-Fi.',
      price: 0,
      contact: '+91 97148 86450',
      image: '',
    ),

    Stay(
      id: 11,
      name: "Kashmira's Girls PG",
      address:
          'Tagor Nagar Street 2, Kotecha Chowk, Near Saurashtra Highschool, Kalavad Road, Rajkot, Gujarat 360005.',
      category: 'PG',
      gender: 'Female',
      occupancy: 'Double Sharing and Triple Sharing',
      rooms: 'Both AC and Non-AC',
      meals:
          'Included. Custom home-cooked meals served 2 to 3 times a day.',
      facilities:
          'Homely residential atmosphere, geyser, refrigerator access, and personal wardrobes.',
      price: 0,
      contact: '+91 63519 83760',
      image: '',
    ),

    Stay(
      id: 12,
      name: 'Raadhe Meera Girls PG',
      address:
          'Gondal Road, Hanuman Mandir, Gayatri Main Road, Bhaktinagar Circle, Rajkot-360002, Gujarat',
      category: 'PG',
      gender: 'Female',
      occupancy: 'Single, Double, Triple, Four, Five',
      rooms: 'Only Non-AC',
      meals:
          'Included. Traditional Kathiyawadi/Gujarati menu 3 times a day.',
      facilities:
          'Water storage backup, CCTV protection, personal lockers, and basic housekeeping.',
      price: 0,
      contact: '+91 737 73791',
      image: '',
    ),

    Stay(
      id: 13,
      name: 'Gurukrupa PG House and Hostel',
      address:
          'Street Number 6, Sarvoday Society, Near Shree P.V. Modi High School, Ramkrishna Nagar, Rajkot, Gujarat 360002.',
      category: 'PG',
      gender: 'Female',
      occupancy: 'Twin and Triple Sharing',
      rooms: 'Only Non-AC',
      meals:
          'Included. In-house student mess operating 3 times a day.',
      facilities:
          'Attached washrooms, study tables, routine disinfection, and secure visitor logs.',
      price: 0,
      contact: '+91 94272 64849',
      image: '',
    ),

    Stay(
      id: 14,
      name: 'Sukoon PG for Girls',
      address:
          'Ramkrishna Nagar West Main Road, Behind Hemu Gadhavi Hall, Near Virani School, Rajkot, Gujarat 360002.',
      category: 'PG',
      gender: 'Female',
      occupancy: 'Double Sharing and Triple Sharing',
      rooms: 'Both AC and Non-AC',
      meals:
          'Included. In-house student mess operating 3 times a day.',
      facilities:
          'Attached washrooms, study tables, routine disinfection, and secure visitor logs.',
      price: 0,
      contact: '+91 88668 11101',
      image: '',
    ),

    Stay(
      id: 15,
      name: 'Shiksha Girls PG',
      address:
          'House No. 4, Street No. 5, Sardarnagar, Astron Chowk, Rajkot, Gujarat 360001.',
      category: 'PG',
      gender: 'Female',
      occupancy: 'Double and Triple Sharing',
      rooms: 'Both AC and Non-AC',
      meals:
          'Included. Healthy vegetarian menu 3 times a day.',
      facilities:
          'Central city location, filtered drinking water, laundry machines, and safety warden checks.',
      price: 0,
      contact: '+91 94262 89288',
      image: '',
    ),

    Stay(
      id: 16,
      name: 'Alka PG',
      address:
          '"Alka" House No. 12, Ramkrishna Nagar, Near RMC Commissioner Bungalow Road, Virani Chowk, Rajkot, Gujarat 360002.',
      category: 'PG',
      gender: 'Female',
      occupancy: 'Double Sharing',
      rooms: 'Only Non-AC',
      meals:
          'Included. Home-cooked vegetarian plans 3 times a day.',
      facilities:
          'Common television lounge, regular cleaning, first-aid kits, and high security.',
      price: 0,
      contact: 'Available for direct inquiries on-premise.',
      image: '',
    ),

    // =====================================================
    // BOYS HOSTELS
    // =====================================================

    Stay(
      id: 17,
      name: 'UV Boys Hostel',
      address:
          'Om Nagar Circle, 150 Ft Ring Road, BRTS, Rajkot, Gujarat 360004.',
      category: 'Hostel',
      gender: 'Male',
      occupancy: 'Double Sharing and Triple Sharing',
      rooms: 'Both AC and Non-AC',
      meals:
          'Included. Multi-cuisine student mess serving 3 times a day.',
      facilities:
          'Gym/fitness area, high-speed Wi-Fi, biometric access systems, and automated washing systems.',
      price: 0,
      contact: '+91 73592 01196',
      image: '',
    ),

    Stay(
      id: 18,
      name: 'Shivam Hostel and PG',
      address:
          'Kalavad Road, Opposite Atmiya College, Nandanavan Society, Shakti Nagar, Rajkot, Gujarat 360005.',
      category: 'Hostel',
      gender: 'Male',
      occupancy: 'Double and Triple Sharing',
      rooms: 'Both AC and Non-AC',
      meals:
          'Included. Student-centric mess plans 3 times a day.',
      facilities:
          'Reliable Wi-Fi, tiffin tracking, AC packages, and 24/7 security desks.',
      price: 0,
      contact: '+91 97243 12901',
      image: '',
    ),

    Stay(
      id: 19,
      name: 'Galaxy Prime Boys Hostel',
      address:
          'Rajkot - Morbi Highway, Opposite APMC Yard, Bedi, Rajkot, Gujarat 360028.',
      category: 'Hostel',
      gender: 'Male',
      occupancy: 'Twin and Triple Sharing',
      rooms: 'Both AC and Non-AC',
      meals:
          'Included. Meals served 3 times a day.',
      facilities:
          'Two-wheeler parking, power backup, water purification plants, and recreation rooms.',
      price: 0,
      contact: '+91 81404 02585',
      image: '',
    ),

    Stay(
      id: 20,
      name: 'Achievers Hostel and PG',
      address:
          'Archana Park, Near Swaminarayan Bakery, University Road, Rajkot, Gujarat 360005.',
      category: 'Hostel',
      gender: 'Male',
      occupancy: 'Twin Sharing and Triple Sharing',
      rooms: 'Both AC and Non-AC',
      meals:
          'Included. Standard 3 times a day.',
      facilities:
          'Study zones, high-speed Wi-Fi, personal lockers, and close transit proximity.',
      price: 0,
      contact: '+91 95120 68712',
      image: '',
    ),

    Stay(
      id: 21,
      name: 'VP Brothers Hostel and PG',
      address:
          'AG Chowk, 1, Ravi Park Street, Near Crystal Mall, Sadguru Nagar, Rajkot, Gujarat 360005.',
      category: 'Hostel',
      gender: 'Male',
      occupancy: 'Double and Triple Sharing',
      rooms: 'Only Non-AC',
      meals:
          'Included. Food served 3 times a day.',
      facilities:
          'Modern fixtures, entertainment center access, AC options, and individual desk spaces.',
      price: 0,
      contact: 'Available for direct entry at the premises.',
      image: '',
    ),

    Stay(
      id: 22,
      name: 'Vaidik Boys Hostel',
      address:
          'University Road, Indira Circle, Jalaram Nagar, Rajkot, Gujarat 360005.',
      category: 'Hostel',
      gender: 'Male',
      occupancy: 'Double Sharing and Triple Sharing',
      rooms: 'Only Non-AC',
      meals:
          'Included. Traditional vegetarian food 3 times a day.',
      facilities:
          'Disciplined environment, running water, library corners, and CCTV monitoring.',
      price: 0,
      contact: '+91 99780 57515',
      image: '',
    ),

    Stay(
      id: 23,
      name: 'Savaliya Boys Hostel and PG',
      address:
          '"Shriji Bungalow", Near Fulwadi Park, Satya Sai Heart Hospital Road, Kalavad Road, Rajkot, Gujarat 360005.',
      category: 'Hostel',
      gender: 'Male',
      occupancy: 'Triple Sharing',
      rooms: 'AC and Non-AC',
      meals:
          'Included. Standard package 3 times a day.',
      facilities:
          'Common lounges, maintenance assistance, cooling systems, and personal closet spaces.',
      price: 0,
      contact: '+91 72280 07216 / +91 72720 72270',
      image: '',
    ),

    Stay(
      id: 24,
      name: 'Sahajanand Boys Hostel and PG',
      address:
          'Street No. 9, Kalyan Society, Manhar Plot, Bhakti Nagar, Rajkot, Gujarat 360002.',
      category: 'Hostel',
      gender: 'Male',
      occupancy: 'Double Sharing and Triple Sharing',
      rooms: 'Non-AC',
      meals:
          'Included. Regional menu served 3 times a day.',
      facilities:
          'Secure entry gates, floor cleaning, ceiling fans, and water storage.',
      price: 0,
      contact: '+91 98985 71616',
      image: '',
    ),

    Stay(
      id: 25,
      name: 'Galaxy Elegance Hostel',
      address:
          'Patel Colony, Chandreshnagar, Arya Samaj Road Chowk, Rajkot, Gujarat 360004.',
      category: 'Hostel',
      gender: 'Male',
      occupancy: 'Twin Sharing and Triple Sharing',
      rooms: 'AC and Non-AC',
      meals:
          'Included. Premium dining 3 times a day.',
      facilities:
          'Upgraded interiors, laundry services, Wi-Fi, and visitor monitoring.',
      price: 0,
      contact: '+91 97265 02585',
      image: '',
    ),

    Stay(
      id: 26,
      name: 'VSS Boys Hostel',
      address:
          'Laxminagar Street No. 3, Chandreshnagar, Rajkot, Gujarat 360004.',
      category: 'Hostel',
      gender: 'Male',
      occupancy: 'Triple Sharing',
      rooms: 'Non-AC',
      meals:
          'Included. Basic student menu 3 times a day.',
      facilities:
          'Filtered drinking water, emergency lighting, storage bins, and simple floor layouts.',
      price: 0,
      contact: 'Available for physical verification during check-in.',
      image: '',
    ),

    // =====================================================
    // BOYS PG
    // =====================================================

    Stay(
      id: 27,
      name: 'The Penthouse PG',
      address:
          'Harihar Society, Amin Marg, Kotecha Nagar, Rajkot, Gujarat 360001.',
      category: 'PG',
      gender: 'Male',
      occupancy: 'Single, Double, and Triple Sharing',
      rooms: 'Both AC and Non-AC',
      meals:
          'Not Included or optional premium external vendor.',
      facilities:
          'Private terrace/balcony, premium air conditioning, personal lounges, and high-end security.',
      price: 8000,
      contact: '+91 84600 42602 / +91 84602 07289',
      image: '',
    ),

    Stay(
      id: 28,
      name: 'Shree Balaji PG and Residency',
      address:
          '10 Corner, Jalaram Plot No. 2, Street No. 3, Near Sister Nivedita Institute, University Road, Jalaram Nagar, Rajkot, Gujarat 360005.',
      category: 'PG',
      gender: 'Male',
      occupancy: 'Double and Triple Sharing',
      rooms: 'Both AC and Non-AC',
      meals:
          'Included. Cafeteria operating 3 times a day.',
      facilities:
          'Lift, internal bike parking, high-speed internet, and laundry.',
      price: 0,
      contact: '+91 99984 19866',
      image: '',
    ),

    Stay(
      id: 29,
      name: 'Govind Kunj Boys PG and Hostel',
      address:
          'Amarnath Plot No. 1, Street 1, Behind Swaminarayan Temple, Kalavad Road, Rajkot, Gujarat 360007.',
      category: 'PG',
      gender: 'Male',
      occupancy: 'Triple and Quad Sharing',
      rooms: 'Both AC and Non-AC',
      meals:
          'Included. Traditional home-style food 3 times a day.',
      facilities:
          'Study tables, overhead fans, lockers, and filtered water systems.',
      price: 0,
      contact: '+91 99983 97158',
      image: '',
    ),

    Stay(
      id: 30,
      name: 'Ashirwad PG',
      address:
          'Plot No. 185, Street No. 19, near Kidney Hospital, Shiv Shakti Colony, Sadguru Nagar, Rajkot, Gujarat 360005.',
      category: 'PG',
      gender: 'Male',
      occupancy: 'Twin and Triple Sharing',
      rooms: 'Both AC and Non-AC',
      meals:
          'Included. Home tiffins 2 to 3 times a day.',
      facilities:
          'Residential neighborhood, common washing area, independent keys, and storage alcoves.',
      price: 0,
      contact: '+91 99249 58022 / +91 7942698222',
      image: '',
    ),

    // =====================================================
    // CO-LIVING
    // =====================================================

    Stay(
      id: 31,
      name: 'Royal Home Stay',
      address:
          'Shree Ram Park Main Road, Near KKV Hall, Kalavad Road, Rajkot, Gujarat 360005.',
      category: 'Room',
      gender: 'Co-Living',
      occupancy: 'Twin Sharing and Triple Sharing',
      rooms: 'Both AC and Non-AC',
      meals:
          'Customizable from no meals to 2 times a day.',
      facilities:
          'Hotel-style furnished bedrooms, attached bathrooms, individual AC units, and housekeeping.',
      price: 0,
      contact: '+91 8511664562',
      image: '',
    ),

    Stay(
      id: 32,
      name: 'Akshar Bhavan Boys & Girls PG',
      address:
          'Opposite Shahid Bhagatsinh Garden, University Road Main Corner, Pushkardham Main Road, Akashwani Chowk, Rajkot, Gujarat 360005.',
      category: 'Room',
      gender: 'Co-Living',
      occupancy: 'Double, Triple, Four, and Five-person Sharing',
      rooms: 'Both AC and Non-AC',
      meals:
          'Included. Kitchens serving 3 times a day.',
      facilities:
          'Security zones, central compound, CCTV, and high-speed routers.',
      price: 0,
      contact: '+91 8460308363',
      image: '',
    ),

    Stay(
      id: 33,
      name: 'Oriental Boys & Girls Hostel',
      address:
          'Devangar Main Road, Opposite 9 Square, Naherunagar Society, Nana Mava, Rajkot, Gujarat 360005.',
      category: 'Room',
      gender: 'Co-Living',
      occupancy: 'Double and Triple Sharing',
      rooms: 'Only Non-AC',
      meals:
          'Included. Gender-specific mess lines 3 times a day.',
      facilities:
          'Boundary-wall security, emergency medical procedures, community rooms, and laundry.',
      price: 0,
      contact: '+91 9724620067',
      image: '',
    ),

    Stay(
      id: 34,
      name: 'Sandipani Girls and Boys Hostel',
      address:
          'Shreenathji Krupa Bungalow, Shakti Nagar Colony, Near New Parimal School and Atmiya School, Kalavad Road, Rajkot-360005, Gujarat',
      category: 'Room',
      gender: 'Co-Living',
      occupancy: 'Double and Triple Sharing',
      rooms: 'Both AC and Non-AC',
      meals:
          'Included. Standard 3 times a day.',
      facilities:
          'Educational trust oversight, open spaces, RO purification, and security guards.',
      price: 0,
      contact: '+91 041571116',
      image: '',
    ),

    Stay(
      id: 35,
      name: 'Dreamland PG and Hostel',
      address:
          'Opp. Rajkumar College, Limda Chowk, Indira Nagar Main Road, Rajkot, Gujarat 360001.',
      category: 'Room',
      gender: 'Co-Living',
      occupancy: 'Single, Double, Triple, Four Sharing',
      rooms: 'Both AC and Non-AC',
      meals:
          'Included. 3 times a day catering.',
      facilities:
          'Shared lounges, 24/7 security, bedding sets, and city transit access.',
      price: 0,
      contact: '+91 7043525830',
      image: '',
    ),

    Stay(
      id: 36,
      name: 'Dwarkesh PG',
      address:
          'Elegance, 1st Floor, Behind KKV Hall, Kalawad Road, KKV Circle, Rajkot-360005, Gujarat',
      category: 'Room',
      gender: 'Co-Living',
      occupancy: 'Double and Triple Sharing',
      rooms: 'Both AC and Non-AC',
      meals:
          'Included. Traditional home cooking 3 times a day.',
      facilities:
          'Clothing storage, automated water pumps, security check-ins, and high-speed Wi-Fi.',
      price: 0,
      contact: '+91 7947143469',
      image: '',
    ),
  ];
}