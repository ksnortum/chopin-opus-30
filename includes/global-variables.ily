%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....
\version "2.24.0"

%
% Scheme functions
%

makeSpanner =
#(define-music-function (mrkup) (markup?)
  #{
    \override TextSpanner.bound-details.left.text = #mrkup
    \override TextSpanner.bound-details.left.stencil-align-dir-y = 0.25
    \override TextSpanner.bound-details.left-broken.text = ##f
  #})

pocoRitenSpanner = \makeSpanner \markup \large \italic "poco riten."

pocoAPocoCrescMarkup = 
  \markup \large \italic \whiteout \pad-markup #0.25 "poco a poco cresc."
pocoAPocoCresc =
  #(make-music 'CrescendoEvent 'span-direction START 'span-type 'text
               'span-text pocoAPocoCrescMarkup)
  
pocoStrettoEDimMarkup = 
  \markup \large \italic \whiteout \pad-markup #0.25 "poco stretto e dim."
pocoStrettoEDim =
  #(make-music 'DecrescendoEvent 'span-direction START 'span-type 'text
               'span-text pocoStrettoEDimMarkup)

%
% Redefine
%

staffUp   = \change Staff = "upper"
staffDown = \change Staff = "lower"

sd = \sustainOn
su = \sustainOff

hideNoteHead = \once {
  \omit Stem
  \omit Dots
  \omit Flag
  \hideNotes
  \override NoteColumn.ignore-collision = ##t
}

tupletOff = {
  \omit TupletBracket
  \omit TupletNumber
}
tupletOn = {
  \undo \omit TupletBracket
  \undo \omit TupletNumber
}

trillFlat = \markup \tiny \concat { " " \flat }
flatInsideSlur = \tweak outside-staff-priority ##f \etc
insideSlur = \tweak avoid-slur #'inside \etc

%
% Markup
%

conAnima = \markup \large \italic "con anima"
sotoVoce = \markup \large \italic "soto voce"
dolce = \markup \large \italic dolce
legato = \markup \large \italic legato
risoluto = \markup \large \italic risoluto
slentando = \markup \large \italic slentando
slentandoWO = \markup \large \italic \whiteout \pad-markup #0.25 slentando
pocoRiten = \markup \large \italic "poco riten."
aTempo = \markup \large \italic "a tempo"
sempreP = \markup { \large \italic sempre \dynamic p }
