---
title: API
position: 0
---

Application Programming Interface. A set of [subroutine](https://en.wikipedia.org/wiki/Subroutine) definitions, [protocols](https://en.wiktionary.org/wiki/Protocol), and tools for building [application software](https://en.wikipedia.org/wiki/Application_software); makes it easier to develop a [computer program](https://en.wikipedia.org/wiki/Computer_program) by providing all the building blocks, which are then put together by the [programmer](https://en.wikipedia.org/wiki/Programmer) (Source: Wikipedia).

The foundation of the Media Suite is built on our APIs. They facilitate the interaction with data from various collections:

* Collections API (high-level collection information (metadata: data format, size, etc.).

* Search API (searching for collection items).
  Annotation API (annotating existing data using W3C Web Annotation standard (mainly for manual annotations).

* Data Enrichment API (collection enrichment through automatic mechanisms or by human interaction).

![](https://mediasuite.clariah.nl/uploads/apis.jpg)

*Figure showing the Media Suite APIs, and how they can be used via the Jupyter notebooks.*

The Data Enrichment API is not fully implemented yet (thus, it is not shown in the graphic). At this moment, it works basically in this way:

* notebook —-\[create enrichment “job”\]—-> enrichment API

* notebook ——–\[get status of job\]—-> enrichment API

* notebook ——–\[get job/enrichment output\]—-> enrichment API

* the results of the enrichment can be put in in the annotation API, or directly in an index for the search/collection API.
  

**NB:** The APIs can only be used with our Jupyter notebooks service at this moment. Please use our [Contact options](https://mediasuite.clariah.nl/contact) for more information.