\version "2.22.0"

\header {
  title = "Muistan kesän"
  composer = "Rauno Lehtinen"
}

melodia = \relative c'' {
  \clef treble
  \key es \major
  \time 4/4
  \tempo "Moderato"

  % Alku / Säkeistöjen alku
  g8 bes8 bes8 c8 bes4. as8 | g8 f8 es2. | c8 f8 f8 g8 f4. es8 | d8 c8 bes2. | \break
  r4 g4' bes4 as4 | g8 f8 es2. | r4 c4 f4 es4 | d8 c8 bes2.| \break
  
  % C-osa / "Vain tunne voi liittää..."
  r4 es4 es4 d8 es8 | c4' bes2. | r4 es4, es4 d8 es8 | as1 | \break

  
  % Kertauksen loppu tai paluu teemaan
  g8 bes8 bes8 c8 bes4. as8 | g8 f8 es2 es4| as4. g8~ g4 f4| as8 g4 f4 g8 f4 |  \break
  es2 d2 | es2 f2 | es1 | r1 | r1 | r1 | \break
  
  es2. d8 es8 | c4' bes4 bes4 as4 | as8  g4 g8~ g2 | es2~ es8 c4 es8 | \break
  c4' bes8 bes4. as4 | ges4  as8 bes8~ bes2~ | bes2. r4 | r1 | r1 | 

   \bar "|."
}

soinnut = \chordmode {
  es2 bes2 | c:m c:m7 | as1 | bes:7 |
  es2 bes2 | c:m c:m7 | as1 | bes:7 |
  es1 | es:7 | as | as:m |
  es2 bes2 | c:m c:m7 | f4.:m7 g4.:m7 as4:6 | f8:m7 g4:m7 as4.:6 r4 | f2:m7 b2:7 
  f2:m7 b2:m7 | es2 es2:7 | as2 as2:m | es1 | es:maj7 | 
  as | bes:7 | bes | as | bes:7 | ges | bes2.:7 es:maj7 | f4.:m7 g4.:m7 as4:6 |
}

sakeistoYksi = \lyricmode {
  Ke -- sä, jon -- ka ker -- ran e -- lää saan,
  mie -- les -- tä ei haih -- du mil -- loin -- kaan.
  Tuo läm -- mön u -- nel -- miin
  ja päi -- viin syk -- syi -- siin.
  Vain tun -- ne voi liit -- tää tien ih -- mi -- si -- en.
  
  Ke -- sä, jon -- ka ker -- ran ka -- do -- tin,
  vie jäl -- leen -- mun sin -- ne luok -- ses sun vie -- lä uu -- des -- taan.
  
  Tie, jon -- ka löy -- tää vain, kun ra -- kas -- taa.
  Tie, jon -- ka hiek -- ka on niin polt -- ta -- vaa.
  
  
  mie -- les -- tä ei haih -- du mil -- loin -- kaan.
  Tuo läm -- mön u -- nel -- miin
  ja päi -- viin syk -- syi -- siin.
  Vain tun -- ne voi liit -- tää tien ih -- mi -- sien.
}

sakeistoKaksi = \lyricmode {
  _ _ _ _ _ _ _ _ _ 
  _ _ _ _ _ _ _ _ _ 
  Sain sul -- ta au -- rin -- gon
  ja kul -- lan kuu -- ta -- mon.
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