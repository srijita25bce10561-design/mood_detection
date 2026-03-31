1.  PROJECT TITLE:
   
    Mood Detection System ( Prolog Language )
    
2.  PROBLEM IDENTIFICATION:
   
    In today’s fast-paced world, many students and working professionals struggle with stress and burnout but don’t openly talk about it. Early detection of           stress or negative emotions can help people take preventive actions.

3.  OBJECTIVE:
   
    To build an AI-powered system that:
    
        a) Detects a user’s mood using ML/NLP techniques.

        b) Predicts stress levels from text or voice input.
    
        c) Recommends personalized activities (music, breathing exercises, journaling prompts, etc.) to improve wellbeing.

4.   EXPECTED OUTCOMES:
   
     A small app/website where users type or speak about their day.

     The system classifies mood: happy, stressed, anxious, sad, neutral.
     
     The model generates wellbeing recommendations.
     
     Dashboard showing weekly emotional trends.

5.   CONCEPTS USED( AI AND ML ):
    
     Natural Language Processing (NLP)
     
     Sentiment analysis
     
     Text vectorization: TF-IDF / Word Embeddings
     
     ML models: Logistic Regression / SVM / Random Forest / Naive Bayes
     
     Optional: Deep Learning (LSTM, BERT)
     
     Data visualization

6.   TOOLS AND LIBRARIES:
    
     A) Programming Language:
     
        Prolog (Used for implementing logic-based mood detection using rules and facts)
     
     B) Prolog Environment / Compiler:
     
        GNU Prolog (Used to write, compile, and execute the Prolog program)
     
     C) Text Editor:
     
        Notepad / Notepad++ / VS Code (Used to write and save the .pl program file )
     
     D) Here no external library is used , only built in logical predicates are used.

7.   STRUCTURED DEVELOPMENT PROCESS:

     Step 1: Data Collection:
     
             Use publicly available sentiment datasets like:
                    a) Twitter Sentiment Dataset
                    b) Emotion Classification Dataset Preprocess text (lowercase, stopword removal, stemming/lemmatization).

     Step 2: Feature Extraction :

            Convert text to numerical features using:
                   a) TF-IDF
                   b) Bag-of-Words
                   c) Word embeddings (optional)

      Step 3: Model Development :

            Train multiple ML models and compare accuracy:
                  Logistic Regression
                  Support Vector Machine
                  Random Forest
                  Naive Bayes Select the best model.

      Step 4: System Integration :

           Build a simple user interface using Flask/Streamlit.
           User enters their mood journal.
           Backend processes text → predicts mood → system displays result.

      Step 5: Recommendations Engine :

           Based on mood:
                 Stressed → breathing exercises, soft music
                 Sad → uplifting playlist, journaling prompt
                 Happy → productivity tips
                 Neutral → daily motivation

      Step 6: Testing & Visualization :

          Provide:
                Confusion matrix
                Accuracy, F1-score
                Graph of weekly mood trend

8. REQUIREMENT ANALYSIS(SRS POINTS) :
    
        Functional Requirements :
               a) Input system for text/voice.
               b) Model predicts mood category.
               c) Recommendation generator.
               d) Dashboard visualization.

        Non-Functional Requirements:
               a) Accuracy ≥ 85%
               b) Fast response time
               c) Secure data handling

9. ALGORITHM DEVELOPMENT:

          Sentiment Prediction Algorithm :
               a) Take input text.
               b) Preprocess text using NLP pipeline.
               c) Convert to TF-IDF vector.
               d) Feed vector into trained ML model.
               e) Predict emotion label.
               f) Pass label to recommendation module.
               g) Display output.
    
    

