investointi = 6000
kanta = 0.03
kerroin = 1+kanta
saastot = [1500,1500,1500,1000,1000]
jaannosarvo = 0.05*investointi
nykyarvo = 0

sum = 0

acc = (x) ->
  sum = sum + x

disko = (arvo, aika, k = kerroin) ->
  arvo/Math.pow(k, aika)

(sum = sum + disko(s, i+1)) for s,i in saastot

nykyarvo = sum + disko(jaannosarvo, saastot.length)

console.log(nykyarvo)
