\version "2.11.40"

\include "defs.lyi" 
\include "horn_notes.lyi" 

instrument = "Horn"

\paper
{
  %first-page-number = 2
  %#(define page-breaking ly:minimal-breaking)
  %#(define page-breaking ly:page-turn-breaking)
  ragged-last-bottom = ##f
}

\book
{
  \include "header.lyi"
  \score
  {
    \new Staff %\with { \consists "Page_turn_engraver" }
    {
      #(set-accidental-style 'modern)
      << \horn \outline >>
    }
  }
}

