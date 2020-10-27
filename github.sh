#!/bin/bash
git status
echo
echo "S'inclourà en el commit tots els docuements verds de la llista."
echo "Voleu seguir? (s/n)"
read resposta
echo
if [ $resposta == n ];
then
        echo "Hauràs de realitzar les comandes manualment!"
else
        git add .
        git status
        git commit -m "$1"
        git push
fi


