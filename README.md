# Kontinuerlig integrasjon og deployment med AWS Apprunner pg GitHub actions

I denne oppgaven får dere en introduksjon til tjenesten AWS Apprunner og skal få trene på kontinuerlig integrasjon og deployment.
Istedet for Travis-ci.com skal vi bruke GitHub actions for å kontrollere kode


## Før du begynner

- Du trenger NPM installer på din maskin
- Windows <https://nodejs.org/en/download/>
- OSX   ```brew install node```

## Leg et nytt repository

Med din egen GitHub bruker, lag et nytt repository. Leg en klone av dette repositoryet, og kopier filene. Du trenger bare filene in "source" katalogen. 

## Test applikasjonen

I dette repositoryet er det en liten Javascript/Node applikasjon som ikke gjør noe annet enn å returnere et enkelt 
JSON objekt i HTTP Response. 

Gå til katalogen med kildekode og skriv  ````npm start````
Deretter kan du teste applikasjonen på <http://localhost:8000/>
I nettleseren din skal du se en respons 

Hvis du ser i ````payload.js```` og ```payload.test.js``` vil du se at det finnes en veldig enkel unit test basert 
på rammeverket "jest" som sjekker at payload funksjonen fungerer som den skal. Forsøk gjerne å brekke testen og 
kjør deretter

```
npm test
```


## Kontinuerlig integrasjon med GitHub Actions

- I ditt repository lag en katalog som heter .github/workflows.
- Lag en fil med følgende innhold, og kall den npm.yml

```yaml
name: NPM

on: [push]

jobs:
  build:
    runs-on: ubuntu-latest
    strategy:
      matrix:
        node-version: [12.x, 14.x]
    steps:
    - uses: actions/checkout@v2
    - name: Build on Node.js ${{ matrix.node-version }}
      uses: actions/setup-node@v1
      with:
        node-version: ${{ matrix.node-version }}
    - run: npm ci --ignore-scripts
    - run: npm test 
```

Dette er et eksempel på hvordan man konfigurer en veldig enkel sjekk for et Javascriptprosjekt ved hjelp av GitHub Actions.
Vi skal senere se på bygg & deployment av Java/Spring Boot applikasjoner på samme måte.
  

## Gå til tjenestep App Runner 

- Logg på AWS miljøet ved hjelp av instruksjoner gitt i klasserommet eller på Canvas
- Gå til tjenesten "AWS App runner". Pass på at du har "irland" valgt som region. 
- Velg "Create Service"

<img title="a title" alt="Alt text" src="img/1.png">




## Connect med github 

## Lag en ny tjeneste 

## Sjekke at tjenesten er deployet. 

## Utvid applikasjonen 




