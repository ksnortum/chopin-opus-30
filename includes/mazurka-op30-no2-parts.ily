%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

slurShapeA = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 2) (0 . 2) (0 . 2) (0 . 2))
                      ) \etc

%%% Music %%%

global = {
  \time 3/4
  \key b \minor
}

rightHandUpper = \relative {
  \partial 4 d''4( |
  \tuplet 3/2 { d8 e d } cs4 b |
  as8 <g g'> <fs fs'>2) |
  \slashedGrace { d'8^( } \tuplet 3/2 { d8 e d } cs4 b |
  a8-> gs-> fs4->) r |
  \tuplet 3/2 { b8( cs b } a4 g! |
  \stemDown fs8 <e e'> \stemNeutral <d d'>2) |
  \tuplet 3/2 { g8^( a g } fs4 e |
  d8-> cs-> b4->) r8 d'( |
  
  \barNumberCheck 9
  \slashedGrace { d8 } \tuplet 3/2 { d8 e d } cs4 b |
  as8[) r16 <g g'>]( <fs fs'>2) |
  \slashedGrace { d'8^( } \tuplet 3/2 { d e d } cs4 b |
  % slurs according to SrcB
  a8[) r16 gs]( fs4) r |
  \slashedGrace { b8^( } \tuplet 3/2 { b cs b } a4 g! |
  % slurs according to SrcB
  \stemDown fs8[) r16 <e e'>]( \stemNeutral <d d'>2) |
  \slashedGrace { g8( } \tuplet 3/2 { g a g } fs4 e |
  d8[) r16 cs]( b4) fs'-> |
  
  \barNumberCheck 17
  \voiceOne es8\( fs gs4 a8 gs |
  fs8 gs a4 b8 a |
  gs8 a b4 cs8 b |
  a8 b cs4 ds8 cs |
  bs8 cs ds4 es8 ds |
  cs8 ds es4 fs |
  es8 fs gs4 a |
  fs2\) r4 |
  
  \barNumberCheck 25
  % like 17 (6 bars)
  es,8\( fs gs4 a8 gs |
  fs8 gs a4 b8 a |
  gs8 a b4 cs8 b | 
  a8 b cs4 ds8 cs |
  bs8 cs ds4 es8 ds |
  cs8 ds es4 fs |
  \oneVoice <cs es>8. <d d'>16 <cs cs'>4 \voiceOne gs'8 a |
  fs2\) \oneVoice fs4-> |
  
  \barNumberCheck 33
  \grace { fs16[^( gs] } fs8 es fs4 d |
  cs4 a2 |
  \grace { fs'16[ gs] } fs8 es fs4 d |
  cs4 a2) |
  \grace { fs'16[^( gs] } fs8 es fs4 d |
  cs4^\pocoRiten a2) |
  \slashedGrace { gs8 } \grace { fs'16[-\slurShapeA ^(^\aTempo gs] } fs8 es
    fs4 d |
  cs4 a2) |
  
  \barNumberCheck 41
  \grace { fs'16[^( gs] } fs8 es fs4 d |
  cs4 a2) |
  \grace { fs'16[^( gs] } fs8 es fs4 d |
  cs4 a2) |
  \grace { fs'16[^( gs] } fs8 es fs4 d |
  cs4 a2) |
  \slashedGrace { gs8 } \grace { fs'16[^( gs] } fs8 es fs4 d |
  cs4 a) \voiceOne r |
  
  \barNumberCheck 49
  % like 17
  es8\( fs gs4 a8 gs |
  fs8 gs a4 b8 a |
  gs8 a b4 cs8 b |
  a8 b cs4 ds8 cs |
  bs8 cs ds4 es8 ds |
  cs8 ds es4 fs |
  es8 fs gs4 a |
  fs2\) r4 |
  
  \barNumberCheck 57
  % like 25
  es,8\( fs gs4 a8 gs |
  fs8 gs a4 b8 a |
  gs8 a b4 cs8 b |
  a8 b cs4 ds8 cs |
  bs8 cs ds4 es8 ds |
  cs8 ds es4 fs |
  \oneVoice <cs es>8. <d d'>16 <cs cs'>4 \voiceOne gs'8 a |
  fs2\) \oneVoice r4 |
  \bar "|."
}

