---
title: Similarity
---

This is the "Similarity" tool. In this brief help page you will:

[Get a quick intro to the tool](#tool)

[Learn more about this tool's features](#features)

[Learn more about this tool's data](#data)

[Learn more about the underlying VisXP technology](#technology)

## <a name="intro"></a>Intro

In the Similarity tool you can watch a media resource, explore and navigate the content using visual and audio keyframes, and discover related keyframes from other media resoures. The tool enables researches to

![Similarity tool](/uploads/similarity-tool1.jpg)

## <a name="features"></a>Features

The Similarity tool offers the following features and functionality.

![Similarity tool regions](/uploads/similarity-tool2.jpg)

### <a name="keyframes"></a>Keyframes

Keyframes are shown in a grid under the media viewer. It provides a visual and auditive overview of the current video.

Keyframes have been detected using the scene detect library. They are accompanied by spectrograms of 1 second audio centered around the keyframe.

When the video is playing, the currently active keyframe is highlighted. Clicking on a tile moves the player video position to the keyframe timestamp. This way one can navigate the video, in addition to the left/right buttons that move playback to the previous or next keyframe.

Using the annotation button, annotations can be made on a segment that spans the keyframe start and end time.

The keyframes grid is also available in the resource viewer. It provides the same control about the media playback as in the similarity tool.

### <a name="related-keyframes"></a>Related keyframes

Related keyframes are loaded for the active keyframe. Results can be controlled using the query options. Use the info icon behind each input to learn more about its use!

Based on the input keyframe, similar keyframes will be found by comparing the distance between visual and auditive feature vectors that have been created using the [VisXP model](#technology). The vector search itself is handled by an Elastic Search backend. Search scores can be displayed by using the score button:

![Similarity tool score button](/uploads/similarity-tool-score.jpg)

In the related keyframes grid overview, the resources can be bookmarked to the project and annotations can be added to the specific segments:

![Similarity tool annotation](/uploads/similarity-tool-annotation.jpg)

### <a name="annotation"></a>Annotation

Annotations you make will show up in the Resource Viewer, which you can conveniently open by using the resource viewer button on the top right.

Annotations are always added to a new layer called 'Similarity'. Feel free to edit the contents in the resource viewer. However, keep in mind that: 1) the Similarity tool will always create a new layer called Similarity if not present, and 2) if you change the start/end time of segments, the similarity tool can't use them for bookmarking anymore.

## <a name="data"></a>Data

Currently there is only a small selection of data that has been processed. It contains resources about specific events, for example 9/11 attacks, refugees and the Dutch ice skating tour called elfstedentocht.

More data will be added in the future.

## <a name="technology"></a>VisXP Technology

Navigating through the vast expanse of video content can be a challenging task, often leaving users struggling to pinpoint the exact videos that align with their interests.

VisXP uses an innovative approach that enables search engines to train their models on a massive repository of audio-video data, allowing them to decipher intricate patterns and associations between the two modalities. This enhanced understanding directly translates into more pertinent and accurate retrieval results as users embark on their video search quests.

By leveraging the power of cross-modal learning, search engines can effectively identify videos that match user queries, even when the audio or video quality is inconsistent. This ability to discern meaningful connections between the auditory and visual aspects of videos significantly improves the overall accuracy and relevance of search results.

Self-supervised deep learning-based AI has revolutionized the way we interact with technology, particularly in the realm of video search. Traditional video search engines rely on manual annotation of video content, which is a time-consuming and labor-intensive process. However, the advent of self-supervised learning has opened up a new frontier in video search, enabling search engines to learn from unlabeled data without human intervention.

In essence, self-supervised learning by cross-modal audio-video clustering empowers search engines to transform the way users discover and engage with captivating content. Harnessing this cutting-edge technology will make AI technology widely applicable within media archives, enabling social scientists to explore and analyze data more efficiently and insightfully. By combining the power of AI with the richness of media archives, this project will transform the way social science research is conducted and enhance our understanding of the social world.

Want to know more about the model? Read the <a href="https://github.com/beeldengeluid/dane-visual-feature-extraction-worker/blob/main/model/model%20documatation.pdf" target="_blank">model documentation</a>
