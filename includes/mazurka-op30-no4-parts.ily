%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

slurShapeA = \shape #'((0 . 0) (0 . -0.5) (0 . -0.5) (0 . 1.5)) \etc
slurShapeB = \shape #'((0 . -1) (0 . 1) (0 . 0) (0 . -1)) \etc
slurShapeC = \shape #'((0 . 0) (0 . 0) (0 . 1.5) (0 . 0)) \etc
slurShapeD = \shape #'(
                        ((0 . 0) (0 . 1) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 1) (0 . 1))
                      ) \etc
slurShapeE = \shape #'((0 . 2) (0 . 0) (0 . 0) (0 . 2)) \etc
slurShapeF = \shape #'(
                        ((0 . -2) (0 . 1) (0 . 1) (0 . 0))
                        ((0 . 0.5) (0 . 0.5) (0.5 . 0) (0 . 0))
                      ) \etc
slurShapeG = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 1) (0 . 1) (0 . 0) (0 . 0))
                      ) \etc
slurShapeH = \shape #'((0 . 0) (0 . 1) (0 . 1) (0 . -1)) \etc
slurShapeI = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 1) (0 . 2))
                      ) \etc

tieShapeA = \shape #'((0.7 . 0.5) (0 . 0.8) (0 . 0.8) (-0.6 . 0.5)) \etc

%%% Music %%%

global = {
  \time 3/4
  \key cs \minor
  \set Score.extraNatural = ##f
}

