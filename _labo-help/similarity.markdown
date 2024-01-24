---
title: Similarity
---

This is the "Similarity" tool. In this brief help page you will:

[Get a quick intro to the tool](#tool)

[Learn more about this tool's features](#features)

[Learn more about this tool's data](#data)

[Learn more about the underlying VisXP technology](#technology)

## <a name="intro"></a>Intro

In the Similarity tool you can watch a media resource, explore and navigate the content using visual and audio keyframes. Moreover, it allows you to discover related keyframes from other media resoures. The tool enables researches to browse a part of the archive in a way that is complementary to the structured search offered in the Search tool. This may expose relationships that are not apparent from the metadata, emerging from the visual and audio domain. These relations are often more associative (where composition or colours resemble the keyframe) than semantic (like picturing the same object or person). 

Note that the current version of the tool is merely a proof of concept, based on a limited amount of [data](#data). It is being developed further in 2024, and a bigger part of the collection will be covered. 

![Similarity tool](/uploads/similarity-tool1.jpg)

## <a name="features"></a>Features

The Similarity tool offers the following features and functionality.

![Similarity tool regions](/uploads/similarity-tool2.jpg)

### <a name="keyframes"></a>Current resource keyframes

Keyframes have been selected using the [scene detect library](https://www.scenedetect.com/). They are accompanied by spectrograms of 1 second audio centered around the keyframe.

The keyframes are shown in a grid under the media viewer. They provide a visual and auditory overview of the current video. When the video is playing, the currently active keyframe is highlighted. Clicking on a tile moves the player video position to the keyframe timestamp. This way one can navigate the video, in addition to the left/right buttons that move playback to the previous or next keyframe.

The keyframes grid is also available in the resource viewer. It provides the same control for the media playback as in the similarity tool.

### <a name="related-keyframes"></a>Related keyframes

Related keyframes are loaded for the active keyframe. Results can be controlled using the query options. Use the info icon behind each input to learn more about its use. 

Based on the active keyframe in the left panel, similar keyframes are retrieved by comparing the distance between visual and auditory feature vectors that have been created using the [VisXP model](#technology). Search scores can be displayed by using the score button:

![Similarity tool score button](/uploads/similarity-tool-score.jpg)

### <a name="annotation"></a>Annotation and bookmarking

Using the annotation button, annotations can be made on a segment that spans the start and end time of the detected shot that the keyframe belongs to. This applies to both the [current resource's keyframes](#keyframes) and the [related keyframes](#related-keyframes)

![Similarity tool annotation](/uploads/similarity-tool-annotation.jpg)

Annotations you make will show up in the Resource Viewer, which you can conveniently open by using the resource viewer button on the top right.

Annotations are always added to a new layer called 'Similarity'. Feel free to edit the contents in the resource viewer. However, keep in mind that: 1) the Similarity tool will always create a new layer called Similarity if not present, and 2) if you change the start/end time of segments, the similarity tool can't use them for bookmarking anymore.

In addition, both the current resource and the resources belonging to the related keyframes can be bookmarked to your project. 

## <a name="data"></a>Data

Currently, only a small selection of the archive has been processed. It contains resources about specific events, for example 9/11 attacks, refugees debate in 2015, and the Dutch ice skating tour called elfstedentocht.

More data will be added in the future.

## <a name="technology"></a>VisXP Technology

In [VisXP](https://www.clicknl.nl/en/case/pps-projects-visxp/), self-supervised learning was applied to train models for cross-modal audio-video clustering. To learn more about the training phase, please consult the <a href="https://github.com/beeldengeluid/dane-visual-feature-extraction-worker/blob/main/model/model%20documatation.pdf" target="_blank">model documentation</a>.

The trained model allows us to embed all video snippets (shots, in our case) in latent, high-dimensional space. Proximity in this space corresponds to a sense of relatedness or similarity. 

The following steps were taken to apply the model to videos in the NISV archive:

- First, videos were segmented into shots using [scenedetect](https://www.scenedetect.com/).
For every shot, a representative keyframe (image) is extracted together with the corresponding audio spectogram (based on 1 second of audio). 

- Next, the model (a convolutional neural network) was applied to extract features. 

- For similarity search, the nearest items in feature space are retrieved. The vector search itself is handled by an Elastic Search backend. 