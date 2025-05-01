%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

slurShapeA = \shape #'(
                        ((0 . 0.5) (0 . 0.5) (0 . 0.5) (0 . 0.5))
                        ((0 . 0) (0 . 0.5) (0 . 1) (0 . 0))
                      ) \etc
slurShapeB = \shape #'((0 . 0) (0 . 1) (0 . 0) (0 . 0)) \etc
slurShapeC = \shape #'((-0.25 . 2) (-0.25 . -0.25) (0 . -0.25) (0 . 2)) \etc
slurShapeD = \shape #'((0 . 0) (0 . -0.5) (0 . -0.5) (0 . 2)) \etc
slurShapeE = \shape #'((0 . 0.25) (0 . 1) (0 . 0.5) (0 . 0)) \etc
%
slurShapeF = \shape #'((0 . 0) (0 . 0.5) (0 . 2) (0 . 2.75)) \etc
slurShapeG = \shape #'((0 . 0) (0 . 0.5) (0 . 2) (0 . 2.5)) \etc
slurShapeH = \shape #'((0 . 0) (0 . 0.5) (0 . 2) (0 . 2.75)) \etc

tieShapeA = \shape #'((0 . 0) (0 . -0.25) (0 . -0.5) (0 . 0)) \etc
tieShapeB = \shape #'((0 . 0) (0 . -0.25) (0 . -0.5) (0 . 0)) \etc
tieShapeC = \shape #'((0 . 0) (0 . -0.75) (0 . -1) (0 . 0)) \etc
tieShapeD = \shape #'((0 . 0) (0 . -0.25) (0 . -0.5) (0 . 0.25)) \etc

%%% Music %%%

global = {
  \time 3/4
  \key df \major
}

