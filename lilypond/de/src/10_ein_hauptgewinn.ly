\version "2.19.49"

\header {
  title = "EIN HAUPTGEWINN"
  titlex = "Anker"
  composer = "Frank Bosch"
  style = "Psalm 139,14"
  broj = "10"
}

\include "s02_frbo.ily"
\include "de_footer.ily"

\paper {
  \aFourL
  score-markup-spacing.padding = #0
  %last-bottom-spacing.padding = #0
  system-system-spacing.padding = #2

}

note = \relative c' {
  \key e \major
  \time 2/2
  \partial 4
  e4 |
  \markMoj
  e4 e e cis8 e ~ |
  e2 r8 gis4. |
  fis4 fis fis e8 fis ~ |
  fis2 r4 r8 gis8 ~ |
  gis4 gis gis8 gis ~ gis fis ~ |
  fis4 fis4 r4 fis4 |
  e4 e4 e cis8 h ~ |
  h2 r4 r8 e8 ~ |
  e4 e e cis8 e ~ |
  e2 r8 gis4. |
  fis4 fis fis e8 fis ~ |
  fis2 r4 h,4 |
  gis'4 gis gis gis8 fis ~ |
  fis2 r2 |
  e4 e fis gis8 e ~ |
  e2 \breathemoj gis8 h ~ h4 |
  \markMoj
  h4 r4 cis4. e,8 ~ |
  e2 r8 gis4. |
  gis4 fis fis8 e fis4 ~ |
  fis2 gis8 h ~ h4 |
  h4 r4 cis4. e,8 ~ |
  e2 r8 gis4. |
  gis4 fis fis e8 fis ~ |
  fis2 r4 r8 \breathemoj e8 |
  \markMoj
  \bar ".|:"
  
  \repeat volta 2 {
    %\pageBreak
    h'4 h h h8 cis ~ |
    cis2 a8 gis4 fis8 ~ |
    fis4 fis8 h8 ~ h4 a8 a8 ~ |
    a4 gis r2 |
  }
  \alternative{
    {
      gis4 gis8 fis ~ fis4 gis |
      a4 a8 a ~ a4 gis4( |
      fis4) fis2. |
      r2 r4 h4 |
    }
    {
      gis4 gis8 fis ~ fis4 gis |
      a4 a8 gis ~ gis4 fis4( |
      e4) e2. |
      r1 |
      \bar "|."
    }
  }
}

tekst = \lyricmode {
  Ein Haupt -- ge -- winn bist du, __ ein Haupt -- ge -- winn auch ich. __
  Wir sind Go -- ttes Jack -- pot, wir sind sein gro -- ßes Los. __
  Er __ hat uns ge -- macht, __ voll Lie -- be aus -- ge -- dacht,
  so steht‘s in sei -- nem Wort, hey das ist fa -- mos! __

  \set stanza = "1."
  Des -- halb, schlag doch ein __ und stam -- pfe mit dem Fuß, __ "" ""
  schlag doch ein __ und lob mit mir den HERRN!
  
  Ich dank dir, Gott, da -- für, __ dass ich wun -- der -- bar ge -- macht bin.
  Wun -- der -- bar sind dei -- ne Wer -- ke, __ HERR!  
  Ich
  Wun -- der -- bar sind dei -- ne Wer -- ke, __ HERR!
}

tekstDva = \lyricmode {
  \repeat unfold 46 {\skip 8}
  \set stanza = "2."
  Des -- halb, schlag doch ein __ und schü -- ttle dei -- nen Kopf. __ "" ""
  Schlag doch ein __ und lob mit mir den HERRN!
}

tekstTri = \lyricmode {
  \repeat unfold 46 {\skip 8}
  \set stanza = "3."
  Streck die __ Hän -- de hoch und spring so hoch du kannst,
  Streck die __ Hän -- de hoch und lob mit mir den HERRN!
}

akordi = \chordmode {
  \skip 4
  e1 | e | fis:m | fis:m |
  gis1:m | fis:m | e | e | e | e |
  fis1:m | fis:m | gis:m | fis:m |
  e1 | e | gis:m | cis:m | a | h | gis:m |
  cis1:m | a | h |

  e1 | a | h | e |
  cis1:m | a | h | h |
  cis1:m | a2 h | e1 | e |
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
  \midi { \tempo 4 = 180 }
}

%intro E x4
%kitica bridge refren
%kitica bridge refren
%kitica bridge refren
%refren
%outro E x4

\markup {
  \vspace #0
  \smaller \italic Leadsheet: \hspace #2
  \huge {
    \rounded-box {
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \italic \teeny {intro [4]} }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 0) 1 \italic \teeny {verse} }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) 2 \teeny \italic {bridge 1.} }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 3 \teeny \italic chorus } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 0) 1 \italic \teeny {verse} }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) 2 \teeny \italic {bridge 2.} }      
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 3 \teeny \italic chorus } }			
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 0) 1 \italic \teeny {verse} }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) 2 \teeny \italic {bridge 3.} }
    }
  }
}
\markup {
  \hspace #11.8
  \huge {
    \rounded-box {
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 3 \teeny \italic chorus } \bold \italic \tiny x2}                        
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \teeny \italic {outro [4]} }
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
