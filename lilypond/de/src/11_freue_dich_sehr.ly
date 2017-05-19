\version "2.19.49"

\header {
  title = "FREUE DICH SEHR"
  titlex = "Anker"
  composer = "Frank Bosch"
  style = "Sacharja 9,9"
  broj = "11"
}

\include "s02_frbo.ily"
\include "de_footer.ily"

\paper {
  \aFourL
}

note = \relative c'' {
  \key g \major
  \time 4/4
  \markMojPoc
  \once \override Score.RehearsalMark.X-offset = #6.5
  h2 h4 a8 a( ~ |
  a8 g ~ g2) g8 a |
  h2 c4 h8 a ~ |
  a4 r r r8 d,8 |
  h'2 ~ h8 a4 a8( |
  a8 g ~ g2) g8 a |
  h2 c4 h8 a ~ |
  a4 r4 r2 |
  h2 h8 h4. |
  a4 g fis e |
  e2( d ~ |
  d1) |
  h'2 h8 c4. |
  a4 g fis a |
  a4.( g8 ~ g2) |
  r2 \breathemoj h,4 c |
  \markMoj
  \once \override Score.RehearsalMark.X-offset = #6.3
  \repeat volta 2 {
    \once \override Score.NoteColumn.X-offset = #1
    d4. d8 ~ d2 |
    r4 g4 ~ g8 fis ~ fis4 |
    e4.( d8 ~ d2) |
    h2 h8 h4. |
    c2 r2 |
    r2 r4 c |
    c4 c8 c d4 e8 e ~ |
    e8 d ~ d2 h8 c |
    d4. d8 ~ d2 |
    r4 g2 fis4 |
    e2( d) |
    h1 |
    r2 h8 h4. |
    c2 r2 |
    r2 r4 c4 |
    c4 c8 c d4 e8 e ~ |
  }
  \alternative{
    {e8 d ~ d2. |}
    {\once \override LaissezVibrerTie.head-direction = #1
     e8\laissezVibrer d ~ d4 \breathemoj h h |}
  }
  \markMoj
  c4. e8 ~ e4 e |
  d4. fis8 ~ fis4 fis |
  g4( fis) e d |
  h2. h4 |
  a2 a4 a8 d ~ |
  d2 d4 c8 c ~ |
  c8 h ~ h2. |
  r2 r4 h4 |
  c2 r4 e4 |
  d4. fis8 ~ fis4 fis |
  g4( fis) e d |
  h4 r4 r4 h |
  a4. h8 ~ h4 c |
  d4. e8 ~ e4 fis |
  fis4. e8 ~ e2 |
  r1 |
  \bar "|."
}

tekst = \lyricmode {
  Freu -- e dich sehr, __ na na na na na na, __
  und ja -- uch -- ze, __ na na na na na na! __
  Sie -- he, dein Kö -- nig kommt zu dir, __ 
  Sie -- he, dein Kö -- nig kommt zu dir. __ 

  Ein Ge -- rech -- ter __ und ein __ Hel -- fer, er ist arm 
  und rei -- tet auf ei -- nem E -- sel. __
  Ein Ge -- re -- chter und ein Hel -- fer, er ist arm 
  und rei -- tet auf ei -- nem E -- sel. __
  E -- sel.

  Die -- ser Kö -- nig ist Je -- sus, der Re -- tter der Welt,
  aus Lie -- be zu uns __ arm ge -- wor -- den,
  im Stall ge -- bo -- ren, ge -- stor -- ben am Kreuz.
  Em -- pfan -- gen wir ihn voll Ver -- trau -- en. 
}

%tekstDva = \lyricmode {

%}

%tekstTri = \lyricmode {

%}

akordi = \chordmode {
  g1 | c | g | d | g |
  c1 | g | d | e:m | d | c |
  d1 | e:m | d | g | g | \set chordChanges = ##f \once \override Score.ChordName.X-offset = #1 g |
  \set chordChanges = ##t
  g1 | c2 d | g1 | a:m | a:m | a:m |
  d1 | g | g | c2 d | g1 | g |
  a1:m | a:m | a:m | d1 | \set chordChanges = ##f d |
  \set chordChanges = ##t
  c1 | d | e:m | h:m | a:m | d |
  g1:maj7 | g | c | d | e:m | h:m |
  a1:m | d | e:m | e:m |
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
  \vspace #1.5
  \smaller \italic Leadsheet: \hspace #2
  \huge {
    \rounded-box {
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \italic \teeny {intro [16]} }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 0) \bold { 1 \italic \teeny {chorus} } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) 2 \teeny \italic {verse} }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 1 \teeny \italic chorus } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 0) 2 \italic \teeny {verse} }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 1 \teeny \italic chorus } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) 3 \teeny \italic {bridge} }      
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 1 \teeny \italic chorus } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 1 \teeny \italic {chorus +1}} }
    }
  }
}
\markup {
  \hspace #11.8
  \huge {
    \rounded-box {
            \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 1 \teeny \italic :12-16 } }
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
