\version "2.19.49"

\include "s02_frbo.ily"

\header {
  title = "DENNOCH BLEIBE ICH STETS AN DIR"
  titlex = "Anker"
  composer = "Frank Bosch"
  style = "Psalm 73,23–26"
  broj = "5"
  tagline = \markup { \override #'(font-name . "JohnSans White Pro") \override #'(font-size . -3) { Text und Musik: Frank Bosch | Psalam 73,23–26 } }
}

\include "de_footer.ily"

\paper {
  \aFourL
  %annotate-spacing = ##t
  page-breaking-system-system-spacing.padding = #0
}

note = \relative c' {
  \key e \major
  \time 4/4

  \markMojPoc
  \once \override Score.RehearsalMark.X-offset = 9.5
  h4 e2 fis4 ~ |
  fis4 e4 fis gis ~ |
  \phrasingSlurDashed
  gis4 gis4\( gis\) a4 ~ |
  a4\( a\) gis4 fis |
  e2 e4 fis |
  e4\( dis\) cis his |
  \phrasingSlurSolid
  cis1 |
  r2 r4 h4 |
  h4 e2 fis4 ~ |
  fis4 e4( fis) gis ~ |
  \phrasingSlurDashed
  gis4 gis2 a4\( |
  a2\) gis4( fis) |
  e2 e4 fis |
  e4( dis) cis\( his\) |
  cis2\( e |
  fis1\) |
  \phrasingSlurSolid
  r1 |
  r2 \breathemoj gis8 a4. |
  
  \markMoj
  h2 e, |
  h'4( a) gis gis ~ |
  gis4 fis2. |
  r2 r4 r8 h,8 |
  gis'4 gis gis gis ~ |
  gis4 a h h ~ |
  h4 a gis fis ~ |
  fis2 gis8 a4. |
  h2 e, |
  h'4( a) gis gis ~ |
  gis4 fis2. |
  r2 r4 r8 h,8 |
  gis'4 gis2 gis4 ~ |
  gis4 e2 a4 ~ |
  a4 gis fis e( ~ |
  e4 fis) dis e ~ |
  e1 |
  r1 |
  
  \markMoj
  \key g \major
  g1 |
  r2 g8 h4. |
  h4 a a g8 a\( |
  a2\) e4 fis |
  g4 g2 g4 |
  c4 h a a ~ |
  a4 g2. |
  r2 g8 a4. |
  h2 h4 h8 h ~ |
  h4. a8 ~ a g4 a8 ~ |
  a1 |
  r2 e8 fis4. |
  g4 g2 g4 |
  c4 h a a ~ |
  a1 |
  r1 |
  \bar "|."
}

tekst = \lyricmode {
  \set stanza = "1."
  Den -- noch blei -- be ich stets __ an __ _ Dir; __ _ 
  denn Du hältst mich bei mei -- ner rech -- ten Hand,
  Du lei -- test mich nach Dei -- nem Rat __ _ 
  und nimmst mich am En -- de mit Eh -- ren an. 

  Wenn ich nur Dich mein Gott ha --  be, 
  be -- deu -- ten mir Him -- mel und Er -- de doch nichts. 
  Wenn ich nur Dich mein Gott ha -- be, 
  be -- deu -- ten mir auch Him -- mel und Er -- de nichts.

  Herr wo -- hin sol -- len wir denn ge -- hen?
  Du hast Wor -- te des e -- wi -- gen Le -- bens, 
  und wir ha -- ben ge -- glaubt und er -- kannt 
  Du bist Chris -- tus der Ret -- ter der Welt __
}

tekstDva = \lyricmode {
  \set stanza = "2."
  Selbst wenn all mei -- ne Krä -- fte ver -- schwin -- den, 
  _ so bist Du doch, Gott, _ a -- lle -- zeit, 
  _ mei -- nes Her -- zens Trost und mein Teil,
  von jetzt bis in E -- _ wig -- keit. __ _ _
  
  Wenn ich nur Dich Je -- sus ha --  be, 
  be -- deu -- ten mir Him -- mel und Er -- de doch nichts. 
  Wenn ich nur Dich Je -- sus ha -- be, 
  be -- deu -- ten mir auch Him -- mel und Er -- de nichts.
}

%tekstTri = \lyricmode {

%}

akordi = \chordmode {
  e1 | a/dis | cis:m | a | e | h2 gis/c | cis1:m | h1 |
  e1 | a/dis | cis:m | a | e | h2 gis/c | cis1:m | h1 | h | h |
  e1 | a | h:sus4 | h | e/gis | a |
  h1:sus4 | h | e | a | h:sus4 | h | gis:m |
  cis1:m | a | h | e | e | g | g | d/fis |
  d/fis | e:m | e:m | c | d | g | g |
  d1/fis | d/fis | e:m | c | d | \parenthesize h:7 |
  

}

\score {
  <<
    \new ChordNames { \semiGermanChords \jazzChords \akordi }
    \new Staff { \note }
    \addlyrics { \tekst }
    \addlyrics { \tekstDva }
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
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \italic \teeny {intro [8]} }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 0) 1 \italic \teeny {verse} }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 2 \teeny \italic chorus } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 0) 1 \italic \teeny {verse} }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 2 \teeny \italic chorus } }			
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 0) 3 \italic \teeny {bridge} }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 2 \teeny \italic {chorus +1/2} } }			
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 2 \teeny \italic chorus } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 2 \teeny \italic :12 } }
    }
  }
}
\markup {
  \hspace #11.8
  \huge {
    \rounded-box {
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \italic \teeny {outro [8]} }
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
