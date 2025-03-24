import 'package:flutter/material.dart';
import 'package:portofolio_web/core/constants/iconify_assets.dart';
import 'package:portofolio_web/core/constants/nav_items.dart';
import 'package:portofolio_web/features/dasboard/domain/entities/experience.dart';
import 'package:portofolio_web/features/dasboard/domain/entities/project.dart';
import 'package:portofolio_web/features/dasboard/presentation/widgets/desktop_box_and_certificate.dart';

import '../../features/dasboard/domain/entities/article.dart';

final List<String> skills = [
  "Kotlin",
  "Android Studio",
  "Flutter",
  "Dart",
  "Javascript",
  "Java",
  "Figma",
  "C#",
  "Html",
  "CSS",
  "Git"
];

final String scroll = "SCROLL";

final String aboutMe =
    'I am a fresh graduate of Informatics Engineering from YARSI University with one year of experience as an Android Developer. Proficient in developing native Android applications using Kotlin and Java programming languages. I have experience building and developing Android applications, particularly in the healthcare sector and other innovative fields. I am motivated to take on new challenges, contribute my skills and knowledge, and work collaboratively. Furthermore, I am eager to continuously learn and adapt to emerging technologies to develop high-quality applications.';

final List<Article> articles = [
  Article(title: "MVVM", content: dummyText, createAt: "createAt")
];

final List<Project> projects = [
  Project(
      image: "assets/obrol.png",
      nameApp: "Obrol",
      describe:
          "is a social app useful for interacting with communities from around the world. This app have some feature like create story, forum discussion, and chatting with other connect. This app build using native Android with Kotlin Programming and Firebase as a backend services.",
      createAt: "2023",
      sources: "https://github.com/hilmisatrio16/obrol-app",
      techStack: [iconAndroid, iconAndroidStudio, iconKotlin, iconFirebase]),
  Project(
      image: "assets/flyid.png",
      nameApp: "FlyId",
      describe:
          "is a mobile application that allows users to book domestic flight tickets online, with one-trip and round-trip options. Have some feature like notification, search flight, payment, and booking. This app build using native Android with Kotlin Programming and Retrofit to consume API.",
      createAt: "2023",
      sources: "https://github.com/C1-FlyId/c1-and",
      techStack: [
        iconAndroid,
        iconAndroidStudio,
        iconKotlin,
      ]),
  Project(
      image: "assets/cvision.png",
      nameApp: "C-Vision",
      describe:
          "is a mobile application used to help diagnose cataract eyes with the help of AI (Artificial Intelligence). Have some feature like articles to inform how to prevent cataract and cataract detection. This app build with some technology like as Koltin, Android Studio, TensorFlow Lite.",
      createAt: "2023",
      sources: "https://github.com/hilmisatrio16/C-Vision",
      techStack: [iconAndroid, iconAndroidStudio, iconKotlin, iconTensorFlow]),
  Project(
      image: "assets/diary_kkn.png",
      nameApp: "Diary KKN: Menemukan Minatku",
      describe:
          "It's a real-world PC game that tells the story of a student's activities in a village. This game aims to determine the career preferences of a person, especially the user, according to the RIASEC psychological test guide through the action indicators performed in the game.",
      createAt: "2022",
      sources: "sources",
      techStack: [iconCSharp, iconUnity]),
];

final List<Widget> certificates = [
  Image.asset("assets/cert_01.jpg"),
  Image.asset("assets/cert_02.jpg"),
  Image.asset("assets/cert_03.jpg"),
  Image.asset("assets/cert_04.jpg"),
  Image.asset("assets/cert_05.jpg"),
  Image.asset("assets/cert_06.jpg"),
  Image.asset("assets/cert_07.jpg"),
  Image.asset("assets/cert_08.jpg"),
  Image.asset("assets/cert_09.jpg"),
  Image.asset("assets/cert_10.jpg"),
  Image.asset("assets/cert_11.jpg"),
];

final List<Experience> experiences = [
  Experience(
      role: "Android Developer",
      name: "YARSI Artificial Intelligence Center",
      date: "February 2024 – July 2024",
      jobs: [
        "Collaborated with the backend and machine learning developers to create a main feature for predicting cervical cancer through Whole Slide Images (WSI) Pap Smear.",
        "Monitored performance testing using Android Profiler to analyze RAM and battery usage while the application was active.",
        "Implemented Obfuscation, Certificate Pinner, and Data Encryption for enhanced security of Android applications.",
        "Developed Stitching camera feature for scanning Pap Smear images.",
        "Created application development documentation.",
      ]),
  Experience(
      role: "Mobile Development",
      name: "Bangkit Academy led by Google, Tokopedia, Gojek, & Traveloka",
      date: "August 2023 – December 2023",
      jobs: [
        "Gained essential soft skills for the workforce, including Growth Mindset, Adaptability, Problem-Solving, Communication, Personal Branding, Time Management, and Teamwork.",
        "Built Android applications using OOP, SOLID principles, Clean Architecture, CI/CD, Dependency Injection, and Asynchronous tasks",
        "Converted UI designs into Android XML layouts and Jetpack Compose",
        "Implemented Android development using Jetpack Compose.",
        "Consumed APIs using Retrofit for network communication in Android applications.",
        "Integrated the application with a machine learning model using TensorFlow Lite.",
        "Collaborated with Cloud Computing and Machine Learning teams to create the C-Vision App (Cataract Eye Detection Application)."
      ]),
  Experience(
      role: "Android Engineering",
      name: "Binar Academy Participant",
      date: "February 2023 – June 2023",
      jobs: [
        "Developed an application using the MVVM architecture and implemented asynchronous tasks.",
        "Converted UI designs into Android XML layouts.",
        "Consumed API using Retrofit for network communication and ROOM Database for local storage.",
        "Performed unit testing with Mockito and UI testing with Espresso.",
        "Monitored performance testing using Android Profiler to analyze RAM and battery usage while the application was active.",
        "Collaborated with Full Stack Developer teams to create the FlyId App (Booking Flight App) using SCRUM agile.",
      ]),
];
