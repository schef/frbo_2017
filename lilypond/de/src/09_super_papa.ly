\version "2.19.49"

\include "s02_frbo.ily"

\header {
  title = "SUPER PAPA"
  titlex = "Anker"
  composer = "Frank Bosch"
  style = "Römer 8,15"
  broj = "9"
  tagline = \markup { \override #'(font-name . "JohnSans White Pro") \override #'(font-size . -3) { Text und Musik: Frank Bosch | Rimljanima 8,15 } }
}

\include "de_footer.ily"

\paper {
  \aFourL
}

note = \relative c'' {
  \key g \major
  \time 4/4
  
  %one
  \markMojPoc
  \once \override Score.RehearsalMark.X-offset = #6.4
  \once \override Score.RehearsalMark.Y-offset = #0
  r8 g g g fis e d c |
  h8. e16 ~ e8 d ~ d2 |
  r8 g g g fis16 e8. d8 e16 e ~ |
  e2. r4 |
  r8 g g a16 fis ~ fis8 e d c |
  h8. e16 ~ e8 d ~ d2 |
  r8 c8 c d16 e ~ e8 fis g a |
  a2. r4 |
  
  
  %two
  \markMoj
  \bar ".|:"
  d,4 g fis8 g a fis |
  r8 h h c16 a ~ a8 g fis e |
  d4 g4 fis8 g a fis |
  r8 h h4 r8 a a4 |
  
  %three
  \markMoj
  \bar ":|.|:"
  d,4 g fis8 g a fis |
  r8 h4 h8 r8 a a4 |
  e4 g fis8 g a fis |
  r8 h h4 r8 a a4 |
  \bar ":|."
  g1 |
  \bar "|."
}

tekst = \lyricmode {
  \set stanza = "1."
  Der bes -- te Va -- ter, den es je -- mals gab, 
  der be -- ste Pa -- pa auf der Welt, __ 
  der merkt es gleich, wenn ich mal trau -- rig bin __
  und er weiß auch, was mir ge -- fällt.

  Su -- per, su -- per Pa -- pa, im Hi -- mmel und auf Er -- den
  gibt es kein -- en be -- ssern, su -- per Pa -- pa!
  
  Na, na, na, na, na, na,
  Su -- per Pa -- pa!
  Na, na, na, na, na, na,
  Su -- per Pa -- pa!
  
  Yeah.
}

tekstDva = \lyricmode {
  \set stanza = "2."
  Der bes -- te Va -- ter, den es je -- mals gab, 
  der sorgt für sei -- ne Kin -- der gut. __
  Auch wenn sie durch so man -- che Kri -- se geh'n,
  gibt er doch i -- mmer neu -- en Mut.
  
    Gott, mein su -- per Pa -- pa, liebt uns so un -- aus -- sprech -- lich
  und bleibt i -- mmer bei uns, su -- per Pa -- pa!
}

tekstTri = \lyricmode {
  \set stanza = "3."
  Der bes -- te Va -- ter, den es je -- mals gab, 
  er schuf die Welt und o -- bend -- rein __
  auch a -- lle Men -- schen, so -- gar dich und mich.
  Ja, ich bin stolz, sein Kind zu sein.
}

tekstCetiri = \lyricmode {
  \set stanza = "4."
  Ich fand den bes -- ten Pa -- pa, den es __ gibt,
  und das ist wirk -- lich gar nicht schwer. __
  Komm, sprich mit ihm, __ er ist ganz nah bei dir, __
  Und er mag dei -- ne Sti -- mme sehr.
}

akordi = \chordmode {
  g2 d | e:m d | g d | e:m d |
  g d | e:m d | c1 | d |
  g2 d | e:m d | g d | e:m d |
  g2 d | e:m d | g d | e:m d |
  g1 |
}

\score {
  <<
    \new ChordNames { \jazzChords \akordi }
    \new Staff { \note }
    \addlyrics { \tekst }
    \addlyrics { \tekstDva }
    \addlyrics { \tekstTri }
    \addlyrics { \tekstCetiri }
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
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \italic \teeny { intro [5] } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) 1 \italic \teeny { verse } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) 1 \italic \teeny { verse } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 2 \teeny \italic { chorus }}}
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) 1 \italic \teeny { verse } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 2 \teeny \italic { chorus } } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) 1 \italic \teeny { verse } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 2 \teeny \italic { chorus } } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) { 3 \teeny \italic { ending } } }
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
