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

% rf = #(make-dynamic-script "rf")

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
% 
% strictSpacingOn = {
%   \override Score.SpacingSpanner.strict-note-spacing = ##t
%   \newSpacingSection
% }
% strictSpacingOff = {
%   \override Score.SpacingSpanner.strict-note-spacing = ##f
%   \newSpacingSection
% }

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
% dolceWO = \markup \large \italic \whiteout \pad-markup #0.25 dolce
% piuDolce = \markup \large \italic "più dolce"
% ms = \markup \large \italic "m.s."
pocoRiten = \markup \large \italic "poco riten."
% piuRit = \markup \large \italic "più rit."
aTempo = \markup \large \italic "a tempo"
% sempreLegatissimo = \markup \large \italic "sempre  legatissimo"
% pSempreLegato = \markup { \dynamic p \large \italic "sempre legato" }
% fAgitato = \markup { \dynamic f \large \italic agitato }
% piuF = \markup { \large \italic più \dynamic f }
% piuP = \markup { \large \italic più \dynamic p }
% semprePiuP = \markup { \large \italic "sempre più" \dynamic p }
% pocoRf = \markup { \large \italic poco \dynamic rf }
% laMelodiaSempreLegato = \markup \large \italic "la melodia sempre legato"
% leggieroConLegtao = 
%   \markup { \large \italic { leggiero \normalsize "(con legato)" } }