rightHandLower = \relative {
  \partial 4 s4 |
  s2. * 16 |
  
  \barNumberCheck 17
  \voiceFour s4 d' cs |
  cs4 cs ds |
  e4 f e |
  e4 a fss |
  gs4 a gs |
  b!4 <b cs> cs |
  cs4 cs cs |
  r4 <a cs> <bs, fs'>-> |
  
  \barNumberCheck 25
  % like 17 (6 bars)
  cs4 d cs |
  cs4 cs ds |
  e4 f e |
  e4 a fss |
  gs4 a gs |
  b!4 <b cs> cs |
  s2 cs4 |
  r4 <a cs> s |
  
  \barNumberCheck 33
  s2. * 8 |
  
  \barNumberCheck 41
  s2. * 7 |
  s2 <d, fs>4 |
  
  \barNumberCheck 49
  % like 17
  d4 d cs |
  cs4 cs ds |
  e4 f e |
  e4 a fss |
  gs4 a gs |
  b!4 <b cs> cs |
  cs4 cs cs |
  r4 <a cs> <bs, fs'>-> |
  
  \barNumberCheck 57
  % like 25
  cs4 d cs |
  cs4 cs ds |
  e4 f e |
  e4 a fss |
  gs4 a gs |
  b!4 <b cs> cs |
  s2 cs4 |
  r4 <a cs> s |
}

