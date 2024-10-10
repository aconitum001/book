import 'package:books/models/book_model.dart';
import 'package:books/utils/assets.dart';
import 'package:flutter/material.dart';

List<BookModel> books = [
  const BookModel(
    title: "The Miracle Morning",
    id: 0,
    author: "Hal Elrod",
    image: Assets.assetsImagesBook1, // Add image path here
    time: 6,
    chapters: 8,
    insights: 5,
    objectives: [
      "Learn how to wake up with purpose",
      "Develop personal growth habits",
      "Create a morning routine that transforms your life",
    ],
    description:
        "The Miracle Morning is about waking up early and starting the day with a set of habits designed to build personal growth. It covers six key practices: silence, affirmations, visualization, exercise, reading, and writing.",
  ),
  const BookModel(
    title: "Unf*ck Yourself",
    id: 1,
    author: "Gary John Bishop",
    image: Assets.assetsImagesBook2, // Add image path here
    time: 5,
    chapters: 7,
    insights: 3,
    objectives: [
      "Break free from self-imposed limitations",
      "Learn actionable steps to improve your mindset",
      "Take control of your own destiny",
    ],
    description:
        "Unf*ck Yourself is a motivational self-help book that encourages readers to take responsibility for their own lives, challenge their limiting beliefs, and take positive action.",
  ),
  const BookModel(
    title: "The Mind and the Brain",
    id: 2,
    author: "Jeffrey M. Schwartz",
    image: Assets.assetsImagesMainBook, // Add image path here
    time: 9,
    backgroundColor: Color(0xffB3BDD9),
    chapters: 10,
    insights: 6,
    objectives: [
      "Explore the relationship between the brain and mind",
      "Understand the concept of neuroplasticity",
      "Discover how to change your brain patterns",
    ],
    description:
        "The Mind and the Brain explores how neuroplasticity, the brain's ability to change, gives people the power to overcome mental obstacles and reshape their own minds.",
  ),
  const BookModel(
    title: "Food: WTF Should I Eat?",
    id: 3,
    author: "Mark Hyman",
    image: Assets.assetsImagesBook4, // Add image path here
    time: 8,
    chapters: 12,
    insights: 5,
    objectives: [
      "Understand the impact of food on health",
      "Learn to make healthier food choices",
      "Debunk common food myths",
    ],
    description:
        "Food: WTF Should I Eat? provides a detailed guide on what to eat to promote health and avoid the diseases associated with poor diets. The book challenges popular diet myths and promotes a balanced, whole-food diet.",
  ),
  const BookModel(
    title: "The Path Made Clear",
    id: 4,
    author: "Oprah Winfrey",
    image: Assets.assetsImagesBook5, // Add image path here
    backgroundColor: Color(0xffF1D2C1),
    time: 6,
    chapters: 10,
    insights: 4,
    objectives: [
      "Find clarity in your life's purpose",
      "Discover actionable steps for personal fulfillment",
      "Learn wisdom from thought leaders",
    ],
    description:
        "The Path Made Clear offers a collection of insights from Oprah Winfrey and other thought leaders about discovering one’s life purpose and creating a life of meaning.",
  ),
  const BookModel(
    title: "How to Make People Like You in 90 Seconds or Less",
    id: 5,
    author: "Nicholas Boothman",
    image: Assets.assetsImagesBook6, // Add image path here
    backgroundColor: Color(0xffA0A0A0),
    time: 3,
    chapters: 4,
    insights: 2,
    objectives: [
      "Master the art of first impressions",
      "Learn techniques to quickly build rapport",
      "Use body language and tone to connect with others",
    ],
    description:
        "This book teaches techniques for making strong first impressions and quickly forming meaningful connections with others, both personally and professionally.",
  ),
  const BookModel(
    title: "13 Things Mentally Strong People Don't Do",
    id: 6,
    author: "Amy Morin",
    image: Assets.assetsImagesBook7,
    time: 7,
    chapters: 5,
    insights: 4,
    objectives: [
      "Understand how your feelings affects you",
      "How to take back your energies",
      "How to build a better you, day after day",
    ],
    description:
        "Atlas of the Heart (2021) is a guide to understanding your emotions and learning how to regulate them. Everyone experiences strong emotions, but most people can't identify what it is they're feeling, or work out where the feelings come from. Developing your emotional vocabulary will transform your relationship to yourself, and the people around you.",
  ),
  const BookModel(
    title: "Emotional Intelligence",
    id: 7,
    author: "Daniel Goleman",
    image: Assets.assetsImagesBook8, // Add image path here
    backgroundColor: Color(0xffFFF5E3),
    time: 7,
    chapters: 8,
    insights: 5,
    objectives: [
      "Understand emotional intelligence (EQ) and its impact",
      "Improve personal and social competencies",
      "Learn to manage emotions effectively",
    ],
    description:
        "Emotional Intelligence explains the importance of emotional intelligence in both personal and professional life. It covers how EQ can be a better predictor of success than IQ.",
  ),
];

List<BookModel> discoveryList = books.getRange(0, 4).toList();
List<BookModel> societyHacksList = books.getRange(4, 8).toList();
