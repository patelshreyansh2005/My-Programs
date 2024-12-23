const fac = () => {

    const data = [
        [
            "https://darshan.ac.in/U01/Faculty-Photo/5---29-04-2023-11-00-29.jpg",
            "Dr. Gopi Sanghani",
            "Dean - School of Computer Science",
            "Ph.D. , M.E. (CE)",
            "22+ Years",
            "Jul-2012"
        ],
        [
            "https://darshan.ac.in/U01/Faculty-Photo/3---28-04-2023-02-02-42.jpg",
            "Dr. Nilesh Gambhava",
            "Professor",
            "Ph.D. , M.E. (CE)",
            "20+ Years",
            "Jul-2009"
        ],
        [
            "https://darshan.ac.in/U01/Faculty-Photo/6---28-04-2023-02-06-07.jpg",
            "Dr. Pradyumansinh Jadeja",
            "Professor",
            "Ph.D., M.E. (CE)",
            "17+ Years",
            "Jul-2009"
        ],
        [
            "https://darshan.ac.in/U01/Faculty-Photo/8---28-04-2023-02-06-25.jpg",
            "Prof. Maulik Trivedi",
            "Assistant Professor",
            "Ph.D.(Pursuing), M.Tech.(CSE)",
            "15+ Years",
            "Jun-2009"
        ],
        [
            "https://darshan.ac.in/U01/Faculty-Photo/9---28-04-2023-02-06-37.jpg",
            "Prof. Dixita Kagathara",
            "Assistant Professor",
            "M.Tech. (Web Technology)",
            "13+ Years",
            "Jul-2009"
        ],
        [
            "https://darshan.ac.in/U01/Faculty-Photo/12---28-04-2023-02-06-51.jpg",
            "Prof. Firoz Sherasiya",
            "Assistant Professor",
            "Ph.D.(Pursuing), M.E. (CE)",
            "17+ Years",
            "Jul-2011"
        ],
        [
            "https://darshan.ac.in/U01/Faculty-Photo/10---28-04-2023-02-07-03.jpg",
            "Prof. Rupesh Vaishnav",
            "Assistant Professor",
            "Ph.D. (Pursuing), M.E. (CE)",
            "15+ Years",
            "May-2013"
        ],
        [
            "https://darshan.ac.in/U01/Faculty-Photo/11---29-04-2023-01-44-21.jpg",
            "Prof. Swati Sharma",
            "Assistant Professor",
            "M.Tech. (CSE)",
            "15+ Years",
            "May-2013"
        ],
        [
            "https://darshan.ac.in/U01/Faculty-Photo/15---28-04-2023-02-07-35.jpg",
            "Prof. Arjun Bala",
            "Assistant Professor",
            "Ph.D.(Pursuing), M.Tech.(CSE)",
            "13+ Years",
            "Jul-2013"
        ],
        [
            "https://darshan.ac.in/U01/Faculty-Photo/13---28-04-2023-02-07-48.jpg",
            "Prof. Mayur Padia",
            "Assistant Professor",
            "M.E. (CE)",
            "14+ Years",
            "Jul-2011"
        ],
        [
            "https://darshan.ac.in/U01/Faculty-Photo/16---28-04-2023-02-08-00.jpg",
            "Prof. Vijay Shekhat",
            "Assistant Professor",
            "M.E. (CE)",
            "11+ Years",
            "Jun-2012"
        ],
        [
            "https://darshan.ac.in/U01/Faculty-Photo/220---28-04-2023-02-08-14.jpg",
            "Prof. Ashok Badresiya",
            "Assistant Professor",
            "M.E. (CE)",
            "9+ Years",
            "Jul-2015"
        ],
        [
            "https://darshan.ac.in/U01/Faculty-Photo/214---28-04-2023-02-08-35.jpg",
            "Prof. Naimish Vadodariya",
            "Assistant Professor",
            "Ph.D. (Pursuing), M.E. (CE)",
            "10+ Years",
            "Jun-2015"
        ],
        [
            "https://darshan.ac.in/U01/Faculty-Photo/221---28-04-2023-02-08-50.jpg",
            "Prof. UmeshKumar Thoriya",
            "Assistant Professor",
            "M.Tech. (CSE)",
            "10+ Years",
            "Jul-2015"
        ],
        [
            "https://darshan.ac.in/U01/Faculty-Photo/219---28-04-2023-02-09-01.jpg",
            "Prof. Jayesh Vagadiya",
            "Assistant Professor",
            "M.E (CE)",
            "7+ Years",
            "Jul-2015"
        ],
        [
            "https://darshan.ac.in/U01/Faculty-Photo/290---28-04-2023-02-09-16.jpg",
            "Prof. Krunal Vyas",
            "Assistant Professor",
            "M.Tech. (ICT)",
            "9+ Years",
            "Jun-2018"
        ],
        [
            "https://darshan.ac.in/U01/Faculty-Photo/46---28-04-2023-02-09-28.jpg",
            "Prof. Jay Dhamsaniya",
            "Assistant Professor",
            "PG Diploma (Software Development), B.Tech. (E.C.)",
            "10+ Years",
            "Jul-2012"
        ],
        [
            "https://darshan.ac.in/U01/Faculty-Photo/294---28-04-2023-02-09-43.jpg",
            "Prof. Mehul Bhundiya",
            "Assistant Professor",
            "BE (CE), ME (CE)",
            "9+ Years",
            "Aug-2018"
        ],
        [
            "https://darshan.ac.in/U01/Faculty-Photo/317---28-04-2023-01-32-29.jpg",
            "Prof. Vaseem Ghada",
            "Assistant Professor",
            "Ph.D. (Pursuing), M.Tech (ICT)",
            "13+ Years",
            "Aug-2021"
        ],
        [
            "https://darshan.ac.in/U01/Faculty-Photo/328---28-04-2023-01-33-05.jpg",
            "Prof. Hemang Chath",
            "Assistant Professor",
            "BE(CE), ME(CE - Pursuing)",
            "12+ Years",
            "Sep-2021"
        ],
        [
            "https://darshan.ac.in/U01/Faculty-Photo/330---28-04-2023-01-33-25.jpg",
            "Prof. Charvin Kothia",
            "Assistant Professor",
            "B.E. [CE], M.Tech. [Software] (Pursuing)",
            "3+ Years",
            "Nov-2020"
        ],
        [
            "https://darshan.ac.in/U01/Faculty-Photo/331---28-04-2023-01-33-39.jpg",
            "Prof. Madhuresh Fichadiya",
            "Assistant Professor",
            "B.E.(CE)",
            "2+ Years",
            "Jul-2021"
        ],
        [
            "https://darshan.ac.in/U01/Faculty-Photo/334---28-04-2023-01-34-00.jpg",
            "Prof. Vishal Kansagara",
            "Assistant Professor",
            "M. TECH. (ICT)",
            "9+ Years",
            "Nov-2021"
        ],
        [
            "https://darshan.ac.in/U01/Faculty-Photo/335---28-04-2023-01-34-15.jpg",
            "Prof. Dharmik Vasiyani",
            "Assistant Professor",
            "ME(CE)",
            "5+ Years",
            "Nov-2021"
        ],
        [
            "https://darshan.ac.in/U01/Faculty-Photo/336---28-04-2023-01-34-37.jpg",
            "Prof. Shruti Maniar",
            "Assistant Professor",
            "ME(CE),BE(IT)",
            "6+ Years",
            "Dec-2021"
        ],
        [
            "https://darshan.ac.in/U01/Faculty-Photo/358---28-04-2023-01-37-43.jpg",
            "Prof. Bhushan Joshi",
            "Assistant Professor",
            "M.E. (EC)",
            "5+ Years",
            "Jun-2022"
        ],
        [
            "https://darshan.ac.in/U01/Faculty-Photo/362---28-04-2023-01-38-55.jpg",
            "Prof. Kishankumar Jogi",
            "Assistant Professor",
            "B.E.Electrical",
            "8+ Years",
            "Aug-2022"
        ],
        [
            "https://darshan.ac.in/U01/Faculty-Photo/391---09-05-2023-12-45-38.jpg",
            "Ms. Nidhi Chitroda",
            "Assistant Professor",
            "M.Tech (CE)",
            "8+ Years",
            "May-2023"
        ],
        [
            "https://darshan.ac.in/U01/Faculty-Photo/54---28-04-2023-01-43-14.jpg",
            "Prof. Dipak Jivani",
            "Head of The Department",
            "Ph.D (Pursuing), M.Tech. (CASAD), B.E. (Civil)",
            "14+ Years",
            "Jan-2013"
        ],
        [
            "https://darshan.ac.in/U01/Faculty-Photo/131---29-04-2023-11-04-04.jpg",
            "Prof. Mansukh Barasara",
            "Professor",
            "M.E. (Civil), B.E. (Civil)",
            "35+ Years",
            "Jun-2009"
        ],
        [
            "https://darshan.ac.in/U01/Faculty-Photo/53---28-04-2023-01-51-06.jpg",
            "Dr. Ujjval Solanki",
            "Associate Professor",
            "Ph.D., M.Tech. (Transportation Engineering), B.E. (Civil, AM...",
            "33+ Years",
            "Jun-2009"
        ],
        [
            "https://darshan.ac.in/U01/Faculty-Photo/CIKCK_25052018_073554AM.jpg",
            "Prof. Kaushik Koradia",
            "Associate Professor",
            "Ph.D (Pursuing), M.E. (Structure), B.E. (Civil)",
            "21+ Years",
            "Jul-2010"
        ],
        [
            "https://darshan.ac.in/U01/Faculty-Photo/37---28-04-2023-01-56-24.jpg",
            "Prof. Chetan Solanki",
            "Assistant Professor",
            "M.E. (Structure), B.E. (Civil), Diploma (Civil)",
            "11+ Years",
            "Jun-2012"
        ],
        [
            "https://darshan.ac.in/U01/Faculty-Photo/55---28-04-2023-01-55-56.jpg",
            "Prof. Vitrag Dholakia",
            "Assistant Professor",
            "M.Sc. (Microbiology), B.Sc. (Microbiology), B.Ed",
            "14+ Years",
            "Jul-2010"
        ],
        [
            "https://darshan.ac.in/U01/Faculty-Photo/217---28-04-2023-01-58-46.jpg",
            "Prof. Akshar Fataniya",
            "Assistant Professor",
            "M.Tech. (Construction Technology), B.E. (Civil), Diploma (Ci...",
            "8+ Years",
            "Jun-2015"
        ],
        [
            "https://darshan.ac.in/U01/Faculty-Photo/274---28-04-2023-01-59-41.jpg",
            "Prof. Chintan Raichura",
            "Assistant Professor",
            "Ph.D (Pursuing), M.Tech. (Construction Technology), B.E. (Ci...",
            "7+ Years",
            "Jun-2017"
        ],
        [
            "https://darshan.ac.in/U01/Faculty-Photo/61---28-04-2023-01-59-56.jpg",
            "Prof. Milan Gohel",
            "Assistant Professor",
            "M.E. (Chemical), B.E. (Chemical), Diploma (Chemical)",
            "9+ Years",
            "May-2014"
        ],
        [
            "https://darshan.ac.in/U01/Faculty-Photo/313---28-04-2023-02-00-25.jpg",
            "Prof. Ketan Abhani",
            "Assistant Professor",
            "Ph.D (Pursuing), M.E. (Structure), B.E. (Civil)",
            "4+ Years",
            "Mar-2021"
        ],
        [
            "https://darshan.ac.in/U01/Faculty-Photo/311---28-04-2023-02-00-39.jpg",
            "Prof. Dhaval Jalalpara",
            "Assistant Professor",
            "M.E. (Transportation), B.E. (Civil)",
            "2+ Years",
            "Feb-2021"
        ],
        [
            "https://darshan.ac.in/U01/Faculty-Photo/371---28-04-2023-02-00-57.jpg",
            "Prof. Deepkumar Hadvani",
            "Assistant Professor",
            "M.E. (Structure), B.E. (Civil)",
            "1+ Years",
            "Jul-2022"
        ],
        [
            "https://darshan.ac.in/U01/Faculty-Photo/235---28-04-2023-02-01-28.jpg",
            "Prof. Sagar Galani",
            "Assistant Professor",
            "B.E. (Civil)",
            "7+ Years",
            "Jun-2016"
        ],
        [
            "https://darshan.ac.in/U01/Faculty-Photo/372---28-04-2023-02-03-21.jpg",
            "Prof. Arjun Chavada",
            "Assistant Professor",
            "B.E. (Civil)",
            "1+ Years",
            "Jul-2022"
        ],
        [
            "https://darshan.ac.in/U01/Faculty-Photo/370---28-04-2023-02-03-38.jpg",
            "Prof. Deepraj Patadia",
            "Assistant Professor",
            "M.E. (Fracture Mechanics), B.E. (Civil)",
            "2+ Years",
            "Sep-2022"
        ],
        [
            "https://darshan.ac.in/U01/Faculty-Photo/377---28-04-2023-02-03-52.jpg",
            "Prof. Dhyey Mehta",
            "Assistant Professor",
            "M.Tech. (Geotechnical Engineering), B.E. (Civil), Diploma (C...",
            "1+ Years",
            "Dec-2022"
        ],
        [
            "https://darshan.ac.in/U01/Faculty-Photo/CIRRK01_25042019_023556PM.jpg",
            "Mr. Rakesh Kanzariya",
            "Lab Assistant",
            "B. E. (Civil)",
            "6+ Years",
            "Mar-2018"
        ],
        [
            "https://darshan.ac.in/U01/Faculty-Photo/373---29-04-2023-11-02-24.jpg",
            "Mr. Harsh Bharad",
            "Lab Assistant",
            "M.Sc. (Environmental Science), B.Sc. ( Chemistry)",
            "1+ Years",
            "Oct-2022"
        ],
        [
            "https://darshan.ac.in/U01/Faculty-Photo/376---08-05-2023-10-57-47.jpg",
            "Mr. Bhautik  Kothari",
            "Lab Assistant",
            "B.E. (Chemical)",
            "0+ Years",
            "Oct-2022"
        ],
        [
            "https://darshan.ac.in/U01/Faculty-Photo/315---29-04-2023-11-00-13.jpg",
            "Dr. Jignasa Mehta",
            "Dean - School of Engineering, Head",
            "Ph.D. (Mechanical), M.E. (Machine Design), B.E. (Mechanical ...",
            "27+ Years",
            "Jun-2021"
        ],
        [
            "https://darshan.ac.in/U01/Faculty-Photo/57---28-04-2023-01-45-32.jpg",
            "Dr. Ashvin Makadia",
            "Professor",
            "Ph.D. (Mechanical Engineering) , M.Tech. (CAD/CAM), B.E. (Me...",
            "28+ Years",
            "May-2009"
        ],
        [
            "https://darshan.ac.in/U01/Faculty-Photo/64---28-04-2023-01-55-04.jpg",
            "Prof. Bhavinkumar Vegada",
            "Assistant Professor",
            "M.Tech. (Thermal Engineering), B.E. (Mechanical Engineering)...",
            "12+ Years",
            "Jun-2011"
        ],
        [
            "https://darshan.ac.in/U01/Faculty-Photo/63---28-04-2023-01-56-09.jpg",
            "Prof. Vimal Limbasiya",
            "Assistant Professor",
            "M.Tech. (CAD/CAM), B.E. (Mechanical Engineering)",
            "11+ Years",
            "Jul-2011"
        ],
        [
            "https://darshan.ac.in/U01/Faculty-Photo/66---28-04-2023-02-02-29.jpg",
            "Prof. Ankur Tank",
            "Assistant Professor",
            "B.E. (Mechanical Engineering)",
            "11+ Years",
            "Aug-2011"
        ],
        [
            "https://darshan.ac.in/U01/Faculty-Photo/83---28-04-2023-02-03-02.jpg",
            "Prof. Paras Vegada",
            "Assistant Professor",
            "M.Tech (Pursuing),B.E. (Mechanical Engineering)",
            "12+ Years",
            "Jul-2013"
        ],
        [
            "https://darshan.ac.in/U01/Faculty-Photo/73---28-04-2023-02-04-22.jpg",
            "Prof. Sagar Kanjiya",
            "Assistant Professor",
            "M.E. (Thermal Engineering), B.E. (Mechanical Engineering)",
            "9+ Years",
            "Jun-2014"
        ],
        [
            "https://darshan.ac.in/U01/Faculty-Photo/326---28-04-2023-02-04-38.jpg",
            "Prof. Yash Tank",
            "Assistant Professor",
            "M.Tech. (Manufacturing Engineering), B.E. (Mechanical Engine...",
            "3+ Years",
            "Aug-2021"
        ],
        [
            "https://darshan.ac.in/U01/Faculty-Photo/112---29-04-2023-11-01-08.jpg",
            "Prof. Kartikraj Dhamsaniya",
            "Head of The Department",
            "M.Phil. Mathematics, M.Sc. Applied Mathematics",
            "12+ Years",
            "Jun-2011"
        ],
        [
            "https://darshan.ac.in/U01/Faculty-Photo/117---28-04-2023-01-58-13.jpg",
            "Prof. Nishant Khiraiya",
            "Assistant Professor",
            "M.Phil. Mathematics, M.Sc. Mathematics",
            "9+ Years",
            "Jul-2013"
        ],
        [
            "https://darshan.ac.in/U01/Faculty-Photo/216---29-04-2023-11-01-47.jpg",
            "Prof. Daxa Jani",
            "Assistant Professor",
            "Ph.D. (Pursuing),    M.Phil. Mathematics",
            "8+ Years",
            "Jul-2015"
        ],
        [
            "https://darshan.ac.in/U01/Faculty-Photo/298---10-05-2023-11-20-06.jpg",
            "Prof. Dhvanik Zala",
            "Assistant Professor",
            "M.Phil. Mathematics, M.Sc. Mathematics",
            "3+ Years",
            "Nov-2022"
        ],
        [
            "https://darshan.ac.in/U01/Faculty-Photo/306---28-04-2023-02-01-11.jpg",
            "Prof. Vishal Vadgama",
            "Assistant Professor",
            "Ph.D. (Pursuing), M.Phil. Physics",
            "4+ Years",
            "Sep-2020"
        ],
        [
            "https://darshan.ac.in/U01/Faculty-Photo/338---28-04-2023-02-01-43.jpg",
            "Dr. Khushal Sagapariya",
            "Assistant Professor",
            "Ph.D. Physics, M.Phil. Physics",
            "6+ Years",
            "Sep-2021"
        ],
        [
            "https://darshan.ac.in/U01/Faculty-Photo/337---28-04-2023-02-02-11.jpg",
            "Prof. Prashant Bakotiya",
            "Assistant Professor",
            "M.Sc. Mathematics",
            "4+ Years",
            "Oct-2021"
        ],
        [
            "https://darshan.ac.in/U01/Faculty-Photo/351---29-04-2023-01-48-01.jpg",
            "Prof. Dhara  Bhut",
            "Assistant Professor",
            "M.Sc. Mathematics",
            "3+ Years",
            "Jun-2022"
        ],
        [
            "https://darshan.ac.in/U01/Faculty-Photo/357---28-04-2023-02-04-52.jpg",
            "Prof. Vasudev  Barjadiya",
            "Assistant Professor",
            "M.Sc. Mathematics",
            "0+ Years",
            "Jul-2022"
        ],
        [
            "https://darshan.ac.in/U01/Faculty-Photo/356---28-04-2023-02-05-11.jpg",
            "Prof. Priyanka Bharadiya",
            "Assistant Professor",
            "M.Phil. Mathematics, M.Sc. Mathematics",
            "10+ Years",
            "Jul-2022"
        ],
        [
            "https://darshan.ac.in/U01/Faculty-Photo/369---29-04-2023-01-10-13.jpg",
            "Prof. Sneha Mundadiya",
            "Assistant Professor",
            "Ph.D. (Pursuing), M.Sc. Pure Mathematics",
            "7+ Years",
            "Sep-2022"
        ],
        [
            "https://darshan.ac.in/U01/Faculty-Photo/262---09-05-2023-12-40-29.jpg",
            "Prof. Darshan Pipaliya",
            "Assistant Professor",
            "GSET, M.Phil. Mathematics",
            "5+ Years",
            "Mar-2023"
        ],
        [
            "https://darshan.ac.in/U01/Faculty-Photo/389---29-04-2023-11-02-59.jpg",
            "Prof. Priyanka  Kotecha",
            "Assistant Professor",
            "M.A. English Literature, B.Ed. English",
            "1+ Years",
            "Apr-2023"
        ],
        [
            "https://darshan.ac.in/U01/Faculty-Photo/101---28-04-2023-01-51-19.jpg",
            "Prof. Anil Kansagara",
            "Assistant Professor",
            "M.E. (Electrical Power System)",
            "14+ Years",
            "Jul-2009"
        ],
        [
            "https://darshan.ac.in/U01/Faculty-Photo/105---28-04-2023-01-51-39.jpg",
            "Prof. Bhavin Kanani",
            "Assistant Professor",
            "M.Tech. (Power Apparatus & Systems)",
            "15+ Years",
            "Jul-2011"
        ],
        [
            "https://darshan.ac.in/U01/Faculty-Photo/96---28-04-2023-01-58-00.jpg",
            "Prof. Bhavesh Dave",
            "Assistant Professor",
            "M.E. (Power Electronics & Electrical Drives)",
            "12+ Years",
            "Oct-2010"
        ],
        [
            "https://darshan.ac.in/U01/Faculty-Photo/49---28-04-2023-01-59-02.jpg",
            "Prof. Hardik Lakhani",
            "Assistant Professor",
            "M.Tech (Power Electronics & Drives)",
            "11+ Years",
            "Jan-2013"
        ],
        [
            "https://darshan.ac.in/U01/Faculty-Photo/310---28-04-2023-01-31-50.jpg",
            "Prof. Raj Mehta",
            "Assistant Professor",
            "M.Tech (PED)",
            "4+ Years",
            "Mar-2021"
        ]
    ];

    const fac1 = data.map((fac1) => (
        <div className="col-3">
            <div className="card m-1 p-2">
                <img src={fac1[0]} className="card-img-top" />
                <div className="card-body">
                    <p className="card-text d-flex flex-column">
                        <div>{fac1[1]}</div>
                        <div>{fac1[2]}</div>
                        <div>{fac1[3]}</div>
                        <div>{fac1[4]}</div>
                        <div>{fac1[5]}</div>
                    </p>
                </div>
            </div>
        </div>
    ));

    return <div className="row m-3">{fac1}</div>;
}


export default fac