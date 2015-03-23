vastaukset = {}

sKanta = (r,k,t) -> r/k/t

sKorko = (k,i,t) -> k*i*t

sAika = (r,k,i) -> r/k/i

sTalletus = (r,i,t) -> r/i/t

# Ronja talletti 314 euroa tammikuun alussa tililleen. Hän nosti rahat kesäkuun lopussa,
# jolloin korkoa oli kertynyt 1,70 euroa. Mikä oli tilin korkokanta? Entä nettokorkokanta?

vastaukset.t1 = sKanta(3.3,1000,4/12)
vastaukset.t2 = sTalletus(1.95,0.013, 9/12)
vastaukset.t3 = sAika(50,500,0.15)
vastaukset.t4 = sKanta(1.7,314,0.5)/0.7

#Saat yllättäen 75 000 euroa ja talletat koko summan 3.7.2014 pankkitilille, jonka korkokanta on 2{,}8 \%.
#Nostat rahat tililtä 19.11.2014. Kuinka paljon saat nettokorkoa?

paivat = 31-3 + 31 + 30 + 31 + 19
vastaukset.t5 = sKorko(75000,0.028,paivat/360)*0.7

class YksinkertainenKorko
  constructor: (@r,@k,@i,@t) ->
  korko : ()-> @k*@i*@t
  kanta:() -> @r/@k/@t
  aika : () -> @r/@k/@i
  talletus : () -> @r/@i/@t

perustehtava = new YksinkertainenKorko(3.33,1000,0,4/12)
perustehtava.tex = "Mikä tilin korkokannan tulisi olla, jotta sinne talletettu 1000 euroa kasvaisi neljässä kuukaudessa korkoa 3,33 euroa?"
perustehtava.vastaus = perustehtava.kanta()

anjanTalletus = new YksinkertainenKorko(1071.80,-1,1+0.3*0.015,1)
anjanTalletus.tex = "Anja nosti talletuksensa vuoden kuluttua talletushetkestä. Hän sai pankista verojen vähentämisen jälkeen 1071,80 euroa.
 Kuinka suuren summa hän oli tililleen tallettanut, kun tilin korkokanta oli 1,15~\% ja lähdevero 30~\%."
anjanTalletus.vastaus = anjanTalletus.talletus()

pitkaLomareissu = new YksinkertainenKorko()
###
  Kaverisi säästää rahaa pitkää lomareissua varten tallettamalla joka kuukauden alussa yhtä suuren summan rahaa tililleen.
  Kaverisi aloittaa säästämisen tammikuun alussa ja haluaa nostaa rahat vuoden kuluttua.
  Kuinka paljon rahaa hänen tulisi tallettaa tililleen kuukausittain, jotta vuoden kuluttua nostettavissa olisi 1 200 euroa?
  Tilin vuosikorko on 2{,}85 \%. Muista lähdevero 30 \%.

  Olkoon k kuukausittainen summa. Nyt r = kit = k * 0,70 * 0,0185 * 78/12 ja 12k + r = k(12 + 0,70 * 0,0185 * 78/12) = 1200
###

sTalletuskk = (K, i ,t) ->
  K/(12+i*t)

time4one = (kk) ->
  t = 0
  (t = t+i) for i in [1..12]
  return t/kk

vastaukset.t6 = sTalletuskk(1200, 0.7*0.025, time4one(12))


#Sijoitat 500 euroa sijoitusvakuutukseen, joka lupaa vähintään 3{,}0 \% vuotuisen koron sijoitukselle.
#Neljän vuoden kuluttua sijoituksen arvo oli kasvanut 60 euroa. Toteutuiko sijoitusvakuutuksen lupaama vuosikorko?

lupaus = 500 * Math.pow(0.03,5)
vastaukset.t7 = switch 60 >= lupaus
  when true then 'Kyllä'
  else 'Ei'

class Koronkorko

class T8 extends Koronkorko
  tehtava = "Sijoitat 500 euroa sijoitusvakuutukseen, joka lupaa vähintään 3{,}0 \% vuotuisen koron sijoitukselle.
  Neljän vuoden kuluttua sijoituksen arvo oli kasvanut 60 euroa. Toteutuiko sijoitusvakuutuksen lupaama vuosikorko?"
  k = 500
  q = 0.03
  n = 4
  K = k*Math.pow(q,n)
  vastaus: -> switch K >= 60
    when true then "Toteutui"
    else "Ei toteutunut"

