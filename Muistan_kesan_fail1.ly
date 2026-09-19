\version "2.22.0"

\header {
  title = "Muistan kesän"
  composer = "Rauno Lehtinen"
}

melodia = \relative c' {
  \clef treble
  \key f \major
  \time 4/4
  \tempo "Moderato"

  % Alku / Säkeistöjen alku
  f4. g8 a4 f | d2 f4 d | c4. d8 f4 g | a1 | \break
  f4. g8 a4 f | g4. a8 c4 d | c4. a8 g4 f | g1 | \break
  
  % C-osa / "Tie jonka löytää..."
  a4. a8 c4 a | g2 f4 g | a4. a8 c4 a | g1 | \break
  
  % Kertauksen loppu tai paluu teemaan
  f4. g8 a4 f | d2 f4 d | c4. d8 f4 g | a1 | \break
  f4. g8 a4 f | g4. a8 c4 d | c4. a8 g4 f | f1 \bar "|."
}

soinnut = \chordmode {
  f2 d:m | b f | f d:m | g:m c:7 |
  f2 d:m | g:m c:7 | f c | f1 |
  f2 a:m | g:m c:7 | f a:m | g:m c:7 |
  f2 d:m | b f | f d:m | g:m c:7 |
  f2 d:m | g:m c:7 | f c | f1 |
}

sakeistoYksi = \lyricmode {
  Ke -- sä jon -- ka ker -- ran e -- lää saan,
  mie -- les -- tä ei haih -- du mil -- loin -- kaan.
  Tuo läm -- mön u -- nel -- miin
  ja päi -- viin syk -- syi -- siin.
  Vain tun -- ne voi liit -- tää tien ih -- mi -- sien.
  
  Tie, jon -- ka löy -- tää vain, kun ra -- kas -- taa.
  Tie, jon -- ka hiek -- ka on niin polt -- ta -- vaa.
  
  Ke -- sä jon -- ka ker -- ran e -- lää saan,
  mie -- les -- tä ei haih -- du mil -- loin -- kaan.
  Tuo läm -- mön u -- nel -- miin
  ja päi -- viin syk -- syi -- siin.
  Vain tun -- ne voi liit -- tää tien ih -- mi -- sien.
}

sakeistoKaksi = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  Sain sul -- ta au -- rin -- gon
  ja kul -- lan kuu -- ta -- mon.
  Vain kat -- se -- si riit -- tää, sen läm -- pö -- kin vain.
  
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  
  Ke -- sä jon -- ka ker -- ran ka -- do -- tin,
  vie jäl -- leen mun sin -- ne luok -- ses sun,
  vie -- lä uu -- des -- taan,
  kun sa -- pii syk -- sy -- sää.
  Vain kat -- se -- si riit -- tää, sen läm -- pö -- kin vain.
}

\score {
  <<
    \new ChordNames { \soinnut }
    \new Staff { \melodia }
    \addlyrics { \sakeistoYksi }
    \addlyrics { \sakeistoKaksi }
  >>
  \layout { }
  \midi { }
}