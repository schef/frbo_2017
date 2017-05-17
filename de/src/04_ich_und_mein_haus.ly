\version "2.19.49"

\header {
  title = "ICH ABER UND MEIN HAUS"
  titlex = "Anker"
  composer = "Frank Bosch"
  style = "Josua 24,15"
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
    fis4 r4 g8 fis e8 d |
    d4 r r2 |
    fis4 fis8 fis g( fis) e( d) |
  }
  \alternative {
    {d4 fis8( e16 e ~ e4) r4 |}
    {d4 r2 fis8 e |}
  }
  
  %two
  \markMoj
  \once \override Score.RehearsalMark.X-offset = #1
  \bar ".|:"
  \repeat volta 2 {
  d4 r r4 fis8 e |
  d4 r4 r2 |
  a'8 a g fis g4 fis8 e |
  }
  \alternative{
    {e4 r r fis8 e|}
    {e2 r2|}
  }
  \bar "|."
}

tekst = \lyricmode {
  \set stanza = "1."
Ich a -- ber und mein Haus, wo -- llen dem HERRN die -- nen. Mhmm. __ nen.

Wem denn sonst? Wem denn sonst? Wo ist solch ein Gott, so wie Er? Wem denn Er.
}

tekstDva = \lyricmode {
  \set stanza = "2."
Ich a -- ber und mein Haus, wo -- llen Dir die -- nen, HERR. Ohooo __ HERR.

Wem denn sonst? Wem denn sonst? Wo ist solch ein Gott, so wie Du? Wem denn Du?
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
