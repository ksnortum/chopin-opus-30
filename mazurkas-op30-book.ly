%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"

\include "includes/header-paper.ily"
\include "includes/title-page.ily"
\include "includes/mazurka-op30-no1-parts.ily"
\include "includes/mazurka-op30-no2-parts.ily"
\include "includes/mazurka-op30-no3-parts.ily"
\include "includes/mazurka-op30-no4-parts.ily"

% Title page

\titlePage

% Table of contents

\bookpart {
  \header {
    title = ##f
    subtitle = ##f
    composer = ##f
    arranger = ##f
    copyright = ##f
    tagline = ##f
  }
  \markuplist \table-of-contents
}

% PDFs

\tocItem \markup "No. 1 Allegretto non tanto in C minor" 
\mazurkaOneNotes
\pageBreak

\tocItem \markup "No. 2 Vivace in B minor" 
\mazurkaTwoNotes
\pageBreak

\tocItem \markup "No. 3 Allegro non troppo in D♭ major"
\mazurkaThreeNotes
\pageBreak

\tocItem \markup "No. 4 Allegretto in C♯ minor" 
\mazurkaFourNotes

% Midi

\mazurkaOneMidi
\mazurkaTwoMidi
\mazurkaThreeMidi
\mazurkaFourMidi
