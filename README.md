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
```json
{
   "first_name": "John",
   "last_name": "Smith the II",
   "age": "38",
   "department": "Software"
}
```


## Kontinuerlig integrasjon med GitHub Actions
 

## Gå til tjenestep App Runner 

## Connect med github 

## Lag en ny tjeneste 

## Sjekke at tjenesten er deployet. 

## Utvid applikasjonen 