rightHandUpper = \relative {
  <cs' fss>2.^(~ |
  q2. |
  \voiceOne <ds fs!>2.~ |
  q2. |
  <cs e>8-.) \tuplet 3/2 { a'16[( b! a] } \hideNoteHead gs8) \oneVoice r8
    <cs e>4->( |
  <bs ds>8[)\prall r16 <as cs>]( <bs ds>4 <cs e> |
  <e, gs>8-.) \voiceOne \tuplet 3/2 { a!16[( b! a] } \hideNoteHead gs8)
    \oneVoice r8 \slashedGrace { <e gs> } <cs' e>4->( |
  <bs ds>8[)\prall r16 <as cs>]( <bs ds>4 <cs e>) |
  
  \barNumberCheck 9
  <ds fs>8-.[ r16 <e gs>]-\slurShapeA ( <fs a!>4 \slashedGrace { b8 } <fs a>8
    <e gs> |
  <ds fs>8[)\prall r16 <cs e>]( <ds fs>4 <e gs> |
  <ds fs>8[) r16 <e gs>]-\slurShapeB ( <fs a>4 \slashedGrace { b8 } <fs a>8
    <e gs> |
  <ds fs>8[ <cs e>] <bs ds> <a cs>4\fermata <fs a>8 |
  % like 5
  <e gs>8) \voiceOne \tuplet 3/2 { a16[( b! a] } \hideNoteHead gs8)
    \oneVoice r8 <cs e>4->( |
  <bs ds>8[)\prall r16 <as cs>]( <bs ds>4 <cs e>) |
  <e, gs>8-. \voiceOne \tuplet 3/2 { a!16[( b! a] } \hideNoteHead gs8)
    \oneVoice r8 \slashedGrace { <e gs> } <cs' e>4->( |
  <bs ds>8[)\prall r16 <as cs>]( <bs ds>4 <cs e> |
  
  \barNumberCheck 17
  <ds fs>8[) r16 <e gs>]-\slurShapeA ( <fs a!>4 \slashedGrace { b8 } <fs a>8
    <e gs> |
  <ds fs>8[)\prall r16 <cs e>]( <ds fs>4 <e gs>) |
  \tuplet 5/4 { <ds fs>8[-\slurShapeC ( <e gs> <fs a> <gs b> <b ds>->] } <a cs>
    <fs a>) |
  <ds fs>8[\prall r16 <cs e>]( <ds fs>4 <e gs>->) |
  <d fs>8[ r16 a]( q4.-> <cs e>8 |
  <bs ds!>8[)\prall r16 <as cs>]( <bs ds>4 <cs e>) |
  \voiceOne \magnifyMusic #2/3 { 
      \tupletOff \tuplet 3/2 { \once \normalsize a8->[_( <d fs> a']) }
    } 
    \oneVoice <d fs>8 r r <cs, e>( |
  <bs ds!>8[)\prall r16 <as cs>]( <bs ds>4 <cs e>) |
  
  \barNumberCheck 25
  \voiceOne \magnifyMusic #2/3 { 
      \tuplet 4/2 { \once \normalsize a!8->[_( <d fs> a' <d fs>]) }
    } 
    \oneVoice a'8-. r r <cs,, e>( |
  <bs ds!>8[)\prall r16 <as cs>]( <bs ds>4 <cs e>) |
  \voiceOne \magnifyMusic #2/3 { 
      \tuplet 8/2 { \once \normalsize a!8->[_( <d fs> a' <d fs> a' fs d a]) }
    } 
    \oneVoice d'8-. r r\fermata <cs,, e>( |
  <bs ds!>8[)\prall r16 <as cs>]-\slurShapeD ( <bs ds>4 <cs e> |
  <bs ds!>8\prall <as cs> <bs ds>4 <cs e> |
  <bs ds!>8\prall <as cs> <bs ds>4 <cs e> |
  \voiceOne r4 gs'2 |
  \oneVoice gs4 gs2->) |
  
  \barNumberCheck 33
  fs2\( e8 ds |
  e8[ r16 e] cs4 gs' |
  fs2 e8 ds |
  e8[ r16 e] cs4 gs\) |
  fs'2\( e8 ds |
  e8[ r16 e] cs4 gs' |
  \slashedGrace { gs,8 } gs2.->~\startTrillSpan |
  \afterGrace 7/8 gs2. { fss16[\stopTrillSpan gs]\) } |
  
  \barNumberCheck 41
  % slurs according to SrcB
  cs2( b8 as |
  b8[ r16 b] gs4 ds') |
  cs2( b8 as |
  b8[ r16 b] gs4 ds) |
  cs'2( b8 as |
  b8[ r16 b] gs4 ds') |
  b8.( b16 gs4 ds') |
  fs8.[( gs16 fs8. gs16 fs8. gs16]) |
  
  \barNumberCheck 49
  fs2( e8 ds |
  e8[ r16 e] cs4 gs'->)~ |
  \voiceOne gs2.~ |
  gs2. |
  fs2( e8 ds |
  e8[ r16 e] cs4 gs') |
  \oneVoice \slashedGrace { gs,8 } gs2.->~\startTrillSpan |
  \afterGrace 7/8 gs2. { fss16[\stopTrillSpan gs] } |
  
  \barNumberCheck 57
  cs2( b8 as |
  b8[ r16 b] gs4 ds'->)~ |
  \voiceOne ds2.~ |
  ds2. |
  cs2( b8 as |
  \oneVoice b8[ r16 b] gs4 ds') |
  \voiceOne b8.( b16 gs4 ds') |
  b8.( b16 g4 ds') |
  
  \barNumberCheck 65
  ds4.->(^\conAnima cs8\prall bs cs |
  e4. ds8 ds4) |
  fs4.-\slurShapeI ( fs8[ es8. e16] |
  e2 ds4) |
  fs8(\prall es dss4 es) |
  gs4.->( fs8 fs4) |
  as4.( as8[ gss8. gs16] |
  gs2 fs4 |
  
  \barNumberCheck 73
  \oneVoice <as, fs' as>8-.[) r16 <gs es' gs>]( <fss dss' fss>4 <gs es' gs>4 |
  <b gs' b>8-.[) r16 <as fs' as>]( q2~ |
  q8. <gs e' gs>16 q4 <as fs' as>8. <gs e' gs>16 |
  <gs e' gs>8[) r16 <fs ds' fs>16] q2->~ |
  q8. <fs gs>16 q4( <e cs' e>) |
  r8 r16 <e fs>( q4 <ds b' ds>->)(~ |
  q8. <cs as' cs>16 <bs gss' bs>4 <cs as' cs>4 |
  \slashedGrace { gs'8 } <gs e' gs>2 <fs ds' fs>4) |
  
  \barNumberCheck 81
  % like 65
  \voiceOne ds'4.->( cs8\prall bs cs |
  e4. ds8 ds4) |
  fs4.-\slurShapeE ( fs8[ es8. e16] |
  e2 ds4) |
  fs8(\prall es dss4 es) |
  gs4.->( fs8 fs4 |
  as4. as8[ gss8. gs16] |
  gs2 fs4) |
  
  \barNumberCheck 89
  \oneVoice <as, fs' as>8[ r16 <gs es' gs>]( <fss dss' fss>4 <gs es' gs> |
  <b gs' b>8[) r16 <as fs' as>-.] q4-> r |
  r8 r16 <gs e' gs>( q4 <as fs' as>8. <gs e' gs>16) |
  q8-.[ r16 <fs ds' fs>16-.] q4-> r |
  r8 r16 <fs e>( q4 <e cs' e>->) |
  r8 r16 <e fs>( q4 <ds b' ds>->)~ |
  q4. <as' cs>8( <b ds>[ <as cs>] |
  <b ds>8. <as cs>16 <b ds>4 <as cs>) |
  
  \barNumberCheck 97
  % like 1
  <cs, fss>2.^(~ |
  q2. |
  \voiceOne <ds fs!>2.~ |
  q2. |
  <cs e>8) \tuplet 3/2 { a'16[( b! a] } \hideNoteHead gs8) \oneVoice r8
    <cs e>4->( |
  <bs ds>8[)\prall r16 <as cs>]( <bs ds>4 <cs e> |
  <e, gs>8-.) \voiceOne \tuplet 3/2 { a!16[( b! a] } \hideNoteHead gs8)
    \oneVoice r8 \slashedGrace { <e gs> } <cs' e>4->( |
  <bs ds>8[)\prall r16 <as cs>]( <bs ds>4 <cs e>) |
  
  \barNumberCheck 105
  % like 9
  <ds fs>8-[ r16 <e gs>]-\slurShapeF ( <fs a!>4 \slashedGrace { b8 } <fs a>8
    <e gs> |
  <ds fs>8[ r16 <cs e>] <ds fs>4 <e gs> |
  <ds fs>8-.[) r16 <e gs>]-\slurShapeB ( <fs a>4 \slashedGrace { b8 } <fs a>8
    <e gs> |
  <ds fs>8[ <cs e>] <bs ds> <a cs>4->\fermata <fs a>8 |
  <e gs>8) \voiceOne \tuplet 3/2 { a16[( b! a] } \hideNoteHead gs8)
    \oneVoice r8 <cs e>4->( |
  <bs ds>8[)\prall r16 <as cs>]( <bs ds>4 <cs e>) |
  <e, gs>8-. \voiceOne \tuplet 3/2 { a!16[( b! a] } \hideNoteHead gs8)
    \oneVoice r8 \slashedGrace { <e gs> } <cs' e>4->( |
  <bs ds>8[)\prall r16 <as cs>]( <bs ds>4 <cs e> |
  
  \barNumberCheck 113
  % like 17
  <ds fs>8[) r16 <e gs>]-\slurShapeA ( <fs a!>4 \slashedGrace { b8 } <fs a>8
    <e gs> |
  <ds fs>8[)\prall r16 <cs e>]( <ds fs>4 <e gs>) |
  \tupletOn \tuplet 5/4 { <ds fs>8[-\slurShapeC ( <e gs> <fs a> <gs b>
    <b ds>->] } <a cs> <fs a>) |
  <ds fs>8[\prall r16 <cs e>]( <ds fs>4 <e gs>->) |
  <d fs>8[ r16 a]( q4.-> <cs e>8 |
  <bs ds!>8[)\prall r16 <as cs>]( <bs ds>4 <cs e>) |
  \voiceOne \magnifyMusic #2/3 { 
      \tupletOff \tuplet 3/2 { \once \normalsize a8->[_( <d fs> a']) }
    } 
    \oneVoice <d fs>8 r r <cs, e>( |
  <bs ds!>8[)\prall r16 <as cs>]( <bs ds>4 <cs e>) |
  
  \barNumberCheck 121
  % like 25
  \voiceOne \magnifyMusic #2/3 { 
      \tuplet 4/2 { \once \normalsize a!8->[_( <d fs> a' <d fs>]) }
    }
    \oneVoice a'8-. r r <cs,, e>( |
  <bs ds!>8[)\prall r16 <as cs>]( <bs ds>4 <cs e>) |
  \voiceOne \magnifyMusic #2/3 { 
      \tuplet 8/2 { \once \normalsize a!8->[_( <d fs> a' <d fs> a' fs d a]) }
    } 
    \oneVoice d'8-. r r\fermata <cs,, e>( |
  <bs ds!>8[)\prall r16 <as cs>]( <bs ds>4 <cs e>) |
  <bs ds!>8.-\slurShapeG \(\prall <as cs>16 <bs ds>4 <cs e> |
  <bs ds!>8\prall <as cs> <bs ds>4 <cs e> |
  <bs ds!>8\prall <as cs> <bs ds>4 <cs e> |
  <bs ds!>8\prall <as cs> <bs ds>4 <cs e> |
  
  \barNumberCheck 129
  \slashedGrace { ds8 } <as cs>8. <gss bs>16 <as cs>4 <a c> |
  \slashedGrace { c8 } <gs! b!>8. <fss as>16 <gs b>4 <g bf>\) |
  \slashedGrace { b!8 } <fs a>8.^\( <es gs!>16 <fs a>4 <f af> |
  \slashedGrace { af8 } <e g>8. <ds fs!>16 <e g>4 <ds fs> |
  \voiceOne fs2 e8 ds |
  fs8. fs16 ds4 cs' |
  fs,2 e8 ds |
  fs8. fs16 ds4\) ds'-\slurShapeH \( |
  
  \barNumberCheck 137
  cs8 a fs4 ds |
  \staffDown \voiceThree cs8 a fs4 cs |
  e2.\)\fermata |
  \bar "|."
}

rightHandLower = \relative {
  s2. |
  \voiceFour \hideNoteHead cs'2.~ |
  cs4. bs8 cs8. bs16 |
  cs8. bs16 cs4 bs |
  s8 fs'[ <e gs>-.] s4. |
  s2. |
  s8 fs[ <e gs>-.] s4. |
  s2. |
  
  \barNumberCheck 9
  s2. * 4 |
  s8 fs[ <e gs>-.] s4. |
  s2. |
  s8 fs[ <e gs>-.] s4. |
  s2. |
  
  \barNumberCheck 17
  s2. * 6 |
  a!4 s2 |
  s2. |
  
  \barNumberCheck 25
  a!4 s2 |
  s2. |
  a!4 s2 |
  s2. * 3 |
  <bs ds>2. |
  s2. |
  
  \barNumberCheck 33
  s2. * 16 |
  
  \barNumberCheck 49
  s2. * 2 |
  fs'2( e8 ds |
  e8[ r16 e] cs4 gs)->~ |
  gs2.~ |
  gs2. |
  s2. * 2 |
  
  \barNumberCheck 57
  s2. * 2 |
  cs2( b8 as |
  b8[ g16\rest b] gs4 ds->)~ |
  ds2. |
  s2. |
  s4 gs2 |
  s4 g2->~ |
  
  \barNumberCheck 65
  g4 fs fs~ |
  fs4 <fs b!> q~ |
  fs4 <fs cs'> q~ |
  fs4 <fs b> q |
  r4 <gs css> q |
  r4 <as ds> q~ |
  as4 <as es'> q~ |
  as4 <as ds> q |
  
  \barNumberCheck 73
  s2. * 7 |
  s2 \hideNoteHead fs4~ |
  
  \barNumberCheck 81
  % like 65
  fs4 fs fs~ |
  fs4 <fs b!> q~ |
  fs4 <fs cs'> q~ |
  fs4 <fs b> q |
  r4 <gs css> q |
  r4 <as ds> q~ |
  as4 <as es'> q~ |
  as4 <as ds> q |
  
  \barNumberCheck 89
  s2. * 8 |
  
  \barNumberCheck 97
  % like 1
  s2. |
  \hideNoteHead cs,2.~ |
  cs4. bs8 cs8. bs16 |
  cs8. bs16 cs4 bs |
  s8 fs'[ <e gs>-.] s4. |
  s2. |
  s8 fs[ <e gs>-.] s4. |
  s2. |
  
  \barNumberCheck 105
  % like 9
  s2. * 4 |
  s8 fs[ <e gs>-.] s4. |
  s2. |
  s8 fs[ <e gs>-.] s4. |
  s2. |
  
  \barNumberCheck 113
  % like 17
  s2. * 6 |
  a!4 s2 |
  s2. |
  
  \barNumberCheck 121
  % like 25
  a!4 s2 |
  s2. |
  a!4 s2 |
  s2. * 5 |
  
  \barNumberCheck 129
  s2. * 4 |
  cs,2.-> |
  cs2.-> |
  cs2.-> |
  cs2-> s4 |
}

rightHand = \relative {
  \global
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

leftHandUpper = \relative {
  s2. * 8 |
  
  \barNumberCheck 9
  s4 \voiceThree ds2-\tieShapeA _~ |
  ds2 s4 |
  s2. * 6 |
  
  \barNumberCheck 17
  s4 fs2-\tieShapeA _~ |
  fs2 s4 |
  fs2 s4 |
  fs2 s4 |
  s2. * 4 |
  
  \barNumberCheck 25
  s2. * 6 |
  r4 gs'2 |
  s2. |
  
  \barNumberCheck 33
  s2. * 24 |
  
  \barNumberCheck 57
  s2. * 6 |
  s4 gs, ds' |
  s4 g, ds' |
  
  \barNumberCheck 65
  s2. * 8 |
  
  \barNumberCheck 73
  s2. * 7 |
  s4 <gs, b e> <fs b ds> |
  
  \barNumberCheck 81
  s2. * 24 |
  
  \barNumberCheck 105
  % like 9
  s4 ds2-\tieShapeA _~ |
  ds2 s4 |
  s2. * 6 |
  
  \barNumberCheck 113
  % like 17
  s4 fs2-\tieShapeA _~ |
  fs2 s4 |
  fs2 s4 |
  fs2 s4 |
  s2. * 4 |
  
  \barNumberCheck 121
  s2. * 8 |
  
  \barNumberCheck 129
  s2. * 4 |
  fs2.-> |
  fs2.-> |
  fs2.-> |
  fs2-> s4 |
}

leftHandLower = \relative {
  e4.( ds8 e8. ds16 |
  e8. ds16 e4 ds |
  a4. gs8 a8. gs16 |
  a8. gs16 a4 gs) |
  <cs, gs' e'>4\arpeggio q\arpeggio q\arpeggio |
  <cs gs' fs'>\arpeggio q\arpeggio <cs gs' e'>\arpeggio |
  q4\arpeggio q\arpeggio q\arpeggio |
  <cs gs' fs'>\arpeggio q\arpeggio <cs gs' e'>\arpeggio |
  
  \barNumberCheck 9
  gs4 <gs' fs' bs>\arpeggio q\arpeggio |
  q4\arpeggio q\arpeggio <gs e' cs'>\arpeggio |
  gs,4 <gs' ds' fs bs>\arpeggio r |
  R2.\fermata |
  <cs, gs' e'>4\arpeggio q\arpeggio q\arpeggio |
  <cs gs' fs'>\arpeggio q\arpeggio <cs gs' e'>\arpeggio |
  q4\arpeggio q\arpeggio q\arpeggio |
  <cs gs' fs'>\arpeggio q\arpeggio <cs gs' e'>\arpeggio |
  
  \barNumberCheck 17
  b4 <b' a' ds>\arpeggio q\arpeggio |
  q4\arpeggio q\arpeggio <b e gs e'>\arpeggio |
  <b a' ds>4\arpeggio q\arpeggio r |
  q4\arpeggio q\arpeggio <e gs e'>->\arpeggio |
  fs,4 <fs' a d> r |
  <gs ds'! fs>4 q <cs e> |
  fs,,4 <fs' d' a'>8\arpeggio r r4 |
  <gs ds'! fs>4 q( <cs e>) |
  
  \barNumberCheck 25
  fs,,4 <fs' d' a'>8\arpeggio r r4 |
  <gs ds'! fs>4 q( <cs e>) |
  fs,,4 <fs' d' a'>8\arpeggio r r4\fermata |
  <gs ds'! fs>4 q( <cs e>) |
  <gs ds'>4 q <cs e> |
  <gs ds'>4 q <cs e> |
  \voiceTwo <gs ds'>2. |
  \oneVoice gs'4 gs2-> |
  
  \barNumberCheck 33
  gs,,8[ r16 fss']_( <gs bs fs'!>4) gs,( |
  cs8-.[) r16 fss]( <gs cs e>4) cs,( |
  gs8-.[) r16 fss']_( <gs bs fs'!>4) gs,( |
  cs8-.[) r16 fss]( <gs cs e>4) cs,( |
  gs8-.[) r16 fss']_( <gs bs fs'!>4) gs,( |
  cs8-.[) r16 fss]( <gs cs e>4) cs,( |
  gs,8-.[) r16 css']_( <ds gs b>4) gs,( |
  gs,8-.[) r16 css']_( <ds gs b>4) gs,( |
  
  \barNumberCheck 41
  ds8-.[) r16 css']_( <ds fss cs'!>4) ds,( |
  gs8-.[) r16 css]_( < ds gs b>4) gs,( |
  ds8-.[) r16 css']_( <ds fss cs'!>4) ds,( |
  gs8-.[) r16 css]_( < ds gs b>4) gs,( |
  ds8-.[) r16 css']_( <ds fss cs'!>4) ds,( |
  gs8-.[) r16 css]_( < ds gs b>4) ds' |
  b8. b16 gs4 ds' |
  fs8.[ gs16 fs8] r r4 |
  
  \barNumberCheck 49
  gs,,8-.[ r16 fss']_( <gs bs fs'!>4) gs,( |
  cs8-.[) r16 fss]( <gs cs e>4) cs,( |
  gs8-.[) r16 fss']_( <gs bs fs'!>4) gs,( |
  cs8-.[) r16 fss]( <gs cs e>4) cs,( |
  gs8-.[) r16 fss']_( <gs bs fs'!>4) gs,( |
  cs8-.[) r16 fss]( <gs cs e>4) cs,( |
  gs8-.[) r16 css]_( <ds gs b>4) gs,4( |
  gs,8-.[) r16 css']_( <ds gs b>4) gs,4( |
  
  \barNumberCheck 57
  ds8-.[) r16 css']_( <ds fss cs'!>4) ds,( |
  gs8-.[) r16 css]_( <ds gs b>4) gs,4( |
  ds8-.[) r16 css']_( <ds fss cs'!>4) ds,( |
  gs8-.[) r16 css]_( <ds gs b>4) gs,4( |
  ds8-.[) r16 css']_( <ds fss cs'!>4) ds,( |
  gs8-.[) r16 css]_( <ds gs b>4) ds' |
  b8. b16 \voiceTwo gs2 |
  b8. b16 g2-> |
  
  \barNumberCheck 65
  \oneVoice fs,4 <fs' as e'> q |
  b,4 <fs' b ds> q |
  as,4 <fs' cs' e> <fs cs' e!> |
  b,4 <fs' b ds> q |
  as,4 <as' es'> q |
  ds,,4 <ds' as' fs'> q |
  css,4 <css' as' es'>\arpeggio q\arpeggio |
  ds,4 <ds' as' fs'> q |
  
  \barNumberCheck 73
  <cs, cs'> <gs'' b cs es> q |
  \stemDown <fs,, fs'>8-.[ r16 <fs'' cs' fs>] \stemNeutral q2-> |
  <gs,, gs'>4 <e'' b' e> <as,, as'> |
  \stemDown <b b'>8-.[ r16 <ds' fs b ds>] \stemNeutral q2-> |
  \stemDown <e, e'>8-.[ r16 fss'16]( \stemNeutral gs4 cs) |
  fs,,8-.[ r16 es'16]( fs4 b) |
  fs,4 <fs' as e'> q |
  \voiceTwo b,2 s4 |
  
  \barNumberCheck 81
  \oneVoice fs4-. <fs' as e'> q |
  b,4-. <fs' b ds> q |
  as,4-. <fs' cs' e> <fs cs' e!> |
  b,4-. <fs' b ds> q |
  as,4-. <as' es'> q |
  ds,,4-. <ds' as' fs'> q |
  css,4-. <css' as' es'> q |
  ds,4-. <ds' as' fs'> q |
  
  \barNumberCheck 89
  <cs, cs'>4 <gs'' b es> q |
  \stemDown <fs,, fs'>8-.[ r16 <fs'' cs' fs>] \stemNeutral q4-> r |
  <gs,, gs'> <e'' b' e> <as,, as'> |
  \stemDown <b b'>8-.[ r16 <ds' fs b ds>] \stemNeutral q4-> r |
  \stemDown <e, e'>8-.[ r16 fss']( gs4 cs) |
  fs,,8-.[ r16 es']( fs4 b) \stemNeutral |
  fs,4 r8 cs''( ds[ cs] |
  ds8. cs16 ds4 cs) |
  
  \barNumberCheck 97
  % like 1
  e,4._( ds8 e8. ds16 |
  e8. ds16 e4 ds |
  a4. gs8 a8. gs16 |
  a8. gs16 a4 gs) |
  cs,4-. <cs gs' e'>\arpeggio q->\arpeggio |
  <cs gs' fs'>\arpeggio q\arpeggio <cs gs' e'>\arpeggio |
  q4\arpeggio q\arpeggio q->\arpeggio |
  <cs gs' fs'>\arpeggio q\arpeggio <cs gs' e'>\arpeggio |
  
  \barNumberCheck 105
  % like 9
  gs4 <gs' fs' bs>\arpeggio q\arpeggio |
  q4\arpeggio q\arpeggio <gs e' cs'>\arpeggio |
  gs,4 <gs' ds' fs bs>\arpeggio r |
  R2.\fermata |
  <cs, gs' e'>4\arpeggio q\arpeggio q\arpeggio |
  <cs gs' fs'>\arpeggio q\arpeggio <cs gs' e'>\arpeggio |
  q4\arpeggio q\arpeggio q\arpeggio |
  <cs gs' fs'>\arpeggio q\arpeggio <cs gs' e'>\arpeggio |
  
  \barNumberCheck 113
  % like 17
  b4 <b' a' ds>\arpeggio q\arpeggio |
  q4\arpeggio q\arpeggio <b e gs e'>\arpeggio |
  <b a' ds>4\arpeggio q\arpeggio r |
  q4\arpeggio q\arpeggio <e gs e'>->\arpeggio |
  fs,4 <fs' a d> r |
  <gs ds'! fs>4 q <cs e> |
  fs,,4 <fs' d' a'>8\arpeggio r r4 |
  <gs ds'! fs>4 q( <cs e>) |
  
  \barNumberCheck 121
  % like 25
  fs,,4 <fs' d' a'>8\arpeggio r r4 |
  <gs ds'! fs>4 q( <cs e>) |
  fs,,4 <fs' d' a'>8\arpeggio r r4\fermata |
  <gs ds'! fs>4 q( <cs e>) |
  <gs ds'>4 q <cs e> |
  <gs ds'>4 q <cs e> |
  <gs ds'>4 q <fss e'> |
  <gs ds'>4 q <g e'> |
  
  \barNumberCheck 129
  <fs e'>4 q <f c' ef> |
  <e b'! d>4 q <ef bf' df> |
  <d a' c>4 q <df af' cf> |
  <c g' bf>4 q <b! fs' a> |
  \voiceTwo a8. gs16 a4 ds, |
  a'8. gs16 a4 ds, |
  a'8. gs16 a4 ds, |
  a'8. gs16 a4 \oneVoice r |
  
  \barNumberCheck 137
  R2. |
  \voiceTwo R2. |
  <cs, gs'>2.\fermata |
}

leftHand = {
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
  s2.\p |
  s2. * 3 |
  \tag layout { s2.^\sotoVoce } \tag midi { s2.\pp } |
  s2. * 2 |
  s4 s2\< |
  
  \barNumberCheck 9
  s4 s\! s\> |
  s2.\! |
  s4\< s2\! |
  s2. |
  s2.\p |
  s2. * 3 |
  
  \barNumberCheck 17
  s2.\f |
  s2. |
  s2\< s8 s\! |
  \tag layout { s2. } \tag midi { s2.\mf } |
  s2.\p |
  s2. * 3 |
  
  \barNumberCheck 25
  s2. * 8 |
  
  \barNumberCheck 33
  s2.\p |
  s2. * 5 |
  \tag layout { s8\parenthesize \f } \tag midi { s8 } s^\pocoRiten s2 | 
  s2. |
  
  \barNumberCheck 41
  s2.^\sempreP |
  s2. * 4 |
  s2 s4\dim |
  s2 s8 s\! |
  s2.-\tweak Y-offset 1 \pp |
  
  \barNumberCheck 49
  s2. * 6 |
  \tag layout { s2.\f | } \tag midi { s2. | }
  s2. |
  
  \barNumberCheck 57
  s2.\p |
  s2. * 7 |
  
  \barNumberCheck 65
  s2. * 4 |
  s2.\cresc |
  s2. * 2 |
  s2 s8 s\! |
  
  \barNumberCheck 73
  s2.\ff |
  s2. * 3 |
  s2.\p |
  s2. * 3 |
  
  \barNumberCheck 81
  s2. * 8 |
  
  \barNumberCheck 89
  s2.\ff |
  s2. * 3 |
  s2.\p |
  s2. * 2 |
  s2 s4\dim |
  
  \barNumberCheck 97
  s2. * 3 |
  s2 s8 s\! |
  s2. * 4 |
  
  \barNumberCheck 105
  s4\< s2\! |
  s8. s16\> s4 s\! |
  s4\< s2\! |
  s2. |
  s2.\p |
  s2. * 3 |
  
  \barNumberCheck 113
  s2.\f |
  s2. |
  s2\< s8 s\! |
  \tag layout { s2 } \tag midi { s2\mf } s8.\> s16\! |
  s2.\p |
  s2. * 3 |
  
  \barNumberCheck 121
  s2. * 4 |
  s4\p s2\pocoStrettoEDim |
  s2. * 3 |
  
  \barNumberCheck 129
  s2. * 3 |
  s2 s8 s\! |
  s2.-\tweak X-offset -3 -\tweak Y-offset -3 \pp |
  s2. * 2 |
  s2 s4-\tweak extra-offset #'(0 . -2) ^\slentandoWO |
}

tempi = {
  \set Score.tempoHideNote = ##t
  \tempo "Allegretto" 4 = 120
  s2. * 8 |
  
  \barNumberCheck 9
  s2. * 3 |
  \tempo 4 = 112 s4. \tempo 4 = 60 s4 \tempo 4 = 120 s8 |
  s2. * 4 |
  
  \barNumberCheck 17
  s2. * 8 |
  
  \barNumberCheck 25
  s2. * 2 |
  s2 \tempo 4 = 40 s8 \tempo 4 = 120 s |
  s2. * 5 |
  
  \barNumberCheck 33
  s2. * 72 |
  
  \barNumberCheck 105
  s2. * 3 |
  \tempo 4 = 112 s4. \tempo 4 = 60 s4 \tempo 4 = 120 s8 |
  s2. * 4 |
  
  \barNumberCheck 113
  s2. * 8 |
  
  \barNumberCheck 121
  s2. * 2 |
  s2 \tempo 4 = 40 s8 \tempo 4 = 120 s |
  s2. * 2 |
  \tempo 4 = 126 s2. |
  s2. |
  \tempo 4 = 132 s2. |
  
  \barNumberCheck 129
  s2. |
  \tempo 4 = 138 s2. |
  s2. |
  s2. * 4 |
  s2 \tempo 4 = 112 s4 |
  
  \barNumberCheck 137
  s2. |
  \tempo 4 = 104 s2. |
  \tempo 4 = 60 s2. |
}

pedal = {
  s2. * 4 |
  s2\sd s8 s\su |
  s4.\sd s8\su s4-\tweak X-offset -0.5 \sd |
  s2 s8 s\su |
  s4.\sd s\su |
  
  \barNumberCheck 9
  s2.-\tweak Y-offset -1.5 \sd |
  s4. s\su |
  s2.-\tweak Y-offset -2 \sd |
  s2 s4\su |
  s2. * 4 |
  
  \barNumberCheck 17
  s2.-\tweak Y-offset -1 \sd |
  s4. s\su |
  s2.\sd |
  s4. s\su |
  s2\sd s8 s\su |
  s2. |
  s2\sd s8 s\su |
  s2. |
  
  \barNumberCheck 25
  s2\sd s8 s\su |
  s2. |
  s2\sd s8 s\su |
  s2. * 5 |
  
  \barNumberCheck 33
  \tag layout { 
    s2\sd s8 s\su |
    s2\sd s8 s\su |
    s2\sd s8 s\su |
    s2\sd s8 s\su |
    s2\sd s8 s\su |
    s2\sd s8 s\su |
    s2-\tweak Y-offset -2.5 \sd s8 s-\tweak Y-offset -1 \su |
    s2-\tweak Y-offset -2.5 \sd s8 s\su | 
  }
  \tag midi { s2. * 8 | }
  
  \barNumberCheck 41
  \tag layout { 
    s2-\tweak Y-offset -1 \sd s8 s-\tweak Y-offset -1 \su |
    s2\sd s8 s\su |
    s2\sd s8 s\su |
    s2\sd s8 s\su |
    s2\sd s8 s\su |
    s4.\sd s\su |
  }
  \tag midi { s2. * 6 | }
  s2. * 2 |
  
  \barNumberCheck 49
  \tag layout { 
    s2\sd s8 s\su |
    s2\sd s8 s\su |
    s2\sd s8 s\su |
    s2\sd s8 s\su |
    s2\sd s8 s\su |
    s2\sd s8 s\su |
    s2\sd s8 s-\tweak Y-offset -2 \su |
    s2-\tweak Y-offset -3 \sd s8 s\su |
  }
  \tag midi { s2. * 8 | }
  
  \barNumberCheck 57
  \tag layout { 
    s4.\sd s\su |
    s2\sd s8 s\su |
    s2\sd s8 s\su |
    s2\sd s8 s\su |
    s2\sd s8 s\su |
    s4.-\tweak Y-offset -1 \sd s\su |
  }
  \tag midi { s2. * 6 | }
  s2. * 2 |
  
  \barNumberCheck 65
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  
  \barNumberCheck 73
  s2\sd s8 s\su |
  s2-\tweak Y-offset -2 \sd s8 s\su |
  s2\sd s8 s\su |
  s2-\tweak Y-offset -1 \sd s8 s\su |
  s2. * 2 |
  s2-\tweak Y-offset 3 \sd s8 s-\tweak Y-offset 3 \su |
  s2-\tweak Y-offset -1 \sd s4\su |
  
  \barNumberCheck 81
  s2-\tweak Y-offset -0.5 \sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  
  \barNumberCheck 89
  s2\sd s8 s\su |
  s2-\tweak Y-offset -4 \sd s4\su |
  s2. |
  s2\sd s4\su |
  s2. * 4 |
  
  \barNumberCheck 97
  s2. * 4 |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s4.\sd s\su |
  
  \barNumberCheck 105
  s2.\sd |
  s4. s\su |
  s2\sd s8 s\su |
  s2. |
  s2\sd s8 s\su |
  s4.\sd s\su |
  s2\sd s8 s\su |
  s4.\sd s\su |
  
  \barNumberCheck 113
  s2.\sd |
  s4. s\su |
  s2.\sd |
  s4. s\su |
  s2\sd s8 s\su |
  s2. |
  s2\sd s8 s\su |
  s2. |
  
  \barNumberCheck 121
  s2\sd s8 s\su |
  s2. |
  s2\sd s8 s\su |
}

forceBreaks = {
  % page 1
  \repeat unfold 4 { s2.\noBreak } s2.\break \noPageBreak
  \repeat unfold 4 { s2.\noBreak } s2.\break \noPageBreak
  \repeat unfold 4 { s2.\noBreak } s2.\break \noPageBreak
  \repeat unfold 4 { s2.\noBreak } s2.\break \noPageBreak
  \repeat unfold 4 { s2.\noBreak } s2.\pageBreak
  
  % page 2
  \repeat unfold 4 { s2.\noBreak } s2.\break \noPageBreak
  \repeat unfold 5 { s2.\noBreak } s2.\break \noPageBreak
  \repeat unfold 4 { s2.\noBreak } s2.\break \noPageBreak
  \repeat unfold 4 { s2.\noBreak } s2.\break \noPageBreak
  \repeat unfold 4 { s2.\noBreak } s2.\break \noPageBreak
  \repeat unfold 4 { s2.\noBreak } s2.\pageBreak
  
  % page 3
  \repeat unfold 4 { s2.\noBreak } s2.\break \noPageBreak
  \repeat unfold 5 { s2.\noBreak } s2.\break \noPageBreak
  \repeat unfold 5 { s2.\noBreak } s2.\break \noPageBreak
  \repeat unfold 5 { s2.\noBreak } s2.\break \noPageBreak
  \grace { s8 } \repeat unfold 5 { s2.\noBreak } s2.\pageBreak
  
  % page 4
  \repeat unfold 4 { s2.\noBreak } s2.\break \noPageBreak
  \repeat unfold 4 { s2.\noBreak } s2.\break \noPageBreak
  \repeat unfold 5 { s2.\noBreak } s2.\break \noPageBreak
  \repeat unfold 4 { s2.\noBreak } s2.\break \noPageBreak
  \repeat unfold 4 { s2.\noBreak } s2.\pageBreak
  
  % page 5
  \repeat unfold 4 { s2.\noBreak } s2.\break \noPageBreak
  \repeat unfold 4 { s2.\noBreak } s2.\break \noPageBreak
  \repeat unfold 4 { s2.\noBreak } s2.\break \noPageBreak
  \repeat unfold 5 { s2.\noBreak } s2.\break \noPageBreak
}

mazurkaFourNotes =
\score {
  \header {
    title = "Mazurka Four"
    composer = "Frédéric Chopin"
    opus = "Opus 30, No.4"
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

mazurkaFourMidi =
\book {
  \bookOutputName "mazurka-op30-no4"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \pedal \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \pedal \tempi >>
    >>
    \midi {}
  }
}
