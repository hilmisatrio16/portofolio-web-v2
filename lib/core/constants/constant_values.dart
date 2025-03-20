import 'package:flutter/material.dart';
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
    "I am a fresh graduate of Informatics Engineering from YARSI University with some work experience. I am passionate about Android application development, and my proficiency in programming languages such as Kotlin and Java supports this interest. With these capabilities, I am experienced in building and developing Android applications, especially in the healthcare sector and other innovative fields. I am eager to contribute through my skills and capabilities while committed to continuing to learn and expand my knowledge in Android application development. Furthermore, I am highly motivated to take on new challenges and work collaboratively within teams.";

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
      sources: "sources",
      techStack: [
        "android"
            "android_studio",
        "kotlin",
        "firebase"
      ]),
  Project(
      image: "assets/flyid.png",
      nameApp: "FlyId",
      describe:
          "is a mobile application that allows users to book domestic flight tickets online, with one-trip and round-trip options. Have some feature like notification, search flight, payment, and booking. This app build using native Android with Kotlin Programming and Retrofit to consume API.",
      createAt: "2023",
      sources: "sources",
      techStack: [
        "android",
        "android_studio",
        "kotlin",
      ]),
  Project(
      image: "assets/cvision.png",
      nameApp: "Obrol",
      describe:
          "is a mobile application used to help diagnose cataract eyes with the help of AI (Artificial Intelligence). Have some feature like articles to inform how to prevent cataract and cataract detection. This app build with some technology like as Koltin, Android Studio, TensorFlow Lite.",
      createAt: "2023",
      sources: "sources",
      techStack: ["android", "android_studio", "kotlin", "tensorflowlite"])
];

final List<Widget> certificates = [
  Image.asset("assets/cert_01.jpg"),
  Image.asset("assets/cert_02.jpg"),
  Image.asset("assets/cert_03.jpg"),
];

final List<Experience> experiences = [
  Experience(
      role: "Mobile Development",
      name: "Bangkit Academy led by Google, Tokopedia, Gojek, & Traveloka",
      date: "August 2023 – December 2023",
      jobs: [
        "Attend all Bangkit Team Meeting and Instructor Led-Training sessions, which have 3 types (soft skills, english, and tech/hard skills).",
        "Understand some soft skills useful for entering the workforce, such as Growth Mindset, Adaptation Skills, Problem Solving, Communication Skill, Personal Branding, Time Management, and Teamwork.",
        "Finished learning English by completing the English exam organized by TBI (The British Institute).",
        "Finished every assignment for each week within the deadline.",
        "Completed all mandatory courses in the Android Learning Path on the Dicoding platform by submitting an Android project implementation each learning. These courses include Learn Basic UX Design, Getting Started with Basic Programming to Become a Software Developer, Introduction to Programming Logic (Programming Logic 101), Learn Basic Git with GitHub, Learn Basic Programming with Kotlin, Learn Android App Basics, Learn Fundamental Android, Learn Intermediate Android App Development, Learn SOLID Programming Principles, Learn to Become an Expert Android Developer, Learn to Build Android Apps with Jetpack Compose and Android Developer Associate Exam Simulation",
        "Collaborated with Cloud Computing and Machine Learning teams to create the C-Vision App (Cataract Eye Detection Application)."
      ]),
  Experience(
      role: "Android Engineering",
      name: "Binar Academy Participant",
      date: "February 2023 – June 2023",
      jobs: [
        "Understand the SDLC (Software Development Life Cycle) concept in application development.",
        "Understand the basic programming and logic in Kotlin programming language and be able to implement data structure, control flow, class, object, and function.",
        "Implementation of the OOP (Object Oriented Programming) paradigm and SOLID principles to develop applications that are structured and easy to maintain.",
        "Able to design UI (User Interface) using Activity and fragments to create responsive and interactive applications.",
        "Build Android Application using some Android Jetpack components (ViewModel, ViewBinding, DataBinding, LiveData, Navigation Component, etc.).",
        "Integrating the Android app with the server to retrieve and display data using Retrofit and Okhttp for http requests while managing local data storage with ROOM.",
        "Running background processes using coroutines for running tasks asynchronously.",
        "Implement clean code architecture, MVVM design pattern, and dependency injection using the Hilt Digger component to reduce application dependency.",
        "Able to perform application testing with unit testing using Mockito and UI testing using Espresso.",
        "Collaborated with Full Stack Developer teams to create the FlyId App (Booking Flight App)."
      ]),
  Experience(
      role: "Android Developer",
      name: "YARSI Artificial Intelligence Center",
      date: "February 2024 – July 2024",
      jobs: [
        "Understand the SDLC (Software Development Life Cycle) concept in application development.",
        "Understand the basic programming and logic in Kotlin programming language and be able to implement data structure, control flow, class, object, and function.",
        "Implementation of the OOP (Object Oriented Programming) paradigm and SOLID principles to develop applications that are structured and easy to maintain.",
        "Able to design UI (User Interface) using Activity and fragments to create responsive and interactive applications.",
        "Build Android Application using some Android Jetpack components (ViewModel, ViewBinding, DataBinding, LiveData, Navigation Component, etc.).",
        "Integrating the Android app with the server to retrieve and display data using Retrofit and Okhttp for http requests while managing local data storage with ROOM.",
        "Running background processes using coroutines for running tasks asynchronously.",
        "Implement clean code architecture, MVVM design pattern, and dependency injection using the Hilt Digger component to reduce application dependency.",
        "Able to perform application testing with unit testing using Mockito and UI testing using Espresso.",
        "Collaborated with Full Stack Developer teams to create the FlyId App (Booking Flight App)."
      ]),
];
