import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'IT Department-FAMT',
      home: Scaffold(
        appBar: AppBar(
          leading: Builder(
            builder: (context) => PopupMenuButton(
              icon:
                  Icon(Icons.menu), //don't specify icon if you want 3 dot menu
              color: Colors.blueAccent,
              itemBuilder: (context) => [
                PopupMenuItem<int>(
                  value: 0,
                  child: Text(
                    "Vision",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                PopupMenuItem<int>(
                  value: 1,
                  child: Text(
                    "HOD",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
               PopupMenuItem<int>(
                  value: 2,
                  child: Text(
                    "Mission",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                PopupMenuItem<int>(
                  value: 3,
                  child: Text(
                    "Faculty",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                PopupMenuItem<int>(
                  value: 4,
                  child: Text(
                    "AboutDepartment",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                PopupMenuItem<int>(
                  value: 5,
                  child: Text(
                    "Academics",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
              onSelected: (value) => {
                if (value == 0)
                  vision(context)
                else if (value == 1)
                  HOD(context)
                else if (value == 2)
                  Mission(context)
                else if (value == 3)
                  Faculty(context)
                else if (value == 4)
                  AboutDepartment(context)
                else if (value == 5)
                  Academics(context)
              },
            ),
          ),
          title: Text(
              "Welcome To IT Department of Finolex Academy of Management and Technology, Ratnagiri"),
          backgroundColor: Colors.blueAccent,
        ),
        body: Builder(
          builder: (context) => Center(
            child: Container(
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/Famtimage.jpg',
                    height: 450,
                    width: 1000,
                  ),
                  Wrap(
                    spacing: 100,
                    children: [
                      RaisedButton(
                        padding: const EdgeInsets.all(25),
                        child: Text(
                          'Programming Lab',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () => ProgrammingLab(context),
                        textColor: Colors.white,
                        color: Color.fromARGB(255, 228, 231, 9),
                      ),
                      RaisedButton(
                        padding: const EdgeInsets.all(25),
                        child: Text(
                          'DBMS Lab',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () => DBMS(context),
                        textColor: Colors.white,
                        color: Color.fromARGB(255, 17, 167, 24),
                      ),
                      RaisedButton(
                        padding: const EdgeInsets.all(25),
                        child: Text(
                          'Networks Lab',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () => NetworksLab(context),
                        textColor: Colors.white,
                        color: Color.fromARGB(255, 231, 59, 6),
                      ),
                      RaisedButton(
                        padding: const EdgeInsets.all(25),
                        child: Text(
                          'IoT Lab',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () => IoTLab(context),
                        textColor: Colors.white,
                        color: Color.fromARGB(255, 194, 7, 122),
                      ),
                       RaisedButton(
                        padding: const EdgeInsets.all(25),
                        child: Text(
                          'Web Lab',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () => WebLab(context),
                        textColor: Colors.white,
                        color: Color.fromARGB(255, 44, 2, 99),
                      ),
                       RaisedButton(
                        padding: const EdgeInsets.all(25),
                        child: Text(
                          'MAD & NVDIA Lab',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () => NVDIALab(context),
                        textColor: Colors.white,
                        color: Color.fromARGB(255, 44, 2, 99),
                      ),
                    ],
                  ),
                  Text(""),
                  RaisedButton(
                    padding: const EdgeInsets.all(25),
                    child: Text(
                      'Contact Us',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () => contactUs(context),
                    textColor: Colors.white,
                    color: Color.fromARGB(255, 33, 9, 163),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void contactUs(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Contact Us'),
          content: Text(
              'Email ID: hodit@famt.ac.in \n \n Address:Finolex Academy Of Management And Technology,Ratnagiri \n\n, P- 60, P- 60/1, MIDC, Mirjole Block, Ratnagiri - 415639\n\nPhone No: 7559463770'),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }

  void ProgrammingLab(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Welcome To Programming Lab'),
          content: Column(
            children: [
              Image.asset
                'assets/images/Programming lab.png',
                height: 350,
              ),
              // Text("Hello"),
              Text("Incharge: Prof. Mandar Joshi. \n \n Mr. Mandar S. Joshi \n Asst Professor \n Qualification - M E \n Status - USSC \n Areas of Interest - Operating Systems, Data Mining, Machine Learning \n Complete Profile",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.justify),
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }

  void DBMS(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Welcome To DBMS Lab'),
          content: Column(
            children: [
              Image.network(
                'https://images.pexels.com/photos/3747486/pexels-photo-3747486.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                height: 350,
              ),
              // Text("Hello"),
              Text(
                "Incharge: Prof. Swati Powar. \n \n Mrs. Swati A. Powar \n Asst Professor \n Qualification - M E \n Status - USSC \n Areas of Interest - Data Analytics \n Complete Profile",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }

  void NetworksLab(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Welcome To Networks Lab'),
          content: Column(
            children: [
              Image.asset(
                'assets/images/NetworkLab.jpg',
                height: 350,
              ),
              // Text("Hello"),
              Text(
                "Incharge: Prof. Atiya Kazi \n \n Ms. Atiya R. Kazi \n Asst. Professor \n Qualification - M E \n Status - USSC \n Areas of Interest - Computer Networks, Network Security, Cryptography \n Complete Profile",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }

  void IoTLab(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Welcome To Internet of Things Lab'),
          content: Column(
            children: [
              Image.network(
                'https://images.pexels.com/photos/267507/pexels-photo-267507.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                height: 350,
              ),
              // Text("Hello"),
              Text("Incharge: Prof. Dr. Vinayak Bharadi \n \n Dr. Vinayak A. Bharadi \n HOD and Professor\n Qualification :- Ph D \n Status:- USSC \n Areas of Interest:- Deep Learning, Blockchain, Cloud Computing, Big Data Analytics, Digital Signal Processing \n Complete Profile",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.justify),
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }

   void WebLab(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Welcome To Web Lab'),
          content: Column(
            children: [
              Image.asset(
                'assets/images/Weblab.jpg',
                height: 350,
              ),
              // Text("Hello"),
              Text("Incharge: Prof.Amar Pawalnkar \n \n Mr. Amar R. Palwankar\n Asst Professor \n Qualification - M Tech\n Status - USSC\n Areas of Interest - Data Science IoT Machine Learning Deep Learning\nComplete Profile",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.justify),
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }
  void NVDIALab (BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Welcome To MAD & NVDIA Lab'),
          content: Column(
            children: [
              Image.asset(
                'assets/images/NVDIALab.jfif',
                height: 350,
              ),
              // Text("Hello"),
              Text(
                "Incharge: Prof. Ashish Vartak \n \n  Mr. Ashish B. Vartak \n Asst. Professor \n Qualification - M Tech \n Status - USSC \n Areas of Interest - Computer Networks,Digital Image Processing\n Complete Profile",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }

  void vision(BuildContext context) {
    print("Hello");
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Vision of Finolex Academy of Management and Technology'),
          content: Column(
            children: [
              Text(
                  "To provide excellent Information Technology  education and aspire to nurture students as leaders who are in tune with global IT Trends")
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
    
  }

  void HOD(BuildContext context) {
    print("Hello");
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'HoD’s Desk',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          scrollable: true,
          content: Column(
            children: [
              Image.network(
                'https://famt.ac.in/wp-content/uploads/2017/01/DSC_1149-240x300.jpg',
              ),
              Text(
                  "Recent advancements in the areas of computers, software, networks, internet, communication technology, Big Data and cloud computing etc. has made huge amount of information available to us. In this high-tech era, information is something without which industry, individuals cannot survive, and their success depends on the ability to acquire accurate and timely information. Keeping this in mind FAMT started the Bachelor of Engineering program in Information Technology (IT) from academic session 2001-2002. Emphasis of B.E. in Information Technology curriculum is on Computer Science, Software Development, Networking, Communication, Web Engineering, Security, Multimedia processing, IoT, Cloud Computing, Data Analytics and Soft Computing. Currently the department’s infrastructure contains three classrooms, six laboratories, a staffroom, and a seminar hall. Ole classroom is ICT enabled with Wi-Fi projection facility. All floors of IT department have Wi-Fi connectivity.The computing facility in the department includes 155 computers with latest configuration, and other ICT equipment such as LCD projectors, printers and scanners. Recently in February 2017, the department’s HoD Dr. Vinayak A Bharadi and Prof. Santosh V Jadhav got a NVIDIA GPU Research Grant of Rs. 1.5 Lacs in the form of Titan X Pascal GPU (Graphics Processing Unit) to support research. Information Technology department also has academic collaboration with NVIDIA for three subjects namely Soft Computing, Big Data Analytics, and Robotics. They will provide course material, and hardware support for conduction of these courses as well as bridge courses. It Department has conducted Bridge courses in Mobile Cloud Computing, MongoDB Connectivity, Online Payments for E-Biz to make students industry ready. Besides this It Department has done a tie-up with Microsoft for conducting Training and Certification for students as well as staff in the domain of IoT and Cyber Security, first session of this training was conducted in Sept 2017.Students undergo on-field projects so that they can be prepared to face professional challenges. Recently from January 2017 to Nov 2017, students of final year have successfully published Thirty Two (16) research papers at various national/international conferences/journals out of which Fifteen (15) papers are in UGC Approved Journals. Research areas of published works are Cloud Computing, Ubiquitous Computing, Pervasive Computing, Soft computing etc. Besides this, students are given in house training of GATE examination, aptitude, and other competitive examinations.The Department’s students body ‘Information Technology Student Association’ (ITSA) is actively involved in creating awareness about technological advancements amongst students. ITSA also coordinates and organizes various events like group discussions, online quizzes, workshops, seminars, and industrial visits that help students to keep themselves in tune of latest technological advancements. Besides this, ITSA also coordinates charity events such as blood donation, help to drought affected farmers etc.The Department provides complete support to students for training and placement. IBM, Wipro Spectramind, Tata AIG, HCL, Patni Computer Systems, ICICI Infotech, TCS, Finolex Industries Ltd., Magneto-IT solutions, CNC Ltd., Config Solutions, Xento, and Bitwise solutions are some of the IT companies who are regular recruiters of IT students.Teachers in IT department are very active in upgrading knowledge, In Odd Semester of AY 2017-2018 Eight Faculty members from IT Department have successfully completed Certified Training programs from NPTEL and Prof. Santosh Jadhav and Prof. Atiya Kazi has  achieved national level ranking as Top 1% and Top 5% respectively. Department will strive to provide best in class education and facilities for the stakeholders and contribute for nation building.\n Thank You,\n \n Dr. Vinayak Ashok Bharadi \n  HoD –IT, Professor FAMT, Ratnagiri")
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }
  void Mission(BuildContext context) {
    print("Hello");
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Mission',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          content: Column(
            children: [
              Image.asset(
                'assets/images/Mission.png',
              ),
              Text(
                  " M1:- To Enrich students by rigorously implementing quality education \n M2:- To make students industry ready  \n M3:- To imbibe professional ethics and social values in the students and make them responsible citizens. ")
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }

//Faculty
  void Faculty(BuildContext context) {
    print("Hello");
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Faculty',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          scrollable: true,
          content: Column(
            children: [
              Image.asset(
                'assets/images/FacultyImage.png',
              ),
              Text(
                    "1] Incharge: Prof. Dr. Vinayak Bharadi \n \n Dr. Vinayak A. Bharadi \n HOD and Professor\n Qualification :- Ph D \n Status:- USSC \n Areas of Interest:- Deep Learning, Blockchain, Cloud Computing, Big Data Analytics, Digital Signal Processing \n Complete Profile \n \n 2] Mr. Mandar S. Joshi \n Asst Professor \n Qualification - M E\n Status - USSC\n Areas of Interest - Operating Systems, Data Mining, Machine Learning\n Complete Profile \n \n 3] Ms. Atiya R. Kazi \n Asst. Professor \n Qualification - M E\n Status - USSC\n Areas of Interest - Computer Networks, Network Security, Cryptography\n Complete Profile \n \n 4] Mr. Amar R. Palwankar \n Asst Professor \n Qualification - M Tech\n Status - USSC\n Areas of Interest - Data Science IoT Machine Learning Deep Learning\n Complete Profile \n\n 5] Mr. Ashish B. Vartak\n Asst. Professor\n Qualification - M Tech\n \Status - USSC' \n Areas of Interest - Computer Networks,Digital Image Processing\n Complete Profile \n \n 6]Mrs. Swati A. Powar \n Asst Professor \n Qualification - M E \n Status - USSC \n Areas of Interest - Data Analytics \n Complete Profile \n\n 7] Prof. Girish Bhide \n Associate Professor \n Qualification - ME Electronics \n Status - USSC \n Areas of Interest - Electromagnetic Fields and Wave Theory, Computational Electromagnetics, Image Processing\n Complete Profile \n \n 8] Mr. Santosh V. Jadhav \n Associate Professor\n Qualification - M Tech\n Status - USSC\n Areas of Interest - Programming Disciplines, Signals processing, Image Processing, Data Science\n Complete Profile \n \n 9] Mrs. S. Sankereshwari\n Asst Professor\n Qualification - M E \n Status - USSC \n Areas of Interest - Computer Graphics, Data Structures \n Complete Profile \n \n 10] Ms. Priyanka S. Bandagale \n Asst. Professor \n Qualification - M E \n Status - USSC\n Areas of Interest - Computer Networking, Software Testing, Security, Project Management\n Complete Profile \n \n 11]Mr. Onkar D. Dike \n Asst. Professor\n Qualification - M Tech\n Status - USSC\n Areas of Interest - Cloud Computing, Computer Security, Artificial Intelligence\n Complete Profile \n \n 12] Ms. Geetanjali Sawant\n Asst. Professor\n Qualification - Status - Adhoc Areas of Interest - Complete Profile")
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }
   void AboutDepartment(BuildContext context) {
    print("Hello");
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'About Department',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          scrollable:true,
          content: Column(
            children: [
              Image.network(
                'http://famt.ac.in/wp-content/uploads/2021/07/Mechanical-and-Chemical-Engineering-Block.webp',
              ),
              Text(
                  " \n \n  Recent advancements in the areas of computers, software, networks, internet, communication technology, Big Data and cloud computing etc. has made huge amount of information available to us. In this high-tech era, information is something without which industry, individuals cannot survive, and their success depends on the ability to acquire accurate and timely information. Keeping this in mind FAMT started the Bachelor of Engineering program in Information Technology (IT) from academic session 2001-2002. Emphasis of B.E. in Information Technology curriculum is on Computer Science, Software Development, Networking, Communication, Web Engineering, Security, Multimedia processing, IoT, Cloud Computing, Data Analytics and Soft Computing. Currently the department’s infrastructure contains three classrooms, six laboratories, a staffroom, and a seminar hall. Ole classroom is ICT enabled with Wi-Fi projection facility. All floors of IT department have Wi-Fi connectivity.The computing facility in the department includes 155 computers with latest configuration, and other ICT equipment such as LCD projectors, printers and scanners. Recently in February 2017, the department’s HoD Dr. Vinayak A Bharadi and Prof. Santosh V Jadhav got a NVIDIA GPU Research Grant of Rs. 1.5 Lacs in the form of Titan X Pascal GPU (Graphics Processing Unit) to support research. Information Technology department also has academic collaboration with NVIDIA for three subjects namely Soft Computing, Big Data Analytics, and Robotics. They will provide course material, and hardware support for conduction of these courses as well as bridge courses. It Department has conducted Bridge courses in Mobile Cloud Computing, MongoDB Connectivity, Online Payments for E-Biz to make students industry ready. Besides this It Department has done a tie-up with Microsoft for conducting Training and Certification for students as well as staff in the domain of IoT and Cyber Security, first session of this training was conducted in Sept 2017.Students undergo on-field projects so that they can be prepared to face professional challenges. Recently from January 2017 to Nov 2017, students of final year have successfully published Thirty Two (16) research papers at various national/international conferences/journals out of which Fifteen (15) papers are in UGC Approved Journals. Research areas of published works are Cloud Computing, Ubiquitous Computing, Pervasive Computing, Soft computing etc. Besides this, students are given in house training of GATE examination, aptitude, and other competitive examinations.The Department’s students body ‘Information Technology Student Association’ (ITSA) is actively involved in creating awareness about technological advancements amongst students. ITSA also coordinates and organizes various events like group discussions, online quizzes, workshops, seminars, and industrial visits that help students to keep themselves in tune of latest technological advancements. Besides this, ITSA also coordinates charity events such as blood donation, help to drought affected farmers etc.The Department provides complete support to students for training and placement. IBM, Wipro Spectramind, Tata AIG, HCL, Patni Computer Systems, ICICI Infotech, TCS, Finolex Industries Ltd., Magneto-IT solutions, CNC Ltd., Config Solutions, Xento, and Bitwise solutions are some of the IT companies who are regular recruiters of IT students.Teachers in IT department are very active in upgrading knowledge, In Odd Semester of AY 2017-2018 Eight Faculty members from IT Department have successfully completed Certified Training programs from NPTEL and Prof. Santosh Jadhav and Prof. Atiya Kazi has  achieved national level ranking as Top 1% and Top 5% respectively. Department will strive to provide best in class education and facilities for the stakeholders and contribute for nation building.\n \n Thank You,\n Dr. Vinayak Ashok Bharadi \n HoD –IT, Professor FAMT, Ratnagiri")
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }
  void Academics(BuildContext context) {
    print("Hello");
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Academics',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          scrollable: true,
          content: Column(
            children: [
              Image.asset(
                'assets/images/Academics.jpg',
              ),
              Text(
                    "\n\nIn this high-tech era, information is something without which industry, individuals cannot survive, and their success depends on the ability to acquire accurate and timely information. Keeping this in mind FAMT started the Bachelor of Engineering program in Information Technology (IT) from academic session 2001-2002. The emphasis of B.E. in Information Technology curriculum is on Computer Science, Software Development, Networking, Communication, Web Engineering, Security, Multimedia processing, IoT, Cloud Computing, Data Analytics, and Soft Computing")
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }

}
// About Department


/**  void AboutDepartment(BuildContext context) {
    print("Hello");
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'AboutDepartment',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          content: Column(
            children: [
              Image.network(
                'https://famt.ac.in/wp-content/uploads/2017/01/DSC_1149-240x300.jpg',
              ),
              Text(
                  "Recent advancements in the areas of computers, software, networks, internet, communication technology, Big Data, and cloud computing, etc. have made a huge amount of information available to us. In this high-tech era, information is something without which industry, individuals cannot survive, and their success depends on the ability to acquire accurate and timely information. Keeping this in mind FAMT started the Bachelor of Engineering program in Information Technology (IT) from academic session 2001-2002. The emphasis of B.E. in Information Technology curriculum is on Computer Science, Software Development, Networking, Communication, Web Engineering, Security, Multimedia processing, IoT, Cloud Computing, Data Analytics, and Soft Computing. Currently, the department’s infrastructure contains three classrooms, six laboratories, a staff room, and a seminar hall. Ole classroom is ICT enabled with a Wi-Fi projection facility. All floors of the IT department have Wi-Fi connectivity. \n The computing facility in the department includes 155 computers with the latest configuration, and other ICT equipment such as LCD projectors, printers and scanners, and UPS backup. Dr. Vinayak A Bharadi and Prof. Santosh V Jadhav got an NVIDIA GPU Research Grant of Rs. 1.5 Lacs in the form of Titan X Pascal GPU (Graphics Processing Unit) to support research. The Information Technology department also has academic collaboration with NVIDIA for three subjects namely Soft Computing, Big Data Analytics, and Robotics. They will provide course material and hardware support for the conduction of these courses as well as bridge courses under the NVIDIA Developer Center. It Department has conducted Bridge courses in Mobile Cloud Computing, MongoDB Connectivity, Online Payments for E-Biz to make students industry-ready. Besides this IT Department has done a tie-up with Microsoft for conducting Training and Certification under Microsoft Virtual Academy (MVA) for students as well as staff in the domain of IoT and Cyber Security. Department has MoU with Amazon AWS to setup Amazon AWS Academy for the professional training and Certification of the staff and the students, AWS will be giving 50% discount for all the certification and free training for the faculty member under this MoU. \n Students undergo on-field projects so that they can be prepared to face professional challenges. Faculty members and students have published more than 500 papers are in national and international conferences and UGC Approved Journals. Research areas of published works are Cloud Computing, Ubiquitous Computing, Pervasive Computing, Soft computing, etc. Besides this, students are given in house training of GATE examination, aptitude, and other competitive examinations. To make students eligible for international placements and skills required in the MNCs IT Department has signed MoU with Apple Inc. to sept up Apple iOS Developer University Program (iDUP), Apple has provided the Programming platform and training under the same. The department has also set up an Intel Intelligent Systems lab in collaboration with Intel Inc. This lab has hardware and software setup to carry out application development for Smart City Projects, in the domain of the Internet of Things. \n The Department’s students’ body FAMT- ACM Students Chapter is sponsored by the Association of Computer Machinery, USA (ACM). This chapter is actively involved in creating awareness about technological advancements amongst students. FAMT- ACM Students Chapter also coordinates and organizes various events like group discussions, online quizzes, workshops, seminars, and industrial visits that help students to keep themselves updated with the latest technological advancements. Besides this, FAMT- ACM Students Chapter also coordinates charity events such as blood donation, help to drought-affected farmers, etc. \n The Department provides complete support to students for training and placement. IBM, Wipro Spectramind, Tata AIG, HCL, Patni Computer Systems, ICICI Infotech, TCS, Finolex Industries Ltd., Magneto-IT solutions, CNC Ltd., Config Solutions, Xento, and Bitwise solutions are some of the IT companies who are regular recruiters of IT students. \n IT department also has a Ph.D. Research Center under the Mumbai University and it is the only department in the Konkan region to provide doctorate level education. \n Department has a total of 13 faculty members with an average experience of more than 10 years. They have been always upgrading the knowledge by undergoing training and certification offered by the industries and then professional bodies. Faculty members have been completing their certification from NPTEL, Coursera, IBM Cognitive Class, Udemy, Microsoft technology Associate Program, Amazon AWS Academy. It Department has always been keeping students at the centre and always working for their holistic development and bright future. \n \n \n \n Thank You, \n Dr. Vinayak Ashok Bharadi.\n HoD –IT, Associate Professor\n FAMT, Ratnagiri   ")
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }*/


//class AboutDepartment {
//}