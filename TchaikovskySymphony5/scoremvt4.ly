\version "2.10.36"

\include "Flute1MvtIV.lyi"
\include "Flute2MvtIV.lyi"
\include "CelloMvtIV.lyi"
\include "Oboe1MvtIV.lyi"
\include "Oboe2MvtIV.lyi"
\include "Violin1MvtIV.lyi"
\include "Violin2MvtIV.lyi"
\include "Horn1MvtIV.lyi"
\include "Horn2MvtIV.lyi"
\include "Horn3MvtIV.lyi"
\include "Bassoon1MvtIV.lyi"
\include "Bassoon2MvtIV.lyi"
\include "ViolaMvtIV.lyi"
\include "Clarinet1MvtIV.lyi"
\include "Clarinet2MvtIV.lyi"
\include "TimpaniMvtIV.lyi"
\include "BassMvtIV.lyi"
\include "Trumpet1MvtIV.lyi"
\include "Trumpet2MvtIV.lyi"
\include "defs.lyi"

#(set-global-staff-size 17)
%#(set-default-paper-size "a3")

\paper
{
  #(define page-breaking ly:minimal-breaking)
  %ragged-last-bottom = ##f
}

instrument = "Orchestra"

\book
{
  \include "Header.lyi"
  \score
  {
    <<
      \new StaffGroup
      <<
        \new Staff
        {
          \override Staff.CombineTextScript #'avoid-slur = #'outside
          \set Staff.instrumentName = "Flutes"
          \set Staff.shortInstrumentName = "Fl."
          %\set Staff.printpartCombineTexts = ##f
          \partcombine
            \keepWithTag #'score \fluteOneMvtIV
            \keepWithTag #'score \fluteTwoMvtIV
        }
        \new Staff
        {
          \override Staff.CombineTextScript #'avoid-slur = #'outside
          \set Staff.instrumentName = "Oboes"
          \set Staff.shortInstrumentName = "Ob."
          %\set Staff.printpartCombineTexts = ##f
          \partcombine
            \keepWithTag #'score \oboeOneMvtIV
            \keepWithTag #'score \oboeTwoMvtIV
        }
        \new Staff
        {
          \override Staff.CombineTextScript #'avoid-slur = #'outside
          \set Staff.instrumentName = "Clarinets"
          \set Staff.shortInstrumentName = "Cl."
          %\set Staff.printpartCombineTexts = ##f
          \partcombine
            \keepWithTag #'score \clarinetOneMvtIV
            \keepWithTag #'score \clarinetTwoMvtIV
        }
        \new Staff
        {
          \override Staff.CombineTextScript #'avoid-slur = #'outside
          \set Staff.instrumentName = "Bassoons"
          \set Staff.shortInstrumentName = "Bs."
          %\set Staff.printpartCombineTexts = ##f
          \partcombine
            \keepWithTag #'score \bassoonOneMvtIV
            \keepWithTag #'score \bassoonTwoMvtIV
        }
      >>
      \new StaffGroup
      <<
        \new Staff
        {
          \override Staff.CombineTextScript #'avoid-slur = #'outside
          \set Staff.instrumentName = "Horns I,II"
          \set Staff.shortInstrumentName = "Hn."
          %\set Staff.printpartCombineTexts = ##f
          %\partcombine
          <<
            \new Voice {\voiceOne \keepWithTag #'score \hornOneMvtIV}
            \new Voice {\voiceTwo \keepWithTag #'score \hornTwoMvtIV}
          >>
        }
        \new Staff
        {
          \set Staff.instrumentName = "Horn III"
          \set Staff.shortInstrumentName = "Hn.III"
          << \hornThreeMvtIV \outlineMvtIV >>
        }
        \new Staff
        {
          \override Staff.CombineTextScript #'avoid-slur = #'outside
          \set Staff.instrumentName = "Trumpets"
          \set Staff.shortInstrumentName = "Tr."
          %\set Staff.printpartCombineTexts = ##f
          \partcombine
            \keepWithTag #'score \trumpetOneMvtIV
            \keepWithTag #'score \trumpetTwoMvtIV
        }
      >>
      \new Staff
      {
        \set Staff.instrumentName = "Timpani"
        \set Staff.shortInstrumentName = "Ti."
        \timpaniMvtIV
      }
      \new StaffGroup
      <<
        \new GrandStaff
        <<
          \new Staff
          {
            \set Staff.instrumentName = "Violin I"
            \set Staff.shortInstrumentName = "Vl.I"
            \violinOneMvtIV
          }
          \new Staff
          {
            \set Staff.instrumentName = "Violin II"
            \set Staff.shortInstrumentName = "Vl.II"
            \violinTwoMvtIV
          }
        >>
        \new Staff
        {
          \set Staff.instrumentName = "Viola"
          \set Staff.shortInstrumentName = "Va."
          \violaMvtIV
        }
        \new Staff
        {
          \set Staff.instrumentName = "Cello"
          \set Staff.shortInstrumentName = "Vc."
          \celloMvtIV
        }
        \new Staff
        {
          \set Staff.instrumentName = "Bass"
          \set Staff.shortInstrumentName = "Cb."
          << \bassMvtIV \outlineMvtIV >>
        }
      >>
    >>
    \header { piece = \MvtIV }
    \layout
    {
      %\context { \RemoveEmptyStaffContext }
    }
  }

  \score
  {
    <<
      \new Staff
      {
        \set Staff.midiInstrument = "flute"
        <<
          \fluteOneMvtIV
          \fluteTwoMvtIV
        >>
      }
      \new Staff
      {
        \set Staff.midiInstrument = "oboe"
        <<
          \oboeOneMvtIV
          \oboeTwoMvtIV
        >>
      }
      \new Staff
      {
        \set Staff.midiInstrument = "clarinet"
        <<
          \clarinetOneMvtIV
          \clarinetTwoMvtIV
        >>
      }
      \new Staff
      {
        \set Staff.midiInstrument = "bassoon"
        <<
          \bassoonOneMvtIV
          \bassoonTwoMvtIV
        >>
      }
      \new Staff
      {
        \set Staff.midiInstrument = "french horn"
        <<
          \hornOneMvtIV
          \hornTwoMvtIV
          \hornThreeMvtIV
        >>
      }
      \new Staff
      {
        \set Staff.midiInstrument = "trumpet"
        <<
          \trumpetOneMvtIV
          \trumpetTwoMvtIV
        >>
      }
      \new Staff
      {
        \set Staff.midiInstrument = "timpani"
        \timpaniMvtIV
      }
      \new Staff
      {
        \set Staff.midiInstrument = "string ensemble 1"
        <<
          \violinOneMvtIV
          \violinTwoMvtIV
          \violaMvtIV
          \celloMvtIV
          << \bassMvtIV \outlineMvtIV >>
        >>
      }
    >>
    \midi
    {
      \context
      {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 76 2)
      }
    }
  }
}