class T9 extends Koronkorko
  tehtava = "Viivi tallettaa saamansa 1800 euron palkan tilille, jonka korkokanta 2,1 \%. Kuinka suuren summan Viivi voi nostaa tililtä
  viiden vuoden kuluttua? Muista lähdevero."
  k = 1800
  q = 1.021
  n = 5
  vastaus: -> k*Math.pow(q,n)

class T10 extends Koronkorko
  tehtava = "Mikä tulisi Viivin tilin korkokannan olla, jotta tililtä olisi nostettavissa 2000 euroa kolmen vuoden kuluttua talletuksesta?"
  k = 1800
  n = 3
  K = 2000
  vastaus: -> Math.pow(K/1800, 1/n)

class T11 extends Koronkorko
  tehtava = "Kaukainen sukulainen pyytää sinua avaamaan tilin, jotta hän voi jokaisen vuoden lopussa lahjoittaa sinulle tietyn
  summan rahaa tallettamalla sen tälle tilille. Tilillä ei ole näiden vuosittaisten talletusten ja koronmaksun lisäksi muita tilitapahtumia.
  Ensimmäisen talletuksen sukulaisesi tekee vuoden 2014 lopussa. Viiden vuoden kuluttua vuoden 2020 alussa tilillä on rahaa 4 342{,}15 euroa.
  Kuinka suuri on vuotuinen talletus, jos tilin korko on 1{,}9 \% p.a? Huomioi lähdevero."
  q = 1 + 0.7*0.019
  K = 4342.15
  n = 5
  vastaus: -> K/q*(1-q)/(1-Math.pow(q,n))

class T12 extends Koronkorko
  tehtava = "Uuden vuoden lupauksena aloitat säästämisen ja talletat tammikuun lopusta alkaen joka toisen kuukauden lopussa 300 euroa tilille,
  jonka korkokanta on 2{,}1 \% p.a. Kuinka paljon rahaa tililläsi on neljännen talletusvuoden lopussa koronmaksun jälkeen? Huomioi lähdevero."
  i = 0.7*0.021
  q = 1 + i
  k = 300
  n = 4
  #Aika yhtä talletusta kohti
  t = 12+10+8+6+4+2
  #Vuosikorko
  r = k*i*t/12
  #Vuosisumma
  vs = 6*k + r
  #Loppusumma
  K = 0
  (K = K + vs*Math.pow(q,i)) for i in [0...n]
  vastaus: -> K

class T13 extends Koronkorko
  tehtava = "Josefiina tallettaa tililleen summan, jonka toivoo kasvavan 5000 euroksi kymmenessä vuodessa.
  \begin{enumerate}[(a)]
      \item Selvitä diskonttaustekijä, kun nettokorkokanta on 1,57~\%.
      \item Kuinka suuri summa Josefiinan tulee tililleen tallettaa?
  \end{enumerate}"
  q = 1.0157
  K = 5000
  n = 10
  vastaus: -> K/Math.pow(q,n)

class T14 extends Koronkorko
  tehtava = "Kauppias tarjoaa auton maksamiseen seuraavaa rahoitusmallia: käsiraha 8~000~\euro \ on maksettava heti ja tämän
  jälkeen kahtena seuraavana vuonna maksetaan 5 000~\euro. Kolmen vuoden kuluttua maksetaan vielä 2 000~\euro.
  Jos asiakas kuitenkin haluaa maksaa auton käteisellä heti ostohetkellä, mikä auton hinnan pitäisi olla, että asiakas
  maksaisi siitä yhtä paljon kuin kauppiaan ehdottamassa rahoitusmallissa? Oletetaan, että kauppiaan käyttämä
  korkokanta on 7{,}5 \%."
  q = 1.0075
  erat = [8000, 5000, 5000, 2000]
  disko = (k,q,n) -> k/Math.pow(q,n)
  nykyarvo = 0
  (nykyarvo = nykyarvo + disko(k,q,n)) for k,n in erat
  vastaus:->nykyarvo

