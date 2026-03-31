SOUCE CODE WRITTEN IN PROLOG:

%-----------------------
%FACTS: Keywords for moods
%-----------------------

happy_words([happy,joy,excited,amazing,great,good,love]).
sad_words([sad,depressed,unhappy,low,terrible,crying]).
stressed_words([stress,stressed,pressure,tired,exhausted]).
anxious_words([anxious,worried,nervous,fear,panic]).
neutral_words([ok,fine,normal,average]).

%----------------------
%CHECK WORD IN LIST
%---------------------
check_words([],_,0).
check_words([H|T], Words , Count):-
      memebers(H, Words),
      check_words(T,Words,C1),
      Count is C1+1.
check_words([H|T], Words , Count):-
      \+ member(H,Words),
      check_words(T, Words , Count).

%---------------------
%MOOD DETECTION
%--------------------
detect_mood(InputWords, Mood):-
      happy_words(HW),
      sad_words(SW),
      stressed_words(STW),
      anxious_words(AW),
      neutral_words(NW),

      check_words(InputWords , HW , HCount),
      check_words(InputWords , SW , SCount),
      check_words(InputWords , STW , STCount),
      check_words(InputWords , AW , ACount),
      check_words(InputWords , NW , NCount),

      max_mood([ HCount, SCount , STCount , ACount , NCount], Mood).

%----------------------
%FIND MAX MOOD
%---------------------
max_mood([H,S,ST,A,N],happy) :- H>=S, H>=ST, H>=A, H>=N.
max_mood([H,S,ST,A,N],sad) :- S>=H, S>=ST, S>=A, S>=N.
max_mood([H,S,ST,A,N],stressed) :- ST>=H, ST>=S, ST>=A, ST>=N.
max_mood([H,S,ST,A,N],anxious) :- A>=H, A>=S, A>=ST, A>=N.
max_mood([H,S,ST,A,N],neutral) :- N>=H, N>=S, N>=ST, N>=A.

%--------------------
%RECOMMENDATIONS
%--------------------
recommend(happy, "Keep going! Set new goals or help others.").
recommend(sad, "Listen to music or write your feelings.").
recommend(stressed, "Try deep breathing or take rest.").
recommend(anxious, "Practice mindfulness or talk to someone.").
recommend(neutral, "Stay productive and plan your day.").

%-------------------
%MAIN BODY OF THE PROGRAM
%-------------------
start:-
  write("Enter your feelings as a list(like,[i,am,very stressed]):"),nl,
  read(Input);
  detect_mood(Input,Mood),
  write("Detected Mood is"),write(Mood),nl,
  recommend(Mood, SUggestion),
  write("Suggestion :"),write(Suggestion),nl.


OUTPUT: 

?- consult('mood.pl').
?- start.

[i, am, very, stressed, and, tired].//Sample input

Detected Mood: stressed
Suggestion: Try deep breathing or take rest.// Sample output