rightHand = \relative {
  \global
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

leftHand = \relative {
  \global
  \clef bass 
  \partial 4 r4 |
  b,4 <fs' d'> q |
  fs,4 <fs' as e'> q |
  b,4 <fs' d'> q |
  fs,4 <fs' a cs> q |
  g,!4 <d' b'> q |
  d,4 <d' a'> q |
  e,4 <b' cs g'> <fs as e'> |
  << { s4 <fs d'> } \\ { b,2 } >> r4 |
  
  \barNumberCheck 9
  b'4 <fs' d'> q |
  fs,4 <fs' as e'> q |
  b,4 <fs' d'> q |
  fs,4 <fs' a cs> q |
  g,!4 <d' b'> q |
  d,4 <d' a'> q |
  e,4 <b' cs g'> <fs as e'> |
  << { s4 <fs d'> } \\ { b,2 } >> r4 |
  
  \barNumberCheck 17
  cs4 <cs' fs b> <cs es b'> |
  fs,4 <fs' a> <f a> |
  <e b'>4 <e a d> <e gs d'> |
  a,4 <a' e'> <a cs> |
  <gs ds'>4 <gs cs fs> <gs bs fs'> |
  cs,4 \clef treble <cs' gs'> <cs a'> |
  << { gs'8[ fs] } \\ { <cs b'>4 } >> <cs es b'> q |
  \clef bass fs,,4 <fs' cs' fs> <d gs>-> |
  
  \barNumberCheck 25
  % like 17 (6 bars)
  <cs gs'>4 <cs fs b> <cs es b'> |
  fs,4 <fs' a> <f a> |
  <e b'>4 <e a d> <e gs d'> |
  a,4 <a' e'> <a cs> |
  <gs ds'>4 <gs cs fs> <gs bs fs'> |
  <cs, cs'>4 \clef treble <cs' gs'> <cs a'> |
  <cs gs' b>8. <cs fs b>16 <cs es b'>4 q |
  \clef bass fs,,4 <fs' cs' fs> r |
  
  \barNumberCheck 33
  b,4 <fs' b d> q |
  fs,4 <fs' a cs> q |
  d4 <fs a d> q |
  a,4 <e' a cs> q |
  b4 <fs' b d> q |
  e4 <a cs e> q |
  e,4 <e' gs d'> q |
  e,4 <e' a cs> <fs cs'> |
  
  \barNumberCheck 41
  % like 33
  b,4 <fs' b d> q |
  fs,4 <fs' a cs> q |
  d4 <fs a d> q |
  a,4 <e' a cs> q |
  b4 <fs' b d> q |
  e4 <a cs e> q |
  e,4 <e' gs d'> q |
  e,4 <a' cs> <b, fs' b> |
  
  \barNumberCheck 49
  % like 17
  <cs gs' b>4 <cs fs b> <cs es b'> |
  fs,4 <fs' a> <f a> |
  <e b'>4 <e a d> <e gs d'> |
  a,4 <a' e'> <a cs> |
  <gs ds'>4 <gs cs fs> <gs bs fs'> |
  cs,4 \clef treble <cs' gs'> <cs a'> |
  << { gs'8[ fs] } \\ { <cs b'>4 } >> <cs es b'> q |
  \clef bass fs,,4 <fs' cs' fs> <d gs>-> |
  
  \barNumberCheck 57
  % like 25
  <cs gs'>4 <cs fs b> <cs es b'> |
  fs,4 <fs' a> <f a> |
  <e b'>4 <e a d> <e gs d'> |
  a,4 <a' e'> <a cs> |
  <gs ds'>4 <gs cs fs> <gs bs fs'> |
  cs,4 \clef treble <cs' gs'> <cs a'> |
  <cs gs' b>8. <cs fs b>16 <cs es b'>4 q |
  \clef bass fs,,4 <fs' cs' fs> r |
}

dynamics = {
  \override TextScript.Y-offset = -0.5
  \override Hairpin.to-barline = ##f
  \partial 4 s4 |
  s2.-\tweak X-offset -0.25 \p |
  s2. |
  \grace { s8\f } s2. |
  s2. |
  s2.-\tweak X-offset -0.75 \p |
  s2. |
  s2.\f |
  s2 s8 s\p |
  
  \barNumberCheck 9
  s2. * 2 |
  \grace { s8\f } s2. |
  s2. |
  \grace { s8\p } s2. |
  s2. |
  s2.\f |
  s2. |
  
  \barNumberCheck 17
  s2.\pocoAPocoCresc |
  s2. * 5 |
  s2 s8 s\! |
  s2. |
  
  \barNumberCheck 25
  s8-\tweak Y-offset -1.5 \p s-\tweak Y-offset -1 \pocoAPocoCresc s2 |
  s2. * 5 |
  s2 s8 s\! |
  s2. |
  
  \barNumberCheck 33
  s2.\p |
  s2. * 7 |
  
  \barNumberCheck 41
  s2.\p |
  s2. * 7 |
  
  \barNumberCheck 49
  s2.\pocoAPocoCresc |
  s2. * 5 |
  s2 s8 s\! |
  s2. |
  
  \barNumberCheck 57
  s8-\tweak Y-offset -1.5 \p s-\tweak Y-offset -1 \pocoAPocoCresc s2 |
  s2. * 5 |
  s2 s8 s\! |
  s2. |
}

tempi = {
  \set Score.tempoHideNote = ##t
  \tempo "Vivace" 4 = 168
  \partial 4 s4 |
  s2. * 32 |
  
  \barNumberCheck 33
  s2. * 5 |
  \tempo 4 = 144 s2. |
  \tempo 4 = 168
  s2. * 2 |
}

pedal = {
  \partial 4 s4 |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2-\tweak Y-offset -0.5 \sd s8 s\su |
  s2-\tweak Y-offset -1 \sd s8 s\su |
  s2\sd s4\su |
  s2. |
  
  \barNumberCheck 9
  s2. * 8 |
  
  \barNumberCheck 17
  s2-\tweak Y-offset -2 \sd s4-\tweak Y-offset -1 \su |
  s2\sd s4\su |
  s2. |
  s2\sd s8 s\su |
  s2. * 4 |
  
  \barNumberCheck 25
  s2. * 5 |
  s2\sd s4\su |
  s2. |
  s4.\sd s\su |
  
  \barNumberCheck 33
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s4\su |
  
  \barNumberCheck 41
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s4\su |
  
  \barNumberCheck 49
  s2. |
  s2\sd s4\su |
  s2. * 6 |
  
  \barNumberCheck 57
  s2. * 5 |
  s2\sd s4\su |
  s2. |
  s2\sd s4\su |
}

forceBreaks = {
  % page 1
  \partial 4 s4 |
  \repeat unfold 5 { s2.\noBreak } s2.\break \noPageBreak
  \repeat unfold 6 { s2.\noBreak } s2.\break \noPageBreak
  \repeat unfold 6 { s2.\noBreak } s2.\break \noPageBreak
  \repeat unfold 5 { s2.\noBreak } s2.\break \noPageBreak
  \repeat unfold 5 { s2.\noBreak } s2.\pageBreak
  
  % page 2
  \grace { s8 } \repeat unfold 6 { s2.\noBreak } s2.\break \noPageBreak
  \repeat unfold 6 { s2.\noBreak } s2.\break \noPageBreak
  \grace { s4 } \repeat unfold 5 { s2.\noBreak } s2.\break \noPageBreak
  \repeat unfold 5 { s2.\noBreak } s2.\break \noPageBreak
}

mazurkaTwoNotes =
\score {
  \header {
    title = "Mazurka Two"
    composer = "Frédéric Chopin"
    opus = "Opus 30, No.2"
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

mazurkaTwoMidi =
\book {
  \bookOutputName "mazurka-op30-no2"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \pedal \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \pedal \tempi >>
    >>
    \midi {}
  }
}