rightHandUpper = \relative {
  af2.-> |
  af2.-> |
  af4 af2->
  af4 af2->
  af4( f8 gf af bf) |
  af4(\prall f8 gf af bf |
  \tupletDown \tuplet 3/2 { af8 bf af } \tupletNeutral f gf af bf |
  af df ef gf f ef) |
  
  \barNumberCheck 9
  \repeat volta 2 {
    <df f>8-.[^\risoluto r16 <ef gf>]( <e g>4 <f af>) |
    <gf! bf>8-.[ r16 <f af>]( <df' f>2) |
    <c ef>8-.[ r16 <bf df>]( <gf bf>4 <bf, gf'>) |
    <af f'>8-.[ r16 <gf' bf>]( <f af>2->) |
    <c' ef>8-.[ r16 <bff df>]( <gf bff>4 <bff, gf'>) |
    <af f'>8-.[ r16 <gf' bff>]( <f af>2) |
    <af, f'>8-.[ r16 <gf' bf!>]( <f af>2->) |
    <af, f'>8-.[ r16 <gf' bff>]( <f af>2->) |
    
    \barNumberCheck 17
    \stemDown <gf bf!>8-.[ r16 <af c>]( \stemNeutral <bf df>4 <c ef>) |
    <df f>8-.[ r16 <ef gf>]( <e g>4 <f af>) |
    <af c>8-.[ r16 <gf! bf>](\prall <f af>4 <ef! gf>) |
    <df f>8-.[ r16 <af ef'>]( <f df'>2->) |
    \stemDown <gf bff>8( <af c> \stemNeutral <bff df>4 <c ef> |
    <df ff>8 <ef g> <ff af>4 <gf bff> |
    <af c>8-.[) r16 <gf bff>](\prall <ff af>4 <ef gf> |
    <df ff>8. <af ef'>16 <ff df'>2->) |
  }
  
  \barNumberCheck 25
  ff'2.->-\slurShapeA (~^\conAnima |
  ff8 ef\prall-\flatInsideSlur ^\trillFlat d ef cf' ef,) |
  af4.( gf8 ff df! |
  df8 ef cf2) |
  ef2.(~ |
  ef8[ d\prall cs d bf'8. d,16] |
  g4. f8 ef c! |
  c8 d bf2) |
  
  \barNumberCheck 33
  r4 ff'2-\slurShapeB (~ |
  ff8[ ef\prall-\flatInsideSlur ^\trillFlat d ef cf'8. ef,16] |
  af4. gf8 ff df! |
  df8[) r16 ef16]( cf2) |
  ef2.(~ |
  ef8[ d\prall cs d bf'8. d,16] |
  % first beat, g natural, SrcB
  g4. f8 ef c! |
  cf4 bf-\insideSlur \trill \magnifyMusic #2/3 { 
    \tupletOff \tuplet 7/2 { \stemUp a8[ bf g' e df bf g] } 
  } |
  
  \barNumberCheck 41
  \stemNeutral e8[) r16 g]_( bf4 af |
  g4 f) r |
  g8( bf df4 c |
  bf4 af) r |
  b8( d f4 e |
  d4 c) r |
  e8( g bf4. af8 |
  g2 f4) |
  
  \barNumberCheck 49
  \voiceOne e,8.( g16 <df bf'>4. <c af'>8 |
  <bf g'>4 <af f'>) \oneVoice r |
  \voiceOne g'8.( bf16 <f df'>4. <ef! c'>8 |
  <df bf'>4 <c af'>) \oneVoice r |
  \voiceOne b'8.( d16 <af f'>4. <g e'>8 |
  <f d'>4 <e c'>) e'->(~ |
  e8. g16 <df! bf'>4. <c af'>8) |
  \oneVoice <bf ef g>2->( <af f'>4~ |
  
  \barNumberCheck 57
  q8 <gf! ef'!>\prall <f d'> <gf ef'> <af f'> <bf gf'>) |
  q8-.[ r16 q]( <f df'!>4.->) <af f'>8 |
  q8[( r16 q] \voiceOne c4.. ef16) |
  ef8[ r16 df] df4.( df8~ |
  <f, df'>8 <ef c'>\prall <d b'> <ef c'> <f df'!> <gf ef'>) |
  \oneVoice q8-.[ r16 q]( <df! bf'!>4.->) <f df'>8~ |
  q8[ r16 q]( \voiceOne a4..->) c16-\slurShapeC ( |
  c8[ r16 bf] bf4) b8\rest <f df'>( |
  
  \barNumberCheck 65
  r8 ef'-\insideSlur \prall <f, d'> <gf ef'> <af f'> <bf gf'>) |
  \oneVoice \tupletOn \tuplet 3/2 { q8 q q } <f df'!>4-. r8 <af f'> |
  \tuplet 3/2 { q8 q q } <ef c'>4-. r8 r16 ef'-\slurShapeD ( |
  \voiceOne ef8[ r16 df] df4.) df8~ |
  \oneVoice <f, df'>8-\slurShapeE ( <ef c'>\prall <d b'> <ef c'> <f df'!>
    <gf ef'> |
  \tuplet 3/2 { q8 q q } <df! bf'!>4-.) r8 <f df'>( |
  \tuplet 3/2 { q8 q q } <c a'>4-.) r8 <ef c'>( |
  <f df'>8 q <c a'>4 <ef c'>) |
  
  \barNumberCheck 73
  R2. * 2 |
  <f df'>8( q <c a'>4 <ef c'>) |
  <f df'>8( q <c a'>4 <ef c'>) |
  R2. * 2 |
  % like 9
  <df f>8-.[^\risoluto r16 <ef gf>]( <e g>4 <f af> |
  <gf! bf>8[)\prall r16 <f af>]( <df' f>2 |
  
  \barNumberCheck 81
  <c ef>8[) r16 <bf df>]( <gf bf>4 <bf, gf'> |
  <af f'>8-.[) r16 <gf' bf>]( <f af>2-> |
  <c' ef>8[) r16 <bff df>]( <gf bff>4 <bff, gf'> |
  <af f'>8-.[) r16 <gf' bff>]( <f af>2) |
  <af, f'>8[ r16 <gf' bf!>]( <f af>2) |
  <af, f'>8[ r16 <gf' bff>]( <f af>2) |
  \stemDown <gf bf!>8[ r16 <af c>]( \stemNeutral <bf df>4 <c ef> |
  <df f>8[) r16 <ef gf>]( <e g>4 <f af> |
  
  \barNumberCheck 89
  <af c>8-.[) r16 <gf! bf>]( <f af>4 <ef gf>) |
  <df f>8-.[ r16 <af ef'>]( <f df'>2->) |
  % like 21
  \stemDown <gf bff>8( <af c> \stemNeutral <bff df>4 <c ef> |
  <df ff>8 <ef g> <ff af>4 <gf bff> |
  <af c>8-.[) r16 <gf bff>](\prall <ff af>4 <ef gf> |
  <df ff>8 <af ef'> <ff df'>2-> |
  f!2.) |
  \bar "|."
}

rightHandLower = \relative {
  s2. * 8 |
  
  \barNumberCheck 9
  \repeat volta 2 {
    s2. * 16 |
  }
  
  \barNumberCheck 25
  s2. * 24 |
  
  \barNumberCheck 49
  \voiceFour e'2.->-\tieShapeA ~ |
  e4 s2 |
  g2.->-\tieShapeB ~ |
  g4 s2 |
  b2.->-\tieShapeC ~ |
  b4 s e~ |
  e2.-\tieShapeD ~ |
  \hideNoteHead e2 s4 |
  
  \barNumberCheck 57
  s2. * 2 |
  s4 ef,2 |
  gf4 f2->~ |
  \hideNoteHead f8 s s2 |
  s2. |
  s4 c2 |
  ef4 df s |
  
  \barNumberCheck 65
  gf4 s2 |
  s2. * 2 |
  gf4 f2~ |
  \hideNoteHead f8 s s2 |
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
  \override Beam.auto-knee-gap = #7
  R2. * 8 |
  
  \barNumberCheck 9
  \repeat volta 2 {
    \stemDown <df,, df'>8-.[ r16 df''']-\slurShapeF ( \stemNeutral f,4 af,) |
    df,8-.[ r16 df'']-\slurShapeF ( f,4 af,) |
    \stemDown gf,8-.[ r16 bf'']-\slurShapeG ( \stemNeutral df,4 gf,) |
    df8-.[ r16 df'']-\slurShapeF ( f,4 af,) |
    \stemDown gf,8-.[ r16 bff'']-\slurShapeG ( \stemNeutral df,4 gf,) |
    df8-.[ r16 df'']-\slurShapeF ( f,4 af,) |
    \stemDown <df,, df'>8-.[ r16 df''']-\slurShapeF ( \stemNeutral f,4 af,) |
    df,8-.[ r16 df'']-\slurShapeF ( f,4 af,) |
    
    \barNumberCheck 17
    \stemDown af,8-.[ r16 c'']-\slurShapeH ( \stemNeutral gf4 af,) |
    df,8-.[ r16 df'']-\slurShapeF ( f,4 af,) |
    \stemDown af,8-.[ r16 c'']-\slurShapeH ( \stemNeutral gf4 af,) |
    df,8-.[ r16 df'']-\slurShapeF ( f,4 af,) |
    \stemDown af,8-. c''-\slurShapeH ( \stemNeutral gf4 af,) |
    df,8-. df''-\slurShapeF ( ff,4 af,) |
    \stemDown af,8-.[ r16 c'']-\slurShapeH ( \stemNeutral gf4 af,) |
    df,8-.[ r16 df'']-\slurShapeF ( ff,4 af,) |
  }
  
  \barNumberCheck 25
  <gf, gf'>4 <gf'' bf ff'> q |
  <gf cf ef>4 q q |
  gf,4 <gf' bf ff'> q |
  cf,4 <gf' cf ef> q |
  f,4 <f' a ef'> q |
  <f bf d>4 q q |
  f,4-. <f' a ef'> q |
  bf,4-. <f' bf d> q |
  
  \barNumberCheck 33
  <g bf df! e>4 <g bf df ff> <gf bf df ff> |
  <gf cf ef>4 q q |
  gf,4-. <gf' bf ff'> q |
  cf,4-. <gf' cf ef> q |
  <f a ef'>4 q q |
  <f bf d>4 q q |
  f,4 <f' a ef'> q |
  <f af! d>4\( <e g df'>2 |
  
  \barNumberCheck 41
  <df e bf'>4 q q |
  q4 <df f bf> q |
  <df e bf'>4 q q |
  <df f bf>4 <df f b> <c f c'> |
  <c f d'>4 <c f af> <c f g> |
  q4 <c e g> <c d g>\) |
  c4-. <g' bf e> q |
  f,4-. <af' c f> q |
  
  \barNumberCheck 49
  c,,4 <c' e bf'> q |
  f,4 <c' f> q |
  ef,4 <ef' g df'> q |
  af,4 <ef' af> q |
  g,4 <g' b f'> q |
  c,4 <g' c> r |
  c,,4 <g'' bf e> r |
  f,4 << { <df'' e> <c f> } \\ { f,2 } >> |
  
  \barNumberCheck 57
  gf,!4 <gf' bf ef> q |
  af,4 <f' af df> q |
  af,4 <ef' gf c> a, |
  \voiceTwo bf2*1/2^( \oneVoice <f' df'>4) r |
  ef,4 <ef' gf c> q |
  f,4 <df' bf'> q |
  << { r4 <c a'> q } \\ { f,2. } >> |
  bf,4 <bf' f' bf> r |
  
  \barNumberCheck 65
  <af, af'> <ef'' gf af c> q |
  <df, df'> <f' af df> q |
  af,4 <ef' gf c> a, |
  \voiceTwo bf2*1/2^( \oneVoice <f' df'>4) r |
  ef,4 <ef' gf c> q |
  \voiceTwo f,2*1/2^( \oneVoice <df' bf'>4) r |
  f,,4 <f' c' a'> r |
  R2. |
  
  \barNumberCheck 73
  << 
    { f'2.~ | f2.~ | \oneVoice f2.~ | f2.~ | \voiceThree f2.~ | f2. | } 
    \\
    { f,4-. f-. r | e4-. e-. r | s2. * 2 | ef!4-. ef-. r | eff4-. eff r | } 
  >>
  % like 9
  df8-.[ r16 df'']-\slurShapeF ( f,4 af,) |
  df,8-.[ r16 df'']-\slurShapeF ( f,4 af,) |
  
  \barNumberCheck 81
  \stemDown gf,8-.[ r16 bf'']-\slurShapeG ( \stemNeutral df,4 gf,) |
  df8-.[ r16 df'']-\slurShapeF ( f,4 af,) |
  \stemDown gf,8-.[ r16 bff'']-\slurShapeG ( \stemNeutral df,4 gf,) |
  df8-.[ r16 df'']-\slurShapeF ( f,4 af,) |
  \stemDown <df,, df'>8-.[ r16 df''']-\slurShapeF ( \stemNeutral f,4 af,) |
  df,8-.[ r16 df'']-\slurShapeF ( f,4 af,) |
  \stemDown af,8-.[ r16 c'']-\slurShapeH ( \stemNeutral gf4 af,) |
  df,8-.[ r16 df'']-\slurShapeF ( f,4 af,) |
  
  \barNumberCheck 89
  \stemDown af,8-.[ r16 c'']-\slurShapeH ( \stemNeutral gf4 af,) |
  df,8-.[ r16 df'']-\slurShapeF ( f,4 af,) |
  % like 20
  \stemDown af,8-. c''-\slurShapeH ( \stemNeutral gf4 af,) |
  df,8-. df''-\slurShapeF ( ff,4 af,) |
  \stemDown af,8-.[ r16 c'']-\slurShapeH ( \stemNeutral gf4 af,) |
  df,8-. df''-\slurShapeF ( ff,4 af,) |
  <df af'>2. |
}

dynamics = {
  \override TextScript.Y-offset = -0.5
  \override Hairpin.to-barline = ##f
  s2.\f |
  s2. * 6 |
  s2\< s8 s\! |
  
  \barNumberCheck 9
  \repeat volta 2 {
    s2. % TODO needed? \tag layout { s2. } \tag midi { s2.\ff } |
    s2. * 3 |
    s2.\pp |
    s2. |
    s2.\ff |
    s2.\pp |
    
    \barNumberCheck 17
    s2.\f\< |
    s2 s4\! |
    s2\> s4\! |
    s2. |
    s2.\pp |
    s2. * 3 |
  }
  
  \barNumberCheck 25
  s2.\f |
  s2. * 3 |
  s2.^\dolce |
  s2. |
  s2\> s8 s\! |
  s2. |
  
  \barNumberCheck 33
  s4 s2\> |
  s2.\! |
  s2. * 2 |
  s2\> s4\! |
  s2. |
  s2\> s4\! |
  s2. |
  
  \barNumberCheck 41
  s2.^\sotoVoce |
  s2. |
  s2.\< |
  s4 s2\! |
  s2. * 2 |
  s2\< s8 s\! |
  s2\> s4\! |
  
  \barNumberCheck 49
  s4-\tweak Y-offset -2 \f-\tweak Y-offset -1.5 \> s2\! |
  s2. |
  s4 s2\cresc |
  s2. * 3 |
  s2 s8 s\! |
  s2. |
  
  \barNumberCheck 57
  s2.\p |
  s2. * 3 |
  s2\< s8 s\! |
  s2. * 2 |
  s4 s2\sf |
  
  \barNumberCheck 65
  s2.\f |
  s2. * 5 |
  s2 s16 s8.\dim |
  s2 s8 s\! |
  
  \barNumberCheck 73
  s2. * 2 |
  s8\pp s^\slentando s2 |
  s2. |
  s2.\< |
  s2 s4\! |
  s8\f s\< s2 |
  s2 s4\! |
  
  \barNumberCheck 81
  s2. * 2 |
  s2.\pp |
  s2. |
  s2.\ff |
  s2.\pp |
  s2.\f\< |
  s2 s4\! |
  
  \barNumberCheck 89
  s2. * 2 |
  s2.\pp |
  s2. * 3 |
  s2\f\> s4\! |
}

tempi = {
  \set Score.tempoHideNote = ##t
  \tempo "Allegro non troppo" 4 = 126
  s2. * 8 |
  
  \barNumberCheck 9
  \repeat volta 2 {
    
  }
}

pedal = {
  s2. * 8 |
  
  \barNumberCheck 9
  \repeat volta 2 {
    s2-\tweak Y-offset -2 \sd s8 s\su |
    s2\sd s8 s\su |
    s2-\tweak Y-offset -1 \sd s8 s\su |
    s2\sd s8 s\su |
    s2-\tweak Y-offset -1 \sd s8 s\su |
    s2\sd s8 s\su |
    s2-\tweak Y-offset -3 \sd s8 s\su |
    s2\sd s8 s\su |
    
    \barNumberCheck 17
    s2-\tweak Y-offset -1 \sd s8 s\su |
    s2\sd s8 s\su |
    s2-\tweak Y-offset -1 \sd s8 s\su |
    s2\sd s8 s\su |
    s2-\tweak Y-offset -1 \sd s8 s\su |
    s2\sd s8 s\su |
    s2-\tweak Y-offset -1 \sd s8 s\su |
    s2\sd s8 s\su |
  }
  
  \barNumberCheck 25
  s2\sd s8 s\su |
  s2. * 3 |
  s2\sd s8 s\su |
  s2. |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  
  \barNumberCheck 33
  s2. * 2 |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2. * 2 |
  s2\sd s8 s\su |
  s2. |
  
  \barNumberCheck 41
  s2.-\tweak X-offset 0.25 ^\legato |
  s2. * 5 |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  
  \barNumberCheck 49
  s2-\tweak Y-offset -1 \sd s8 s\su |
  s2. |
  s2\sd s8 s\su |
  s2. |
  s2\sd s8 s\su |
  s2. |
  s2-\tweak Y-offset -1 \sd s8 s\su |
  s2\sd s4\su |
  
  \barNumberCheck 57
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s4\su |
  s2-\tweak Y-offset -1 \sd s8 s\su |
  s2-\tweak Y-offset -0.5 \sd s8 s\su |
  s2\sd s8 s\su |
  s2. |
  s2-\tweak Y-offset -1 \sd s8 s\su |
  
  \barNumberCheck 65
  s2-\tweak Y-offset -1.5 \sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s4\su |
  s2. |
  s2\sd s8 s\su |
  s2. |
  s2-\tweak Y-offset -3 \sd s8 s\su |
  s2. |
  
  \barNumberCheck 73
  s2. * 6 |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  
  \barNumberCheck 81
  s2-\tweak Y-offset -2 \sd s8 s\su |
  s2\sd s8 s\su |
  s2-\tweak Y-offset -2 \sd s8 s\su |
  s2\sd s8 s\su |
  s2-\tweak Y-offset -3 \sd s8 s\su |
  s2\sd s8 s\su |
  s2-\tweak Y-offset -1 \sd s8 s\su |
  s2\sd s8 s\su |
  
  \barNumberCheck 89
  s2-\tweak Y-offset -1 \sd s8 s\su |
  s2-\tweak Y-offset -1 \sd s8 s\su |
  s2-\tweak Y-offset -2 \sd s8 s\su |
  s2\sd s8 s\su |
  s2-\tweak Y-offset -2 \sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s4\su |
}

forceBreaks = {
  % page 1
  \repeat unfold 6 { s2.\noBreak } s2.\break \noPageBreak
  \repeat unfold 5 { s2.\noBreak } s2.\break \noPageBreak
  \repeat unfold 5 { s2.\noBreak } s2.\break \noPageBreak
  \repeat unfold 5 { s2.\noBreak } s2.\break \noPageBreak
  \repeat unfold 6 { s2.\noBreak } s2.\pageBreak
  
  % page 2
  \repeat unfold 5 { s2.\noBreak } s2.\break \noPageBreak
  \repeat unfold 5 { s2.\noBreak } s2.\break \noPageBreak
  \repeat unfold 5 { s2.\noBreak } s2.\break \noPageBreak
  \repeat unfold 5 { s2.\noBreak } s2.\break \noPageBreak
  \repeat unfold 4 { s2.\noBreak } s2.\break \noPageBreak
  \repeat unfold 4 { s2.\noBreak } s2.\pageBreak
  
  % page 3
  \repeat unfold 4 { s2.\noBreak } s2.\break \noPageBreak
  \repeat unfold 5 { s2.\noBreak } s2.\break \noPageBreak
  \repeat unfold 5 { s2.\noBreak } s2.\break \noPageBreak
  \repeat unfold 5 { s2.\noBreak } s2.\break \noPageBreak
}

mazurkaThreeNotes =
\score {
  \header {
    title = "Mazurka Three"
    composer = "Frédéric Chopin"
    opus = "Opus 30, No.3"
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

mazurkaThreeMidi =
\book {
  \bookOutputName "mazurka-op30-no3"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \pedal \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \pedal \tempi >>
    >>
    \midi {}
  }
}
