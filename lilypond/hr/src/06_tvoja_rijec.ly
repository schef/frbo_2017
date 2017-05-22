\version "2.19.49"

%\language "deutsch"

\header {
  title = "TVOJA RIJEČ"
  titlex = "Sidro"
  composer = "Frank Bosch"
  style = "Psalam  119,9.105"
  broj = "6"
}

\include "s02_frbo.ily"

\paper {
  \aFourL
   system-system-spacing.padding = #2
}

note = \relative c' {
  \key e \major
  
  %one
  \markMojPoc
  \once \override Score.RehearsalMark.X-offset = #9.5
  \once \override Score.RehearsalMark.Y-offset = #0
  \repeat volta 2 {
    cis4 cis8 cis cis cis4 dis8 ~ |
    \once \override Score.RehearsalMark.color = #black
    \once \override Score.RehearsalMark.self-alignment-X = #LEFT
    \once \override Score.BarNumber.break-visibility = #all-invisible
    \once \override Score.RehearsalMark.padding = #4
    \once \override Score.RehearsalMark.X-offset = #-29.8
    \once \override Score.RehearsalMark.Y-offset = #3.8
    \rhythmMark #"Swing" \rhyMarkIIEighths \rhyMarkSlurredTriplets
    dis8 dis ~ dis4 r4 r8 dis8 |
    e4 e8 e ~ e e4 fis8( ~ |
  }
  \alternative{
    {fis4. e8 ~ e4 dis) |}
    {fis4. \breathemoj gis8 ~ gis fis e fis | \bar "||"}
  }

  \markMoj
  \repeat volta 2 {
    gis4 cis,8 e ~ e fis4( dis8 ~ |
    dis4.) gis8 ~ gis fis e fis |
    gis4 cis,8 e ~ e8 fis4( dis8 ~ |
    dis4.) h'8 ~ h a gis fis |
    gis4 cis,8 e ~ e fis4 dis8 ~ |
    dis2 r2 |
  }
  \alternative{
    {e2 fis4.( dis8 ~ | dis1) |}
    {e2( fis4.) a8( ~ | a8 gis gis2.) | \bar ".|:"}
  }
  \once \override Score.RehearsalMark.break-align-symbols = #'(time-signature)
  \once \override Score.RehearsalMark.self-alignment-X = #-1.8
  \once \override Score.RehearsalMark.Y-offset = #0.2
  \mark \default
  \repeat volta 2 {
    \once \override Score.StaffSpacing.stem-spacing-correction = #4
    h2 cis4. h8 ~ |
    h4 a gis fis |
    gis4 gis8 gis gis a ~ a gis ~ |
    gis8 fis4 e8 ~ e4. dis8 |
    e4 cis e8 fis4 gis8 ~ |
    gis8 fis ~ fis2. |
  }
  \alternative{
    {h2 h4 a8 gis ~ | gis8 fis4 e8( ~ e fis4.) |}
    {e2 e4 fis8 e ~ | e8 dis4 cis8( ~ cis dis ~ dis4) | \bar "|."}
  }
}

tekst = \lyricmode {
  \set stanza = "1."
  Ka -- ko će mla -- di  či -- stim sa -- ču -- va -- ti __ put svoj? __
  (svoj?) 
  Ču -- va -- ju -- ći rije -- či Bo -- žje, __
  ču -- va -- ju -- ći rije -- či Bo -- žje, __
  i svim sr -- cem svo -- jim tra -- že -- ći __ Bo -- ga. __
  Bo -- ga. __

  Tvo -- ja riječ, o Bo -- že, no -- zi je mo -- joj __ svje -- tilj -- ka __
  i svje -- tlo mo -- joj sta -- zi. __ Te -- be ću slije -- di -- ti. __
  Te -- be ću slije -- di -- ti. __
}

tekstDva = \lyricmode {
  \set stanza = "2."
  Ka -- ko ću, Bo -- že, či -- stim sa -- ču -- va -- ti __ put svoj? __
  (svoj?)
  Ču -- va -- ju -- ći rije -- či Tvo -- je, __
  ču -- va -- ju -- ći rije -- či Tvo -- je, __
  i svim sr -- cem svo -- jim tra -- že -- ći __ Te -- be. __
  Te -- be. __
}

tekstTri = \lyricmode {
  \set stanza = "3."
  Ta -- ko ću, Bo -- že, či -- stim sa -- ču -- va -- ti put svoj... __
}

akordi = \chordmode {
  cis1:m | h | a | gis:7 |
  gis1:m/c | cis:m | h | a | gis:7/c |
  cis1:m | h | a | gis:7/c | a | gis:7/c |
  e1 | h | cis:m | h | a | h | a | h | a | gis:7/c |
}

\score {
  <<
    \new ChordNames { \jazzChords \akordi }
    \new Staff { \note }
    \addlyrics { \tekst }
    \addlyrics { \tekstDva }
    \addlyrics { \tekstTri }
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
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \italic \teeny { intro [8] } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 0) 1 \italic \teeny { verse } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) { 2 \teeny \italic { bridge } } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) 1 \italic \teeny { verse 2. } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) { 2 \teeny \italic { bridge 2.} } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 3 \teeny \italic { chorus } } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) 1 \teeny \italic { verse 2.} }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) { 2 \teeny \italic { bridge 2. } } }
    }
  }
}
\markup {
  \hspace #11.8
  \huge {
    \rounded-box {
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 3 \teeny \italic { chorus } } \teeny \italic {(prima volta)} }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 3 \teeny \italic { chorus } } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) 1 \italic \teeny { verse 3. (fade out on prima volta) } }
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
