---
title: Inspect collections
date: 2022-03-17 08:57:00 +01:00
---

This is a tool for the inspection of the metadata in a collection, as well as for the evaluation of the metadata quality of those fields. The Inspect tool offers the option to evaluate metadata completeness, which is calculated based on the number of records for which a given metadata field has been filled in. This completeness can be evaluated per field, or over time.

### Background

The “collection inspection” functionalities support the scholarly tasks of data criticism by facilitating the close inspection of the metadata fields that constitute each collection. The purpose of this tool is to provide an overview of how a collection/dataset is constituted and also to allow a closer inspection of their metadata (e.g., detect incomplete data, or observe value distributions along date fields).\
\
*Please note: The collection inspector does not provide search results.*

### How to use

<iframe title="CLARIAH Media Suite, metadata inspection tool" width="560" height="315" src="https://peertube.beeldengeluid.nl/videos/embed/086342b7-ccdf-41db-9ea5-f336ad70d708?title=0&peertubeLink=0" frameborder="0" allowfullscreen="" sandbox="allow-same-origin allow-scripts allow-popups"></iframe>

1. When you open the Inspect tool you will find a button to add a Collection. This opens the “Collection selector,” where you can see the [available collections](http://mediasuite.clariah.nl/documentation/faq/what-data).

2. When you have chosen a collection, you can inspect its metadata fields by clicking on “Select field to analyse”. Here, you can select the metadata field you wish to inspect, which will open a graphic.

3. In this graphic you can see the completeness of ONE metadata field over time. The timeline chart uses a date field selected by the user. Be aware that these date fields are also metadata, and that they can also be more or less complete. You can evaluate the completeness of a date field as well.

4. There is a [Jupyter notebook](http://mediasuite.clariah.nl/documentation/howtos/jupyter-notebooks) prepared for complementing the functions available in this tool. For example:

   * If you want to compare the completeness of two or more metadata fields

   * If you want to check the metadata completeness of a section of the collection (e.g., for resources of a certain media type)

5. If you are interested in the completeness of the ASR (automatic speech recognition) transcripts held by the Netherlands Institute for Sound and Vision, it is recommended to select this data layer in the Search tool, and see its availability over time through the Date, sorting (PREFERRED) field.