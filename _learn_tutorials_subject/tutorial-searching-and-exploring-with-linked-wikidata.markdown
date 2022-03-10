---
title: 'Tutorial: Searching and Exploring with Linked Data and Wikidata in the Media
  Suite'
date: 2021-12-05 12:06:00 +01:00
categories:
- Media Studies
introduction: In this tutorial you learn how to use Linked Data  to refine you search
  results in combination with the metadata categories “Persons - all”, “Persons -
  production”,  “Persons - guests” and “Persons - subject of discussion”. The tutorial
  works with linked data from the Netherlands Institute for Sound and Vision (NISV)
  using the Media Suite Search tool, while also exploring links to Wikidata outside
  of the Media Suite environment.
author: Mari Wigham & Christian Olesen
functionalities:
- Search
collections:
- Sound & Vision Audiovisual Collection
user_level: Advanced
language: English/Dutch
---

# Tutorial: Searching and Exploring With Linked Data and Wikidata in the Media Suite

![image4.jpg](/uploads/image4.jpg)

Tutorial for CLARIAH Media Suite V 6.1
Tutorial made by Mari Wigham & Christian Olesen, December 2021

## Tutorial Description, Case and Objectives

In this tutorial you learn how to use Linked Data  to refine you search results in combination with the metadata categories “Persons - all”, “Persons - production”,  “Persons - guests” and “Persons - subject of discussion”. As audiovisual archives, and cultural heritage institutions more broadly, are increasingly publishing their collection data online, creating Linked (Open) Data is increasingly becoming a means for querying named entities among (multiple) datasets and raising new questions with collection metadata. In this tutorial you develop a sense of how this may work for an audiovisual archive/cultural heritage institution, by working with linked data from the Netherlands Institute for Sound and Vision (NISV) in the Media Suite Search tool, while also exploring links to wikidata outside of the Media Suite environment. Upon completing the tutorial you will:

* ...know how Linked Data is featured in the Media Suite and how searches in the categories “Persons -  production”, “Persons - guests” and “Persons - subject of discussion” may be refined in combination with Linked Data

* ...know how the Media Suite Linked Data connects to Wikidata and allow you to go beyond the Media Suite environment to contextualize search results

For the purpose of introducing these functionalities in this tutorial and its potential for refining search, we will be searching for the name of Steve McQueen, which may refer to respectively the American film actor (1930-80) or the British film director and video artist (1969). As an example of two famous film personalities with exactly the same name, this name offers an easy starting point for understanding how the Linked Data functionalities in the Media Suite work.

#### Types and levels of teaching and research

This tutorial is aimed at students and researchers who are familiarizing themselves with using (and perhaps also) making linked data and wikidata for the first time. The tutorial offers a light and easily accessible introduction, yet prior knowledge of metadata standardization and of the theory and concepts behind Linked (Open) Data and Wikidata is recommended (see “Prerequisites”). The tutorial may support any type of research relying on precise and targeted search in audiovisual collections as well as data-driven historical research that is interested in exploring connections between the archives of NISV and Wikipedia.

#### Prerequisites

