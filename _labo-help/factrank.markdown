---
title: FactRank
---

This is the "FactRank" tool. In this brief help page you will:

[Get a quick intro to the tool](#tool)

[Learn more about this tool's features](#features)

[Learn more about this tool's model and data](#data)

## <a name="intro"></a>Intro

The FactRank tool allows you to find factual statements that are worth factchecking.

![FactRank tool](/uploads/factrank-tool1.jpg)

## <a name="features"></a>Features

The FactRank tool offers the following features and functionality:

![FactRank tool regions](/uploads/factrank-tool2.jpg)

### <a name="query"></a>Query

Create a query to specify the statements of your interest. A good approach is to specify a keyword, date range and on or more programs. Use the score slider to provide a minimum offset for the FactRank model score, which ranges between 0 and 100.

### <a name="statements"></a>Statements

Statements are sentences from the ASR (Automatic Speech Recognition) or subtitles from a resource that have been scored using the FactRank model. The the flame icons on the left of the statement indicate the need for factchecking the statement. By clicking on a statement tile, the media viewer will open on the right.

### <a name="media-viewer"></a>Media Viewer

The media viewer will show the resource related to the selected statement. It will automatically start playback on the statement start time.

## <a name="data"></a>Data

FactRank data is created by applying the <a href="https://factrank.org" target="_blank">FactRank</a> model to the video and audio on a subset of the Sound and Vision catalog. New data will be added constantly.

Over het model schrijven de makers zelf:
<i>'FactRank gebruikt een deep-learning model getraind op duizenden uitspraken, die handmatig gelabeld zijn door studenten van de Universiteit Leiden, die op hun beurt werden opgeleid door experten op het gebied van journalistiek en factchecken.'</i>

Een uitgebreide verantwoording staat in de paper: <a href="https://people.cs.kuleuven.be/~bettina.berendt/FactRank/" target="_blank">FactRank: Developing Automated Claim Detection for Dutch-Language Fact-Checkers.</a>
