# **Final Project: Twitter Sentiment Analysis**

<br><br>

## Project Overview

### Executive Summary
Our team has decided to utilize Machine Learning to conduct a Sentiment Analysis on Gun Control using Natural Language Processing (NLP) and Machine Learning (ML) libraries and tools.  Our team has opted to find and review tweets that contain a number of predetermined relevant keywords and focus on the 2022 Midterm Elections timeframe.
The team has conducted a few team sessions to align on classification criteria on a set of 100 tweets.  This will allow us to more closely agree on tweet classification to train our ML models.  Once trained and tested, we will decide on the most accurate ML model and proceed to analyze at least 400,000 tweets to understand sentiment on gun-control during pre- and post-election dates.  Ultimately, the team will use the metadata to make appropriate data visualization tools and provide summaries and opinions on the data.

The data results will be discussed in the "Results" section.  A summary section will contain the teams' findings, reporting, considerations and any recommendations for future studies.

<br>

### Topic Selection
Our team had been considering doing a Sentiment Analysis prior to the introduction of the Big Data module (in September 2022).  After going through the Big Data and subsequent ML modules, we agreed we would do use NLP and ML to conduct an analysis of people's pro-gun and anti-gun sentiments expressed on Twitter on the days leading to the 2022 Mid-Term Elections held on November 8, 2022.
Once the ML model is trained to an acceptable accuracy range, the analysis should allow to present sentiment percentages across the population of tweets gathered.  The tweet population will be limited to the United States.  Ultimately, the team aims to present the variation of sentiment across various dates leading up to and post the election.  If our premium-access-tier request is approved, the team aims to include an analysis of sentiment variation throughout various regions of the country to better understand how the pro- and anti-gun sentiment is distributed across the country through the time period described herein.

<br>

### Data Sources
* Twitter developer API

<br>

### Software Used
* Python 3.7.13
* Jupyter Notebook:
  * IPython          : 7.31.1
  * ipykernel        : 6.9.1
  * ipywidgets       : 7.6.5
  * jupyter_client   : 6.1.12
  * jupyter_core     : 4.9.2
  * jupyter_server   : 1.13.5
  * jupyterlab       : 3.3.2
  * nbclient         : 0.5.13
  * nbconvert        : 6.4.4
  * nbformat         : 5.3.0
  * notebook         : 6.4.8
  * qtconsole        : 5.3.0
  * traitlets        : 5.1.1
* ML Methods: `<TBD>`

<br><br><br>

## Methodology

The following section contains details about the project and how the team derived results from the analysis.

### Documentation
The following documentation is captured as part of this repository:
* Group 6 Final Project Proposal
* Final Project Process Overview

### Branching
The team agreed to use the following branching strategy:

_More details on [this Google document](https://docs.google.com/document/d/1R5ymXR9j9KWXxl4_9Ug5ayz2Q5TtuGFOi0grzYWA0bA/view)._

### Data Extraction (Kevin)


### Data Preprocessing 

#### Training the Trainers
2 team members were assigned a set of 50 tweets that were extracted through the Twitter API which contained one of two hashtags: #uvalde or #gun-control.
In total, 100 tweets were used (50 per each 2 team members) to classify the dataset.
After each member submitted their respective sentiment classification, the results were combined into one single csv file.  This file was further processed using pandas DataFrames to create a new column identifying conflicts in classification.  Using this file, the team held a couple of meetings to ensure alignment on the methodology for classifying tweet sentiment.  During this review, we still ended with 6% of tweets that we could not fully agree on classification.  These will be reviewed more in depth with the TAs and/or instructor(s) to try and reduce ambiguity.


#### Preprocessing
The aforementioned classified dataset (100 tweets) will be fed into a few ML models to understand what model may be best suited for our analysis.
***NOTE:** This initial analysis has two intentions: (1) understand which models may be most beneficial for our use-case and (2) meet the criteria in the Segment 1 rubric.  This is not the final training dataset.*

The final training data will contain at least 1000 rows of classified tweets.  The team will aim for using the following classifications and percentages to train the ML models and decide which model provides the best accuracy:
* Pro-gun - 40%
* Anti-gun - 40%
* Neutral - 20%


### Database  (Dana)


### Proposed ML Models


### Training the Model(s)
TBD

### Testing the Model(s)
TBD

### Dataset Analysis
TBD

<br><br><br>

## Results 

### Results1

### Results2

### Results3

### Results4

### Results5

### Results Summary & Recommendations

<br><br><br>

## Appendix

Templates:

| ![Figure1]() |
| :---: |
| **Figure 1.** Example |