Conceptually it is a prerequisite for this tutorial that you are familiar with the core principles of Linked Open Data and Wikidata broadly, as well as the specific challenges of Linked Open Data for audiovisual collection data. For an introduction to Linked Open Data we refer to digital historian Jonathan Blaney’s article [“Introduction to the Principles of Linked Open Data”](https://programminghistorian.org/en/lessons/intro-to-linked-data). For a discussion of audiovisual collection data in relation to Linked Open Data and Wikidata, we refer to the article [“Cataloguing Practices in the Age of Linked Open Data: Wikidata and Wikibase for Film Archives”](https://www.fiafnet.org/pages/E-Resources/Cataloguing-Practices-Linked-Open-Data.html) by film preservationists Adelheid Heftberger and Paul Duchesne.

#### Acknowledgements

In addition to the work of Mari Wigham, we would like to acknowledge the important work done by Willem Melder, Interoperability and Linked Open Data expert in the CLARIAH project, and Victor de Boer, Assistant Professor at Vrije Universiteit, without whom there would have been no Linked Data in the Media Suite and without whose work this tutorial would not have been possible to make.

## Steps

As of 2021 the NISV has begun making collection data available as Linked Data within the Media Suite after several years of work. In this respect, the first step NISV has taken is to ensure that persons featured in programs can be identified using a unique identifier. Based on labels used in the Dutch GTAA (Gemeenschappelijke Thesaurus Audiovisuele Archieven/Shared Thesaurus Audiovisual Archives), persons appearing as either “Persons - production”, “Persons - guests” and “Persons - subject of discussion” can now be identified easily in NISV’s collections in the Media Suite. This makes it easier to get precise results when searching for specific persons. At the same time, using these labels also excludes data from other metadata fields, in particular program descriptions, potentially leaving out relevant search results. Thus, in order to use linked data as a search layer in the Media Suite efficiently, it is necessary to know how to switch between different search options. The steps below walk you through the relevant steps one by one.

### 1. Searching for Persons in archival metadata

![image3.jpg](/uploads/image3.jpg)

* Before exploring the linked data functionality in the Media Suite, you first have to familiarize yourself with the person metadata available in the environment. To do so, go to the Media Suite and choose the “Sound & Vision Archive” before beginning your search. Moreover, you may want to create a user project in order to be able to bookmark items and save queries. For a brief tutorial on how to create a user project see here.

* The Media Suite Search Tool supports search in three different search layers (for a brief explanation of these three layers see the Search How-to on the Media Suite Help page):

  * (1) all archive metadata fields including enrichments (such as OCR, ASR or Linked Data)


* (2) in an Archive’s Metadata only or in


* (3) Enrichments

* In this step we want to search for Steve McQueen in the person metadata fields. To do this, first choose between one of the three different types of enrichments, respectively “Persons - production”, “Persons - guests” and “Persons - subject of discussion”. You can choose one of these fields by clicking on the bar on the right-hand side of the search field (see image above). Choose any of them that you find the most interesting.

* Having made a choice you may now search for Steve McQueen. When typing a person, one or more suggestions should automatically pop up in a drop-down menu below the search field. For now, you should not choose one of the automatic suggestions but perform your search by clicking on the search icon on the right-hand side of the search field.

* Take a moment to evaluate the results, which results for Steve McQueen do you get (you may consider the dates of the results or the types of appearances) and was it indeed the Steve McQueen you were looking for and is it easy to distinguish between the two?

* Once you have clicked through a few results in one of the person search categories you may try out the other options. Compare. How many results do you get when using the different options and do the amount and types of results make sense to you, knowing that there are two Steve McQueens?

### 2. Autocomplete function for disambiguation

![linked_image_one.png](/uploads/linked_image_one.png)

* Now it is time to explore the autocomplete functionality of the search tool. The autocomplete functionality is designed so as to allow for disambiguation using linked data - for instance in the case where a named entity has exactly the same name. In linked data all named entities are given a unique identifier whereas in other types of (meta)data  - for instance automatically generated enrichments - this is not necessarily the case. The autocomplete suggestions in the Search tool enable disambiguation so as to enable more targeted and precise search. In other words, the suggestions you see in the drop-down menu in the search field will ensure you get results for exactly the person you are looking for.

* Try performing your search again using one of the Persons categories used above. But now, instead of completing the search using the search button on the right-hand side of the search field, choose one of the autocomplete options from the dropdown menu. You should have two options that exactly match the name Steve McQueen (see image above) - one for the film actor and one for the film director and video artist. Which option do you want to explore? Make a choice.

* Having chosen one of the options try to evaluate the results. Do they indeed pertain to the Steve McQueen you chose?

* Now try to search for the other Steve McQueen using the autocomplete function. Do you indeed get results relating to the other Steve McQueen? What differences do you see in terms of amount of results and period covered?

* Take a moment to reflect: how do these results differ from the results obtained in the previous step? What data did the searches in this step leave out and what are the advantages and disadvantages of leaving out some results for the sake of disambiguation and exact search?

### 3. Searching further via the resource viewer

![image_Step_3.png](/uploads/image_Step_3.png)

* Now you have developed a sense of how to use different search strategies to search for a person relying on respectively all metadata (including enrichments) and linked data. It is now time to explore how the linked data feature is integrated into other areas of the Media Suite environment and allows you to continue your search both in the Media Suite as well as outside of it. In this step we first focus on how it allows you to search further within the Media Suite.

* To do so, click on one of the search results for one of the Steve McQueens of your choice from the previous step. You will now enter the resource viewer in which you can playback the chosen media item.

* On the right-hand side of the resource viewer’s player, you will see a list of persons appearing in, discussed in or involved in the production of the chosen item in connection to the person searched. Click on one of the names (in this case we suggest to stick to one of the Steve McQueens).

* Upon clicking the name, a box opens which shows an image of the person (when available). In addition, the box. gives you additional options. In the upper part of the box you will in this case see the option “Search for ‘McQueen, Steve (regisseur) in the current collection” (see image above). Clicking this option will direct you back to the Search tool and search in all metadata based on all name variations of the chosen person. Click the option.

* Having clicked this option try to evaluate the results obtained. How many results do you get and how do these results differ from the results you obtained in the previous steps? Are the results relevant and what are the advantages and disadvantages of combining switching between different types of data in this way?

### 4. Exploring links to Wikidata and Evaluating Data

![image_Step_4.png](/uploads/image_Step_4.png)

* Having explored the additional options for searching for a person within the Media Suite via the resource viewer combining both the linked data functionality and the metadata, it is time to explore the other options provided in the info box appearing when clicking on a name (see image above).

* Try to go back to the item from the previous step and click on the same name again. After having opened the box again, have a look at the information options at the bottom of the box. What do you notice in terms of where personal information (in this case the image) comes from?

* As you may notice, the image used for the personal profile in the box comes from Wikimedia and the box makes use of the URI for the person/entity used by Wikimedia.
  Try to click the two links in the bottom part of the box. Where do these links lead you and what do they tell you about how Sound and Vision’s collection metadata are linked to Wikimedia via the Media Suite and how open the data is?

* Try to have a look at the two pages one by one and reflect on where they may take you in terms of further exploration. Start with Wikimedia. What additional categories may Wikimedia allow you to explore in relation to a person - in this case either the actor or the director Steve McQueen - that you do not find in the Media Suite and how may this benefit your research?

* Now take a look at the OpenSKOS page. How does it allow you to understand the data from Sound & Vision? What does it tell you about the data’s provenance and the identifier used, and how does it allow you to go “under the hood” of the data? What benefits might this have for further research?

* Well done! Now you know how to search in the Media Suite combining archival metadata and linked data as well as exploring data on persons on Wikimedia via the Media Suite. You also know how to access the linked data underlying the search functionality.