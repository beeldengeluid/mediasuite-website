---
title: 'Tool: Search'
---

In this help menu you will learn How To:

* [Use the Search tool (Screencast)](#screencast)

* [Know which data is used by the Search tool](#data)

* [Use search expressions (Boolean operators)](#search-boolean)

* [Search layers (predetermined aggregations)](#search-layers)

* [Search per field(s) (field cluster selector)](#field-cluster)

* [Filtering per date](#date-filter)

* [Understand time line charts](#timeline-charts)

* [Understand term charts](#term-charts)

* [Filter using facets](#facets)

* [Understand how search results are ranked](#result-list-ranking)

* [Save your query](#saved-queries)

* [Bookmark search results](#bookmarking)

---

### <a name="screencast"></a>Use the Search tool

<iframe title="CLARIAH Media Suite screencast: Search" width="560" height="315" src="https://peertube.beeldengeluid.nl/videos/embed/5d84691d-1206-4b45-9080-1b2bb1aebbd3?subtitle=en&amp;title=0&amp;peertubeLink=0" frameborder="0" allowfullscreen="" sandbox="allow-same-origin allow-scripts allow-popups"></iframe>

### <a name="data"></a>Know which data used by the Search tool

This tool uses all the data and enrichments available via the Media Suite. See [Data page](/data) for more information.

### <a name="search-boolean"></a>Use search expressions (Boolean operators)

At this moment (version 4) the search API detects when a user does a boolean/wildcard query by looking for the keywords:

**OR**

* Default operator. Connect two or more similar concepts (synonyms). ANY of your search terms can be present in the resulting records. Broaden your results.

**AND**

* ALL search terms must be present in the resulting records. Narrows your results

* Example: Koningin AND Beatrix

* Searches for the word ‘Koningin’ AND the word ‘Beatrix’ - but they do not have to be next to each other

**NOT**

* Ignore concepts (words) that may be implied by your search terms

**\***

* Wildcard which matches any character sequence (including the empty one).

* Example 1: boeren\* --> *boerenleven, boerenmarkt*

* Example 2: boeren \*  --> *boeren zijn bang*

* Note that a space between the last character and the asterisk wildcard influences the results

**?**

* Wildcard which matches any single character

* Example 1: vluchteling? —>  ‘vluchtelinge

* Searches for a word that starts with ‘vluchteling’ and has one extra character

**" "**

* Exact expression

* Example 1: "Broodje Aap"

* Searches for the phrase *Broodje Aap*

**Nesting and search order**

* Nesting queries is supported

* Use parentheses to separate the queries. The logical order in which words are connected influences the results

* Example1. (koe AND varkens) OR boeren

* Example2. Koningin AND Beatrix NOT “Koningin Beatrix”

* Example2 searches for items with the word ‘Koningin’ AND the word ‘Beatrix’ - but NOT the phrase ‘Koningin Beatrix’.  So we get e.g. items that talk about Prinses Beatrix and Koningin Juliana, but not Koningin Beatrix

**Capitalization**

* Boolean queries are not case-sensitive

* Example: bordeaux, Bourdeaux

* Searching for any of these two terms will give the same results

**Query corrections/suggestions**

* Some collections offer search suggestions, see [Autocomplete Functionality](#autocomplete-functionality)

* Query correction is not supported

* Example: koningi

* Searching for this word gives no matches (matching is precise and does not accept typos or missing letters)

Note: Future work includes supporting proximity parameters.

### <a name="search-layers"></a> Search layers

![](/uploads/search-layers.png)

To facilitate more precise queries, users can use "search layers", which are aggregations of metadata fields. At this moment (version 4) we support three layers for all collections:

* **All**: searches in all the metadata and automatic enrichments at the time

* **Archive's metadata**: searches only in the mostly manually generated metadata (archival descriptions and subject/content metadata). Subsets of the metadata with a similar function are aggregated together in ‘field cluster’s’. These are the common aggregations for all collections:

  * Title field cluster: when there are different title fields, these have been aggregated and users can search in all of them at once

  * Description field cluster: searches in all fields (per each collection) which contain descriptions (e.g., summaries, abstracts)

  * Other clusters: depending on the collection there may be other clusters available (e.g., “Persons - all”, and "Subtitles" for the Sound and Vision audio-visual collection).

* **Enrichments**: searches in the existing layer(s) of mostly automatic content enrichments (e.g., OCR, or ASR- automatic speech transcripts)

*Tip*: To see which fields have been aggregated in each cluster, hover over the field cluster.

Selecting a field cluster makes your search more precise, but it can mean that you miss results outside of those fields. Be aware also that the completeness of the metadata in the field(s) you select for the cluster will affect your search results.
Tip: You can use the Collection Inspector to check completeness of metadata fields and to read descriptions of metadata fields

### <a name="field-cluster"></a> Search per field (field cluster selector)

![](/uploads/search-field-clusters.png)

Users can determine in which field or group of fields they want to search for their query expression. For example, a user may want to search for a specific cast member’s name (e.g., Mies Bouwman). In that case:

* Start to type in a convenient name for the new cluster, e.g. “Cast members”. A new option will appear in the cluster dropdown ‘Create “Cast members””. Click on this option

* Search for the field of interest by typing in a search term (e.g., "cast"). If there are many fields which include cast information, they can be aggregated in a "field cluster." Click on ‘Choose’ to create the cluster

* Now you can search in the cluster as if it were one of the Search layers described above.

*Tip*: To see the list of metadata fields per collection, as well as their definitions, use the Collection Inspector tool.

### <a name="autocomplete-functionality"></a> Autocomplete functionality

Some collections have a thesaurus with set lists of terms, e.g. names of persons, that are used in the metadata. For these collections these lists are used to offer autocomplete options when searching. Check the collection description in [the Media Suite data registry](https://mediasuitedata.clariah.nl/)\[autocomplete.PNG\] to see if a given collection has autocomplete functionality, and for what sorts of terms.

To use autocomplete, simply type the name or word you are interested in into the Search field. You will get a list of options to choose from. Selecting an option will search for that option in the current collection. As the option is a thesaurus term, it can have multiple labels. The search looks for an exact match for any one of the labels. The results found will depend on what sort of labels are used, e.g. if a thesaurus only contains labels in one language then those terms will not be found in other languages. To find out what sort of labels are used, consult the collection description.

![](/uploads/autocomplete.PNG)

*Tip*: If you are not sure which term you want from the autocomplete list, click on the icon next to the option. A pop-up will open with links to additional information about the term in external sources, such as Wikidata (see [View Additional Information](/documentation/howtos/view-additional-information))

*Tip*: Not interested in the autocomplete options? Simply click anywhere outside the list and it will disappear.

### <a name="date-filter"></a> Filtering per date

You can limit your query to a specific period of time. It is important to keep in mind that collections often include several fields of the type "Date". To see the metadata fields that are of the type "Date", you can use the "Inspect" tool and consult the metadata dictionaries.

* In the date filter, you first have to select which date field you would like to use for filtering, and then enter the date range. For example, for The Sound and Vision audiovisual collection, we recommend to select the field "Date:sorting (preferred)" (which is the closest equivalent to the "broadcasting date"). You can check how complete this metadata field has been over time by using the Inspector tool.

### <a name="timeline-charts"></a>Understand time line charts

The timeline visualisation shows a histogram or a line chart with the amount of documents (relative or absolute) which match your query.

* To generate a timeline visualization of your results based on time, first select a date field (see item before.

* Mouse-overs show the year and the number of results per year.

* Please note that the statistical unit (what is being counted) are documents (programs, articles, interviews), and not the number of occurrences of the term within a document; that is: “1” means one document (i.e., one television programme, one newspaper article, one oral history interview).

* The relative frequencies (percentages) are calculated by dividing the number of documents with hits by the total number of documents within one year (or week, day, depending of the ‘bucket’).

* This normalization helps to compare result numbers of different collections.

* Please also note that each record possibly can have multiple occurrences of the selected date field (this happens clearly in the audio-visual collections of The Netherlands Institute for Sound and Vision, e.g., a rebroadcast), making it possible that there are more dates found that the number of search results. The number of cases can be seen in the "Outside range" summary in the chart panel:

![](/uploads/search-date-ranges.jpg)

### <a name="term-charts"></a>Understand term charts

The term chart visualisation shows a histogram or a line chart with the amount of documents (relative or absolute) that match your query, distributed over the values of your chosen metadata field.

To generate a term chart visualisation, select a keyword field from the ‘Select keyword field’ dropdown.

![keyword_field_selection-5506ef.PNG](/uploads/keyword_field_selection-5506ef.PNG)

*Tip*: Is the metadata field you want not listed in the dropdown? Only *keyword* metadata fields, fields which contain values from a defined set of options, can be plotted on term charts. Other fields, such as textual descriptions, cannot be plotted as they have an infinite number of possible values.

If none of the results in your search query contain the selected field, you will see a warning message. Otherwise, a chart appears.

![term_histogram.PNG](/uploads/term_histogram.PNG)

*Tip*: You can change the number of bars/points shown in the chart by changing ‘Max keyword values to display’. This is limited by the maximum number of keyword values available in the data.

When you select a keyword field for a chart, it is automatically added as a filter beside your search query. When you change your selection, the filter is removed again.

Clicking on a bar or point in the term chart will filter your search with the metadata field value represented by that point. E.g., if you click on ‘photo’ as a category, then your search result will be filtered to show only items in the category ‘photo’. The term chart continues to show all the available values, so you can easily switch between values, e.g. between ‘photo’ and ‘music programmes’.  This works the same way as the filters on the left hand side of the search page.

Line chart/histogram and absolute/relative options are available the same as for time line charts.

### <a name="facets"></a> Filter using facets

* Faceted search: Facets include aggregations of terms from the metadata fields of the type "Keyword field", the terms included in each facet can be used for filtering the results of your query. To see the metadata fields that are of the type "Keyword", you can use the "Inspect" tool. At this moment we support:

  * Default facets per collection: we include facets for the most important fields in each collection (e.g., "Broadcaster" for the Sound and Vision collection)

  * Creation of new facets: users are allowed to add their own facets to the faceted search functionality (see screencast: Search)

Usually, the facet selections are wiped when a new search term is entered. This is because the values are calculated based on the subset of the archive containing the search term. This means that a facet selection may no longer be relevant for the new search term, for example if you select the mediaType facet value ‘video’ and then search for a term that only occurs in radio programmes. It is useful then that the facets are reset.

Sometimes, however, you may want to keep the facet selections. For example, if you are interested in a subset of a collection, such as video items produced by a certain broadcaster, then you may want to search for various search terms within that group of items. In that case, you can select the facet values you want, and then check the box ‘Lock facet selections’. The selections will then remain when you type in a new search term. In this way, you can keep your search focussed on your chosen subset.

![lock_facets.PNG](/uploads/lock_facets.PNG)

*Tip*: If you often search in a particular subset, then you can save the facet selections as a query. When you want to search in the subset then you open that query, check ‘Lock facet selections’, and enter your search term.

### <a name="result-list-ranking"></a> Understand how search results are ranked

* List of search results: The Search tool gives a list of search results after entering your query and filters. You can in this list:

  * Order results per relevance (description to be included soon)

  * Order results per date: it chooses the date field you used for filtering

  * See a summary of the metadata: using the "document" icon on the left

  * See information per item about:

    * Media type: there are icons on the right side of each item indicating whether it is of the type image, audio, video, or text

    * Access: if you can "view", "play", "read" a document, you will see an icon with an open eye on the right side of the item

### <a name="saved-queries"></a> Save your query

* Save the query paramenters: the Search tool allows users to store the queries for further use giving them a name. See [Saved queries](/documentation/howtos/save-queries) section for more details.

### <a name="bookmarking"></a> Bookmark search results

* Bookmark items: the screencast below shows how the bookmarking functionality works. See also the [Bookmarks section](/documentation/howtos/bookmar) in the Documentation.

<iframe title="CLARIAH Media Suite screencast: Bookmark" width="560" height="315" src="https://peertube.beeldengeluid.nl/videos/embed/2692416b-cf50-4879-9110-3f7c9e1d7640?title=0&amp;peertubeLink=0" frameborder="0" allowfullscreen="" sandbox="allow-same-origin allow-scripts allow-popups"></iframe>

> **Please use our [Public forum](https://gitter.im/CLARIAH-media-studies/Lobby) if you miss content in this page or if you find any issues while using the Media Suite.**