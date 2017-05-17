\version "2.19.49"

\header {
  title = "DER HERR IST MEIN LICHT"
  titlex = "Anker"
  composer = "Frank Bosch"
  style = "Psalm 27,1+4-5"
  broj = "2"
}

\include "s02_frbo.ily"
\include "de_footer.ily"

\paper {
  \aFourL
}

note = \relative c' {
  \key e \major
  \time 4/4
  \partial 8
  h8 |
  \markMoj
  e2 r8 h8 h4 |
  fis'2 r8 h,8 h4 |
  gis'2 r4 r8 gis8 |
  a4. gis8 ~ \tuplet3/2{gis4 fis e} |
  e4 h r4 r8 h8 |
  cis4 e e8 cis4 h8 ~ |
  h1 |
  r2 r4 r8 h8 |
  e2 r8 h8 h4 |
  fis'2 r8 h,8 h4 |
  gis'2 r4 r8 gis8 |
  h4 a gis fis8 e ~ |
  e8 h ~ h h ~ h4. h8 |
  a'4 gis ~ \tuplet3/2{gis fis e} |
  e1 |
  r2 r4 \breathemoj cis8 dis |
  \markMoj
  e4 e e e( ~ |
  e4 dis) cis cis |
  h2 r4 h4 |
  dis2 dis4 dis( |
  cis1) ~ |
  cis1 |
  r1 |
  r2 r4 dis |
  e4 e e e ~ |
  e4 dis cis cis |
  h2 r4 h8 h |
  dis2. dis4( |
  e1) ~ |
  e1 |
  r1 |
  r4 \breathemoj gis4 gis a8 gis ~ |
  \markMoj
  \bar".|:"
  \repeat volta 2 {
    gis4 e2. |
    r4 e( fis e ~ |
    e2. fis4) |
    r4 gis4 gis a8 gis ~ |
    gis4 e2. |
    r4 e( fis e ~ |
    e2. fis4) |
  }
  \alternative{
    {r4 gis4 gis a8 gis \laissezVibrer |}
    {r2 r4 r8 \breathemoj h, |}
  }
  \markMoj
  h'4 h h h |
  h4 gis2 fis4( ~ |
  fis4 gis2.) |
  r1 |
  a4 a a a ~ |
  a4 gis( fis) e ~ |
  e1 |
  r4 r8 e8 e4 fis |
  gis4 gis gis gis ~ |
  gis4 fis2 e4 |
  e4. fis8 ~ fis2 |
  r2 r4 r8 h,8 |
  cis4. e8 e2( |
  cis2) r4 e4 |
  gis4. a8 ~ a4 gis4( |
  fis1) |
  \bar "|."
}

tekst = \lyricmode {
  Der HERR ist mein Licht und mein Heil; 
  vor wem sollt' ich mich fürch -- ten, 
  vor wem soll -- te mir grau'n? 
  Der HERR ist mein Licht und mein Heil; 
  der HERR ist mei -- nes Le -- bens Kraft; 
  vor wem soll -- te mir grau‘n?

  Denn er deckt mich in sei -- ner Hü -- tte
  in schwe -- rer Zeit, __ 
  er birgt mich im Schutz sei -- nes Zel -- tes 
  und er -- höht mich __
  auf ei -- nen Fel -- sen. Oooh __
  auf ei -- nen Fel -- sen. Oooh __
  auf ei -- nen Fel-
  Der

  Ei -- nes bi -- tte ich vom HERRN, __ das hä -- tte ich __ so __ gern: __ 
  dass ich im Hau -- se des HERRN blei -- ben kö -- nne
  mein Le -- ben lang, __ mein Le -- ben lang. __
}

%tekstDva = \lyricmode {

%}

%tekstTri = \lyricmode {

%}

akordi = \chordmode {
  \skip8
  e1 | a | h/e | a | e |
  a1 | h | h | e | a |
  h1/e | a | e | a2 h | e1 | e |
  cis1:m | a | e | h | cis:m | a | e | h |
  cis1:m | a | e | h | cis:m | a | e | h |
  cis1:m | a | e | h | cis:m | a | e | \set chordChanges = ##f h | h |
  \set chordChanges = ##t
  e1 | e | h | h | d | d | a |
  a1 | e | e | h | h | a | a |
  h1 | h |
}

\score {
  <<
    \new ChordNames { \jazzChords \akordi }
    \new Staff { \note }
    \addlyrics { \tekst }
    %\addlyrics { \tekstDva }
    %\addlyrics { \tekstTri }
  >>
  \layout {}
}

\score {
  <<
    \new ChordNames { \jazzChords \akordi }
    \new Staff { \note }
  >>
  \midi { \tempo 4 = 180 }
}

\markup {
  \vspace #1
  \smaller \italic Leadsheet: \hspace #2
  \huge {
    \rounded-box {
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \italic \teeny {intro [16]} }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) { 1 \teeny \italic theme } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) 2 \italic \teeny {verse} }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold {3 \teeny \italic {chorus}} }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) { 1 \teeny \italic theme } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 0) 2 \italic \teeny {verse} }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold {3 \teeny \italic {chorus}} }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) { 1 \teeny \italic theme } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 0) 4 \italic \teeny {bridge} }
    }
  }
}
\markup {
  \hspace #11.8
  \huge {
    \rounded-box {
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \teeny \italic {modulation:+1} }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85)  { 1 \teeny \italic theme } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85)  { 1 \teeny \italic theme } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \italic \teeny {outro [16]} }
    }
  }
}
%{
convert-ly (GNU LilyPond) 2.18.2  convert-ly: Processing `'...
Applying conversion: 2.17.97, 2.18.0
%}


%{
convert-ly (GNU LilyPond) 2.19.59  convert-ly: Processing `'...
Applying conversion: 2.19.2, 2.19.7, 2.19.11, 2.19.16, 2.19.22,
2.19.24, 2.19.28, 2.19.29, 2.19.32, 2.19.40, 2.19.46, 2.19.49
%}
