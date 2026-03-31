1.  PROJECT TITLE:
   
    Mood Detection System ( Prolog Language )
    
3.  PROBLEM IDENTIFICATION:
    In today’s fast-paced world, many students and working professionals struggle with stress and burnout but don’t openly talk about it. Early detection of stress or     negative emotions can help people take preventive actions.

4.  OBJECTIVE:
    To build an AI-powered system that:
        a) Detects a user’s mood using ML/NLP techniques.
        b) Predicts stress levels from text or voice input.
        c) Recommends personalized activities (music, breathing exercises, journaling prompts, etc.) to improve wellbeing.

5.   EXPECTED OUTCOMES:
     A small app/website where users type or speak about their day.
     The system classifies mood: happy, stressed, anxious, sad, neutral.
     The model generates wellbeing recommendations.
     Dashboard showing weekly emotional trends.

6.   CONCEPTS USED( AI AND ML ):
     Natural Language Processing (NLP)
     Sentiment analysis
     Text vectorization: TF-IDF / Word Embeddings
     ML models: Logistic Regression / SVM / Random Forest / Naive Bayes
     Optional: Deep Learning (LSTM, BERT)
     Data visualization

7.   TOOLS AND LIBRARIES:
     A) Programming Language:
        Prolog (Used for implementing logic-based mood detection using rules and facts)
     B) Prolog Environment / Compiler:
        GNU Prolog (Used to write, compile, and execute the Prolog program)
     C) Text Editor:
        Notepad / Notepad++ / VS Code (Used to write and save the .pl program file )
     D) Here no external library is used , only built in logical predicates are used.

8.   STRUCTURED DEVELOPMENT PROCESS:

     Step 1: Data Collection:
             Use publicly available sentiment datasets like:

Twitter Sentiment Dataset

Emotion Classification Dataset Preprocess text (lowercase, stopword removal, stemming/lemmatization).

Step 2: Feature Extraction

Convert text to numerical features using:

TF-IDF

Bag-of-Words

Word embeddings (optional)

Step 3: Model Development

Train multiple ML models and compare accuracy:

Logistic Regression

Support Vector Machine

Random Forest

Naive Bayes Select the best model.

Step 4: System Integration

Build a simple user interface using Flask/Streamlit.

User enters their mood journal.

Backend processes text → predicts mood → system displays result.

Step 5: Recommendations Engine

Based on mood:

Stressed → breathing exercises, soft music

Sad → uplifting playlist, journaling prompt

Happy → productivity tips

Neutral → daily motivation

Step 6: Testing & Visualization

Provide:

Confusion matrix

Accuracy, F1-score

Graph of weekly mood trend

