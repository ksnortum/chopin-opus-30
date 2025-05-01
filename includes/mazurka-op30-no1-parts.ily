%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

slurShapeA = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . -1) (0 . -3))
                      ) \etc
slurShapeB = \shape #'((0 . 0) (0 . 0) (0 . 0) (7 . -1)) \etc
slurShapeC = \shape #'((0 . 0.5) (0 . 1.5) (0 . 0.5) (0 . 0)) \etc
slurShapeD = \shape #'((0 . 0.25) (0 . 3.5) (0 . 0.5) (0 . 0)) \etc
slurShapeE = \shape #'((0 . 0.5) (0 . 1.5) (0 . 0.5) (0 . 0)) \etc

moveFermataA = \offset Y-offset 1 \etc

%%% Music %%%

global = {
  \time 3/4
  \key c \minor
}

rightHandUpper = \relative {
  \voiceOne 
  \partial 4 g'4->(~ |
  g8 \slashedGrace { bf } af g b c d |
  \slashedGrace { f8 } ef d c2) |
  d8( ef \slashedGrace { g } f4 ef8 d |
  d8 ef c2) |
  d,8( \slashedGrace { f } ef d fs g a |
  \slashedGrace { c8 } bf a g2) |
  a8( bf \slashedGrace { d } c4 bf8 a |
  g2.->)~ |
  
  \barNumberCheck 9
  g8-\slurShapeC ( af\prall g b c! d |
  \slashedGrace { f8 } ef d c2) |
  d8( ef \slashedGrace { g } f4 ef8 d |
  d8 ef c2) |
  d,8-\slurShapeD ( ef\prall d fs g a |
  \slashedGrace { c8 } bf a g2) |
  a8( bf \slashedGrace { d } c4 bf8 a |
  g2 g8. g16 |
  
  \barNumberCheck 17
  g8^\conAnima af2-> g8 |
  e8. f16 d'4. c8) |
  f,8( g2-> f8 |
  ef8. bf'16 \oneVoice \slashedGrace { bf8 } g'4. f8 |
  ef8. c16 bf4 \voiceOne \slashedGrace { d8 } c4 |
  bf8. af16 g2)~ |
  g8( f ef4 \slashedGrace { g8 } f4 |
  % second beat, g in right hand, SrcB
  d8 b g4) g'8.->( g16 |
  
  \barNumberCheck 25
  g8 af2-> g8 |
  e8. f16 d'4. c8 |
  f,8 g2-> f8) |
  ef8.( bf'16 \oneVoice ef2) |
  d4\( cs8.[ d16 ef8. d16] |
  g,4 cs8.[ d16 ef8. d16] |
  g4 cs,8.[ d16 ef8. d16] |
  g,4 cs8.[ d16 ef8. d16] |
  
  \barNumberCheck 33
  g4 cs,8.[ d16 ef8. d16] |
  \voiceOne g,4 cs8.[ d16 ef8. d16] |
  \pocoRitenSpanner g4\startTextSpan cs,8.[ d16 ef8. d16] |
  \oneVoice af'2 g4\)\stopTextSpan |
  
  % like 1
  \voiceOne g,8( \slashedGrace { bf } af g b c d |
  \slashedGrace { f8 } ef d c2) |
  d8( ef \slashedGrace { g } f4 ef8 d |
  d8 ef c2) |
  
  \barNumberCheck 41
  % like 5
  d,8( \slashedGrace { f } ef d fs g a |
  \slashedGrace { c8 } bf a g2) |
  a8( bf \slashedGrace { d } c4 bf8 a |
  g2.->)~ |
  g8-\slurShapeE ( af\prall g b c! d |
  \slashedGrace { f8 } ef d c2) |
  d8( ef \slashedGrace { g } f4 ef8 d |
  d8 ef c2) |
  
  \barNumberCheck 49
  d8-\slurShapeB \( ef \slashedGrace { g } f4 ef8 d |
  af'8 d, \slashedGrace { g } f4 ef8 d |
  \oneVoice af'8 d, \slashedGrace { g } f4 ef8 d |
  d8 ef c2~ |
  \voiceOne c2.\)-\moveFermataA \fermata
  \bar "|."
}

rightHandLower = \relative {
  \voiceFour 
  \partial 4 s4 |
  s4 g' f |
  r4 ef ef |
  r4 f f |
  r4 ef ef |
  s4 d c |
  r4 bf d |
  ef4 <ef g> <c fs> |
  r4 <b d>( <c ef>8 <cs e>) |
  
  \barNumberCheck 9
  <d f>4 f f |
  r4 ef ef |
  r4 f f |
  r4 ef ef |
  s4 d c |
  r4 bf d |
  ef4 <ef g> <c fs> |
  r4 <b d> df->~ |
  
  \barNumberCheck 17
  df4 c2 |
  c2.~ |
  c4 c d |
  ef8 s s2 |
  s2 af4 |
  f4 ef2 |
  d4 c2 |
  s2 <bf! df>4~ |
  
  \barNumberCheck 25
  q4 c2~ |
  c2.~ |
  c4 c d |
  ef8 s s2 |
  s2. * 4 |
  
  \barNumberCheck 33
  s2. |
  g2.~ |
  g2 r4 |
  s2. |
  
  % like 1
  r4 g f |
  r4 ef ef |
  r4 f f |
  r4 ef ef |
  
  \barNumberCheck 41
  % like 5
  s4 d c |
  r4 bf d |
  ef4 <ef g> <c fs> |
  r4 <b d>( <c ef>8 <cs e>) |
  <d f>4 f f |
  r4 ef ef |
  r4 f f |
  r4 ef ef |
  
  \barNumberCheck 49
  r4 f f |
  r4 f f |
  s2. * 2 |
  d8 ef c2\fermata |
}

rightHand = \relative {
  \global
  \mergeDifferentlyDottedOn
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

leftHandUpper = \relative {
  \voiceThree 
  \partial 4 s4 |
  s2. * 5 |
  s4 g2~ |
  g4 s2 |
  s2. |
  
  \barNumberCheck 9
  s2. * 5 |
  s4 g2~ |
  g4 s2 |
  s2 \oneVoice <e bf'!>4->~ |
  
  \barNumberCheck 17
  \voiceThree q <f af> q |
  s2. * 3 |
  <ef' af>4 g s |
  s2. |
  b,4 g s |
  s2. |
  
  \barNumberCheck 25
  s2. * 16 |
  
  \barNumberCheck 41
  s2. |
  s4 g2~ |
  g4 s2 |
}

leftHandLower = \relative {
  \partial 4 r4 |
  r4 <g d'> q |
  r4 <c, g'> q |
  r4 <c g' b> <c g' d'> |
  r4 <c g' c> q |
  r4 <d a'> q |
  r4 \voiceTwo g,( bf |
  c4 \oneVoice <a a'> d) |
  r4 g, g' |
  
  \barNumberCheck 9
  r4 <g d'> q |
  r4 <c, g'> q |
  r4 <c g' b> <c g' d'> |
  r4 <c g' c> q |
  r4 <d a'> q |
  r4 \voiceTwo g,-\slurShapeA ( bf |
  c4 \oneVoice <a a'> d |
  g,4 g') s4 |
  
  \barNumberCheck 17
  \voiceTwo af,2. |
  \oneVoice af,4 <c' af'> <f af> |
  bf,, <bf' af'> q |
  ef, \clef treble <bf'' ef g> <b ef g> |
  \voiceTwo c8. d16 ef4 \oneVoice \clef bass <af, ef'> |
  <bf d>4 <ef, bf'>2 |
  \voiceTwo g4~ 
    << 
      { \hideNoteHead g } 
      \new Voice { \voiceTwo c, } 
    >> 
    \oneVoice <f, af'> |
  <g d'>2 e4( |
  
  \barNumberCheck 25
  f4) af' <c, af'> |
  af,4 <c' af'> <f af> |
  bf,,4 <bf' af'> q |
  ef,4 \clef treble <bf'' ef g>\( <a c g'> |
  <a c fs>4 q <af c fs> |
  <g b>4 <g a fs'> q |
  <g b f'!>4 <g a fs'> q |
  <g b>4 <g a fs'> q |
  
  \barNumberCheck 33
  <g b f'!>2.\)~ |
  q2.~ |
  q2 r4 |
  R2. |
  
  % like 1
  \clef bass r4 <g d'> q |
  r4 <c, g'> q |
  r4 <c g' b> <c g' d'> |
  r4 <c g' c> q |
  
  \barNumberCheck 41
  % like 5
  r4 <d a'> q |
  r4 \voiceTwo g,( bf |
  c4 \oneVoice <a a'> d) |
  r4 g, g' |
  r4 <g d'> q |
  r4 <c, g'> q |
  r4 <c g' b> <c g' d'> |
  r4 <c g' c> q |
  
  \barNumberCheck 49
  r4 <c g' b> q |
  r4 <c g' b> q |
  c,4 <af'' b f'> q~ |
  q4 <af c f> q |
  d,8 ef c2_\fermata |
}

leftHand = \relative {
  \global
  \clef bass 
  <<
    \new Voice \leftHandUpper
    \new Voice \leftHandLower
  >>
}

dynamics = {
  \override TextScript.Y-offset = -0.5
  \override Hairpin.to-barline = ##f
  \partial 4 s4\p |
  s2. * 4 |
  s2.\f |
  s2. * 3 |
  
  \barNumberCheck 9
  s2.\p |
  s2. * 3 |
  s2.\f |
  s2. |
  s2\> s4\! |
  s2. |
  
  \barNumberCheck 17
  s2. |
  s2\< s8 s\! |
  s2. |
  s8 s\< s4. s8\! |
  s2.\> |
  s8. s16\! s2 |
  s2.\p |
  s2. |
  
  \barNumberCheck 25
  s2. |
  s8 s\< s4. s8\! |
  s2. |
  s2\< s4\! |
  s2.\> |
  s4\! s2\dim |
  s2. * 2 
  
  \barNumberCheck 33
  s2. |
  s2 s8. s16\! |
  % according to SrcB
  s2\< s8.\! s16\> |
  s2 s4\! |
  s2.-\tweak Y-offset -1 \p |
  s2. * 3 |
  
  \barNumberCheck 41
  s2.\f |
  s2. |
  s4 s4.\> s8\! |
  s2. |
  s2.\p |
  s2. * 3 |
  
  \barNumberCheck 49
  s2. |
  s2.\dim |
  s2. |
  s2 s8 s\! |
}

tempi = {
  \set Score.tempoHideNote = ##t
  \tempo "Allegretto non tanto" 4 = 112
  \partial 4 s4 |
  s2. * 7 |
  \tempo 4 = 100 s2. |
  
  \barNumberCheck 9
  \tempo 4 = 112
  s2. * 24 |
  
  \barNumberCheck 33
  s2. * 2 |
  \tempo 4 = 104 s2. |
  \tempo 4 = 92 s2. |
  \tempo 4 = 112
  s2. * 4 |
  
  \barNumberCheck 41
  s2. * 3 |
  \tempo 4 = 100 s2. |
  \tempo 4 = 112
  s2. * 4 |
  
  \barNumberCheck 49
  s2. * 3 |
  \tempo 4 = 100
  s2. |
  \tempo 4 = 88
  s2. |
}

pedal = {
  \partial 4 s4 |
  s2. * 16 |
  
  \barNumberCheck 17
  s2. |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s4\su |
  s2. * 4 |
  
  \barNumberCheck 25
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s4.\sd s\su |
  s2. * 4 |
  
  \barNumberCheck 33
  s2. * 16 |
  
  \barNumberCheck 49
  s2. * 2 |
  s2\sd s8 s\su |
  s2. * 2 |
}

forceBreaks = {
  % page 1
  \partial 4 s4 |
  s2. * 5 \break
  \grace { s8 } s2. * 6 \break
  s2. * 5 \break
  s2. * 6 \break
  s2. * 6 \pageBreak
  
  % page 2
  s2. * 5 \break
  s2. * 5 \break
  s2. * 5 \break
  s2. * 5 \break
}

mazurkaOneNotes =
\score {
  \header {
    title = "Mazurka One"
    composer = "Frédéric Chopin"
    opus = "Opus 30, No.1"
  }
  \keepWithTag layout  
  \new PianoStaff <<
    \new Staff = "upper" \rightHand
    \new Dynamics \dynamics
    \new Staff = "lower" \leftHand
    \new Dynamics \pedal
    \new Dynamics \tempi
    \new Devnull \forceBreaks
  >>
  \layout {}
}

\include "articulate.ly"

mazurkaOneMidi =
\book {
  \bookOutputName "mazurka-op30-no1"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \pedal \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \pedal \tempi >>
    >>
    \midi {}
  }
}
