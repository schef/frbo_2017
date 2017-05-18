\version "2.19.49"

\header {
  title = "JA I MOJ DOM"
  titlex = "Sidro"
  composer = "Frank Bosch"
  style = "Jošua 24,15"
  broj = "4"
}

\include "s02_frbo.ily"

\paper {
 \aFourL
}

note = \relative c' {
  \key d \major
  \time 4/4


  %one
  \markMoj
  \bar ".|:"
  \repeat volta 2 {
    fis4 r2 e8 d |
    d4 r r2 |
    fis8\( fis\) fis\( fis\) g8 fis
    \phrasingSlurDashed
    e\( d\) |
    \phrasingSlurSolid
  }
  \alternative {
    {d4 r4 r2}
    {d4 r2
     \breathemoj
     \once \override Staff.BarLine #'extra-spacing-width = #'(-4 . 0)
     fis8 e |}
  }
  
  %two
  \markMoj
  \once \override Score.RehearsalMark.Y-offset = #3.7
  \bar ".|:"
  \repeat volta 2 {
  e8 d ~ d4 r4 fis8 e |
  e8 d ~ d4 r2 |
  a'8 a a a g g g fis |
  }
  \alternative{
    {e4 r r fis8 e|}
    {e2 r2|}
  }
  \bar "|."
}

tekst = \lyricmode {
  \set stanza = "1."
Ja i moj dom, slu -- _ žit __ _ će -- mo Go -- spo -- du.
du. 

Ko -- me dru -- gom, Ko -- me dru -- gom?   Ne -- ma Bo -- ga ka -- o što je On!
Ko -- me
On!
}

tekstDva = \lyricmode {
  \set stanza = "2."
Ja i moj dom, slu -- žit će -- mo te -- be Bo -- _ že.
že. 

Ko -- me dru -- gom, Ko -- me dru -- gom?   Ne -- ma Bo -- ga ka -- o što si Ti!
Ko -- me
Ti!
}

%tekstTri = \lyricmode {

%}

akordi = \chordmode {
  %one
  d2 g | d a | d g | d a | d a |
  h2:m g | h1:m | d2 g | a1 | \set chordChanges = ##f a |
}

\score {
  <<
    \new ChordNames { \jazzChords \akordi }
    \new Staff { \note }
    \addlyrics { \tekst }
    \addlyrics { \tekstDva }
%    \addlyrics { \tekstTri }
  >>
  \layout {}
}

\score {
  <<
    \new ChordNames { \jazzChords \akordi }
    \new Staff { \note }
  >>
  \midi { \tempo 8 = 174 }
}

\markup {
  \vspace #1.5
  \smaller \italic Leadsheet: \hspace #2
  \huge {
    \rounded-box {
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \italic \teeny { intro [1] } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 0) 1 \italic \teeny { verse  } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 2 \teeny \italic { chorus } } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) 1 \italic \teeny { verse } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 2 \teeny \italic { chorus } } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 0) 1 \italic \teeny { solo } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 2 \teeny \italic { chorus } } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) 1 \italic \teeny { verse } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \italic \teeny { outro [4]} }
    }
  }
}

%\markup {
%\vspace #2
%\smaller \italic Leadsheet: \hspace #2
%		\huge {
%		\rounded-box {
%			\line { \pad-to-box #'(0 . 0) #'(-0.34 . 2.05) \bold { 1 \teeny \italic chorus } }
%			\line { \pad-to-box #'(0 . 0) #'(-0.34 . 0) 2 \italic \teeny vers }
%			\line { \pad-to-box #'(0 . 0) #'(-0.34 . 2.05) \bold { 1 \teeny \italic chorus } }
%			\line { \pad-to-box #'(0 . 0) #'(-0.34 . 0) 2 \italic \teeny vers }
%			\line { \pad-to-box #'(0 . 0) #'(-0.34 . 2.05) \bold { 1 \teeny \italic chorus } }
%			\line { \pad-to-box #'(0 . 0) #'(0 . 2.05) 3 \teeny \italic bridge }
%			\line { \pad-to-box #'(0 . 0) #'(-0.34 . 0) \bold { 1 \italic \teeny chorus \bold \tiny ×2 } }
%		}
%	}
%}

%{
convert-ly (GNU LilyPond) 2.18.2  convert-ly: Processing `'...
Applying conversion: 2.17.97, 2.18.0
%}


%{
convert-ly (GNU LilyPond) 2.19.59  convert-ly: Processing `'...
Applying conversion: 2.19.2, 2.19.7, 2.19.11, 2.19.16, 2.19.22,
2.19.24, 2.19.28, 2.19.29, 2.19.32, 2.19.40, 2.19.46, 2.19.49
%}
