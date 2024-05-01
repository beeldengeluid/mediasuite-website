---
title: Search
date: 2022-03-16 13:49:00 +01:00
---

### Use the Search tool

This page explains how to use the functionalities of the Search tool to set up a refined query. For more information on the data and enrichments available through the Search tool, see the [Data page](https://mediasuite.clariah.nl/data). To understand how to perform a basic search query in the Media Suite, we recommend reading the [Quick Guide](https://mediasuite.clariah.nl/documentation/quick-start-guide).

This page will discuss:

* [Use search expressions (Boolean operators)](#search-boolean)

* [Search layers (predetermined aggregations)](#search-layers)

* [Search per field(s) (field cluster selector)](#field-cluster)

* [Filtering per date](#date-filter)

* [Understand time line charts](#timeline-charts)

* [Understand term charts](#term-charts)

* [Filter using facets](#facets)

* [Understand how search results are ranked](#result-list-ranking)

* [Save your query and search results](#saved-queries)

---

### 

### <a name="search-boolean"></a>Use search expressions (Boolean operators)

One way of refining your search query is through ‘boolean operators’. With these types of queries, it is possible to elaborate on how you want your keywords to relate to each other. In the Media Suite, the following boolean operators are supported:

**OR**

* Default operator. Connect two or more similar concepts (synonyms). ANY of your search terms can be present in the resulting records. This broadens your results.

**AND**

* ALL search terms must be present in the resulting records. Narrows your results

* Example: Koningin AND Beatrix

* This searches for the word ‘Koningin’ AND the word ‘Beatrix’ - but they do not have to be next to each other

**NOT**

* Ignore concepts (words) that may be implied by your search term

* Example: Koning NOT Willem-Alexander

**Asterisk (\*)**

* This is a wildcard, which matches any character sequence (including the empty one).

* Example: boeren\* –> *boerenleven, boer zoekt vrouw*

**?**

* This is a wildcard, which matches any single character

* Example 1: vluchteling? —>  ‘vluchtelinge

* This searches for a word that starts with ‘vluchteling’ and has one extra character

**Quotation marks (" ")**

* Searches for the exact expression, in the exact order.

* Example : “Broodje Aap” or “De Wereld Draait Door”

**Nesting and search order**

* Nesting queries is supported

* Use parentheses to separate the queries. The logical order in which words are connected influences the results

* Example 1: (koe AND varkens) OR boeren

* Example 2: Koningin AND Beatrix NOT “Koningin Beatrix”

* Example 2 searches for items with the word ‘Koningin’ AND the word ‘Beatrix’ - but NOT the phrase ‘Koningin Beatrix’.  So we get e.g. items that talk about Prinses Beatrix and Koningin Juliana, but not Koningin Beatrix

**Capitalization**

* Boolean queries are not case-sensitive

* Example: bordeaux and Bourdeaux will give the same results.

**Query corrections/suggestions**

* Some collections offer search suggestions, see [Autocomplete Functionality](#autocomplete-functionality)

* Query correction is not supported

* Example: koningi

* Searching for this word gives no matches (matching is precise and does not accept typos or missing letters)

### <a name="search-layers"></a> Search layers

**![](https://lh7-us.googleusercontent.com/2ZRVQfUjh4WgfhR9ujBldxgns2PDVYcne6VnTKUgUdJ0E-nI0k7rH1A2Q6IVz9-TYkjk853pls8vybrEZN-H7J5lYm9i1BHSef0mZs1Lf7FfGQnVIOuUK_cat2p0QW8lwLpVX1P-R7-Ttuwc4PPSus0)**

To facilitate more precise queries, users can also use “search layers”, which are aggregations of metadata fields. The Media Suite supports three layers for all collections:

* **All**: Search in all the metadata and automatic enrichments at the same time

* **Archive's metadata**: Search only in, mostly manually generated, metadata (archival descriptions and subject/content metadata). Subsets of the metadata with a similar function are aggregated together in ‘field cluster’s’. These are the common aggregations for all collections:

  * Title field cluster: When there are different title fields, these have been aggregated and users can search in all of them at once

  * Description field cluster: Searches in all fields (per each collection) which contain descriptions (e.g., summaries, abstracts)

  * Other clusters: Depending on the collection there may be other clusters available (e.g., “Persons - all”, and “Subtitles” for the Sound and Vision audio-visual collection).

* **Enrichments**: searches in the existing layer(s) of mostly automatic content enrichments (e.g., OCR, or ASR- automatic speech transcripts)

Selecting a field cluster makes your search more precise, but it can mean that you miss results outside of those fields. Also be aware that the completeness of the metadata in the field(s) will affect your search results.\
\
***Tip***\*\*: \*\*You can use the Collection Inspector to check completeness of metadata fields and to read descriptions of metadata fields\\

### <a name="field-cluster"></a> Search per field (field cluster selector)

![](/uploads/search-field-clusters.png)

Users can also customise their own search layer by selecting in which field, or group of fields, they want to search. For example, a user may want to search for a specific cast member’s name (e.g., Mies Bouwman). In that case:

* In the same data layer dropdown menu, type in a convenient name for the new cluster, e.g. “Cast members”. A new option will appear in the cluster dropdown: ‘Create “Cast members””. Click on this option

* Search for the field of interest by typing in a search term (e.g., “cast”). If there are many fields which include cast information, they can be aggregated in a “field cluster.” Click on ‘Choose’ to create the cluster

* Now you can search in the cluster as if it were one of the Search layers described above.

*Tip*: To see the list of metadata fields per collection, as well as their definitions, use the Collection Inspector tool.

### <a name="autocomplete-functionality"></a> Autocomplete functionality

Some collections have a thesaurus with set lists of terms, e.g. names of persons, that are used in the metadata. For these collections, the lists are used to offer autocomplete options when searching. Check the collection description in [the Media Suite data registry](https://mediasuitedata.clariah.nl/)\[autocomplete.PNG\] to see if a given collection has autocomplete functionality, and for what sorts of terms.

To use autocomplete, simply type the name or word you are interested in into the Search field. You will get a list of options to choose from. As the option is a thesaurus term, it can have multiple labels. Searching with this functionality entails that the search looks for an exact match for any one of the labels. The results will depend on what sort of labels are used, for example. If a thesaurus only contains labels in one language then those terms will not be found in other languages. To find out what sort of labels are used, consult the collection description.

![](/uploads/autocomplete.PNG)

*Tip*: If you are not sure which term you want from the autocomplete list, click on the icon next to the option. A pop-up will open with links to additional information about the term in external sources, such as Wikidata.

*Tip*: Not interested in the autocomplete options? Simply click anywhere outside the list and it will disappear.

### <a name="date-filter"></a> Filtering per date

You can limit your query to a specific period of time. It is important to keep in mind that collections often include several fields of the type “Date”. To see the metadata fields that are of the type “Date”, you can use the “Inspect” tool and consult the metadata dictionaries.

* In the date filter, you first have to select which date field you would like to use for filtering, and then enter the date range. For example, for The Sound and Vision audiovisual collection, we recommend selecting the field “Date:sorting (preferred)” (which is the closest equivalent to the “broadcasting date”). You can check how complete this metadata field has been over time by using the Inspector tool.

### <a name="timeline-charts"></a>Understand time line charts

It is also possible to create a timeline visualisation of the results of your query, in the form of a histogram or line chart.

* To generate a timeline visualisation of your results, first select a date field in the drop-down menu under the search bar. This will generate the visualisation.

* It is also possible to select a start and end date above the visualisation, to search in a specific time period.

* Hovering over the visualisation will show the year and number of results.

  * Please note that the statistical unit (what is being counted) are documents (programs, articles, interviews), and not the number of occurrences of the term within a document.

* Additionally, you can adjust the visualisation from ‘Absolute’ (the actual quantity of objects) to ‘Relative’ (in percentages, calculated by dividing the number of retrieved objects by the total number of objects that year). This normalisation helps to compare result numbers of different collections.

* Please also note that each record possibly can have multiple occurrences of the selected date field (this happens clearly in the audio-visual collections of Sound and Vision, e.g., a rebroadcast), making it possible that there are more dates found than the number of search results. The number of cases can be seen in the “Outside range” summary in the chart panel:

![](/uploads/search-date-ranges.jpg)

### <a name="term-charts"></a>Understand term charts

The term chart visualisation shows a histogram or a line chart with the amount of documents (relative or absolute) that match your query, distributed over the values of your chosen metadata field.

To generate a term chart visualisation, select a keyword field from the ‘Select keyword field’ dropdown.

![keyword_field_selection-5506ef.PNG](/uploads/keyword_field_selection-5506ef.PNG)

*Tip*: Is the metadata field you want not listed in the dropdown? Only *keyword *metadata fields, fields which contain values from a defined set of options, can be plotted on term charts. Other fields, such as textual descriptions, cannot be plotted as they have an infinite number of possible values.

If none of the results in your search query contain the selected field, you will see a warning message. Otherwise, a chart appears.

![term_histogram.PNG](/uploads/term_histogram.PNG)

*Tip*: You can change the number of bars/points shown in the chart by changing ‘Max keyword values to display’. This is limited by the maximum number of keyword values available in the data.

When you select a keyword field for a chart, it is automatically added as a filter beside your search query. When you change your selection, the filter is removed again. Clicking on a bar or point in the term chart will filter your search with the metadata field value represented by that point. For example, if you click on ‘photo’ as a category, then your search result will be filtered to show only items in the category ‘photo’. The term chart continues to show all the available values, so you can easily switch between values, e.g. between ‘photo’ and ‘music programmes’. This works the same way as the filters on the left hand side of the search page.

***Tip: ***Line chart/histogram and absolute/relative options are available the same as for time line charts.

### <a name="facets"></a> Filter using facets

* Faceted search: Facets include aggregations of terms from the metadata fields of the type “Keyword field”, the terms included in each facet can be used for filtering the results of your query. To see the ‘keyword’ type metadata fields, you can use the “Inspect” tool. The Media Suite supports:

  * Default facets per collection: we include facets for the most important fields in each collection (e.g., “Broadcaster” for the Sound and Vision collection)

  * Creation of new facets: users are allowed to add their own facets to the faceted search functionality (see the screencast on ‘Search’ at the top of this page)

Usually, the facet selections are wiped when a new search term is entered. This is because the values are calculated based on the subset of the archive containing the search term. This means that a facet selection may no longer be relevant for the new search term, for example if you select the mediaType facet value ‘video’ and then search for a term that only occurs in radio programmes. It is useful then that the facets are reset.

However, sometimes you may want to keep the facet selections. For example, if you are interested in a subset of a collection, such as video items produced by a certain broadcaster, then you may want to search for various search terms within that group of items. In that case, you can select the facet values you want, and then check the box ‘Lock facet selections’. The selections will then remain when you type in a new search term. In this way, you can keep your search focussed on your chosen subset.

![lock_facets.PNG](/uploads/lock_facets.PNG)

*Tip*: If you often search in a particular subset, then you can save the facet selections as a query. When you want to search in the subset then you open that query, check ‘Lock facet selections’, and enter your search term.

### <a name="result-list-ranking"></a> Understand how search results are ranked

* List of search results: The Search tool gives a list of search results after entering your query and filters. You can in this list:

  * Order results per relevance

  * Order results per date: it chooses the date field you used for filtering

  * See a summary of the metadata: using the "document" icon on the left

  * See information per item about:

    * Media type: there are icons on the right side of each item indicating whether it is of the type image, audio, video, or text

    * Access: if you can "view", "play", "read" a document, you will see an icon with an open eye on the right side of the item

### <a name="saved-queries"></a> Save your query and search results

* To save your query, including all your refinements, you click on the ‘Save Query’ button at the top-right of the page. Here, you can name your query and select in which of your previously made [user projects ](https://mediasuite.clariah.nl/documentation/howtos/work-in-a-workspace)you want to save it in.

* It is also possible to save the individual result in a user project. For this, you open the item in the resource viewer, and click on the ‘[Bookmark’](https://mediasuite.clariah.nl/documentation/howtos/bookmark) button. Here, you can select in which user project, and in which bookmark group you want to save the item.