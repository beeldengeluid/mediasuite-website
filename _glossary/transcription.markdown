---
title: Transcription and Alignment in Automated Speech Recognition (ASR)
position: 2
---

**Transcription**

Transcription is the systematic representation in written form of  language: speech, sign language, or text in another writing form. In the  academic discipline of Oral History research, transcription is an  essential part of the methodology, as the transcripts are the main  source for analysis of collected interviews. In recent times,  tools such as alignment are emerging that allow Oral History scholars to  simultaneously use text transcripts and the original audio recordings  during analysis. Outside academia, examples of transcriptions are the  proceedings of court hearings or physician’s recorded voice notes. A  verbatim transcript includes all dialogue spoken, word for word,  including fillers, false starts, and repetitions.

Automatic speech recognition (ASR) technology is increasingly used to  support or even replace manual transcription. As speech recognition  will produce errors that need to be corrected manually afterward,  specialized tools are developed that try to make the correction work  less tedious.

**Alignment**

Alignment (officially ‘forced alignment’) is the process of  synchronizing a text transcription of speech to the audio recording that  contains the speech, by automatically adding time labels to every word in the transcript using a specific form of speech recognition  technology. This technology is sometimes called ‘informed speech  recognition’: the words to be recognized are already known — the task is  to find the exact positions in the audio where the words occur. In  practice, the speech transcripts are usually not an exact representation of the speech. For example, repetitions and filler words such as ‘uh’  and ‘ah’ are often omitted, and ungrammatical sentences reformulated. The further the text transcripts depart from the verbatim speech, the more difficult the alignment process for the speech recognition  technology will be.

Alignment is a very valuable tool to enable word level access to  spoken word recordings (jump to positions where a particular word is  mentioned) in cases where text transcripts are available such as in Oral  History research where scholars are used to making verbatim transcripts  of interviews in word processors that do not capture time information. Examples of text transcripts in other domains that are deployed for  alignment are subtitles for the hearing impaired, auto-cues, production  scripts, and court reports.

An alignment tool typically takes as input (i) a plain text file with  the speech transcript, and (ii) the audio recording that contains the  speech, and provides as output a file where time labels are added to  each of the words in the transcript, for example in a list format with on each line the start time and a word:

00:01:23:34 today

00:01:25:01  we

00:01:25:28 started

This output can be used in a transcription viewer to  jump  immediately to the corresponding position in the audio file by clicking  on a word while viewing a single interview. It can also be used to jump  to positions in multiple audio files by indexing the aligned text (of  multiple interviews) in a search engine.

- Roeland Ordelman