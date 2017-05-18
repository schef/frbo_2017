\language "deutsch"

\header {
  title = "PUN POGODAK"
  titlex = "Na putu"
  composer = "Frank Bosch"
  style = "Psalam 139,14"
  broj = "11"
}

note = \relative c' {
  \key e \major
  \time 2/2
  \partial 4
  e4 |
  e4 e e cis8 e ~ |
  e2 r4 e4 |
  fis4 fis fis e8 fis ~ |
  fis2 r2 |
  gis4 gis gis gis |
  fis4 fis8 gis ~ gis fis8 ~ fis4 |
  e1 |
  r1 |
  e4 e e cis8 e ~ |
  e2 r2 |
  fis4 fis fis e8 fis ~ |
  fis2 r4 fis4 |
  gis4 gis gis gis |
  fis4 fis8 gis ~ gis4 fis4 |
  e4 e8 fis ~ fis4 gis8 e ~ | \break
  e2
  
  gis4  h4 |
  h4 r4 cis4. e,8 ~ |
  e2 r4 gis4\( |
  gis4\) fis fis e8 fis ~ |
  fis2 gis8 h ~ h4  |
  h4 r4 cis4. e,8 ~ |
  e2 r4 gis4 |
  gis4 fis fis e8 fis ~ |
  fis2 r2 |
  
  \repeat volta 2 {
    %\pageBreak
    gis4 h h h8 cis ~ |
    cis2 a8 gis4 fis8 ~ |
    fis4 fis h8 a4 a8 ~ |
    a4 gis gis2 |
  }
  \alternative{
    {
      gis4 gis fis gis |
      a4 a a gis8( fis ~ |
      fis4) fis2. |
      r1 |
    }
    {
      gis4 gis fis gis |
      a4 a gis fis8( e ~ |
      e4) e2. |
      r1 |
      \bar "|."
    }
  }
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
    \new ChordNames { \akordi }
    \new Staff { \note }
    \new Staff { s4 \repeat unfold 36 S1}
  >>
  \layout {}
}

%intro E x4
%kitica bridge refren
%kitica bridge refren
%kitica bridge refren
%refren
%outro E x4

\markup {
  \vspace #3
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