class T15
  tehtava = "Kuinka paljon lukion stipendirahastoon on lahjoitettava rahaa eurona, kun tarkoituksena on jakaa lahjoitus korkoineen
  stipendeinä seuraavasti: tasan vuoden kuluttua lahjoituksesta 200 euroa, kahden vuoden kuluttua 300 euroa,
  kolmen vuoden 400 euroa, neljän 500 euroa ja viiden vuoden kuluttua 600 euroa. Pääomaan lisätään vuosittain 4,5 prosentin korko,
  ensimmäisen kerran vuoden kuluttua lahjoituksesta. [S2001, 14]"
  q = 1.045
  erat = [200, 300, 400, 500, 600]
  disko = (k,q,n) -> k/Math.pow(q,n)
  nykyarvo = 0
  (nykyarvo = nykyarvo + disko(k,q,n+1)) for k,n in erat
  vastaus:->nykyarvo

class T16
  tehtava = "Ostat kalliin vekottimen, josta maksat kaupantekohetkellä 400 euron käsirahan ja kuukauden kuluttua 800
  euroa korkokannan ollessa 6{,}6 \% p.a. Kaverisi osti samanlaisen vekottimen, maksoi ostohetkellä 300 euroa ja neljän
  kuukauden kuluttua loput. Kuinka paljon kaverisi maksoi toisessa maksuerässä, jos vekottimenne olivat yhtä kalliit?"
  ###
  400 + 800/(1+0.066/12) = 300 + x/(1+0.066/12*4)
###
  i = 0.066
  omaq = 1 + i/12
  omaNykyarvo = 400 + 800/Math.pow(omaq,1)
  kaveriq = 1 + i*4/12
  kysytty = (omaNykyarvo - 300)*Math.pow(kaveriq,1)
  vastaus:->kysytty

  tarkistus:-> 400 + 800/omaq - (300 + kysytty/kaveriq)
console.log new T15().vastaus()
class T17
  tehtava = "Tuttavasi on myymässä asuntoaan ja saa kaksi ostotarjousta. Ensimmäisessä tarjouksessa luvataan maksaa heti 145 000 euroa.
  Toisessa tarjouksessa luvataan maksaa heti 64 000 euroa, vuoden kuluttua 54 000 euroa ja kahden vuoden kuluttua 30 000 euroa.
  Kumpi tarjous on tuttavasi kannalta parempi, jos korkokanta on 4 \%? Entä, jos korkokanta on 1~\%?"

  i1 = 0.04
  i2 = 0.01
  erat = [64000, 54000,30000]

  nykyarvo1 = 0

  disko = (k,q,n) -> k/Math.pow(q,n)
  nykyarvo2 = 0
  (nykyarvo1 = nykyarvo1 + disko(e,1+i1,i)) for e,i in erat
  (nykyarvo2 = nykyarvo2 + disko(e,1+i2,i)) for e,i in erat
  vastaus:
    a : switch nykyarvo1 > 145000
      when true then 'Ensimmäinen'
      else 'Jälkimmäinen'
    b : switch nykyarvo2 > 145000
      when true then 'Ensimmäinen'
      else 'Jälkimmäinen'

class Diskonttaustehtava
  constructor: (@erat,@i) ->
  disko: (k,q,n) -> k/Math.pow(q,n)
  laskeErienNykyarvo: (nykyarvo = 0) ->
    (nykyarvo = nykyarvo + this.disko(e, 1+@i, j)) for e,j in @erat
    return nykyarvo
  vastaus = ''


tuotantoharveli = new Diskonttaustehtava([7000, 5000, 3500], 0.045)

tuotantoharveli.tex = "Yritys on hankkimassa uuden tuotantohärvelin. Kauppias tarjoaa kaksi maksuvaihtoehtoa:
koko kauppahinta 15 000 euroa kaupanteon yhteydessä tai 7 000 euroa kaupanteon yhteydessä,
5 000 euroa vuoden kuluttua ja 3 500 euroa kahden vuoden kuluttua. Jos yritys maksaa investoinin lainalla,
jonka vuotuinen korkokanta on 4{,}5 \%, kumpi maksuvaihtoehto sen kannattaa valita?"

tuotantoharveli.vastaus = switch tuotantoharveli.laskeErienNykyarvo() <= 15000
  when true then 'Toinen vaihtoehto'
  else 'Ensimmäinen vaihtoehto'

tehtavat = [
  anjanTalletus,
  tuotantoharveli
]

console.log(t.vastaus) for t in tehtavat
