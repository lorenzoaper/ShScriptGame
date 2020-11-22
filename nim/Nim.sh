#!/bin/bash

echo "********************* Un ptit nim ma biche ? *****************************"
echo "Et il s'appelle comment celui ci ?"
read name
echo ""
echo "T'aimes le jus de pomme $name ?"
echo ""

game_running=true
nbElmt=20

echo "Bon, tu as 20 cure dents que voici :"
echo "| | | | | | | | | | | | | | | | | | | |"
echo "Pour chaque tour tu choisis d'en enlever de 1 à 3, c'est comme voul voul !"
echo ""
echo "Essaye de gagner mon super ordinateur à ce jeu (on sait tous que c'est pas possible)"
echo ""
echo "Mais tu peux quand même essayer mon gâté !"

while [ $nbElmt -gt 0 ]
do
    # Tour du joueur
    echo "................................................."
    echo "..............C'est ton tour bg !................"
    echo "................................................."
    echo "Alors ça prend un, deux, ou trois ptit cure dents ?"
    read playerChoice
        if [ $playerChoice -lt 1 ] || [ $playerChoice -gt 3 ]
        then
            echo "J'ai dit un, deux ou trois t'as capté ?"
            echo ""
            read playerChoice
            let "nbElmt = nbElmt - playerChoice"
            echo ""
            echo "Il reste >> $nbElmt << cure dents !"
            echo ""
        elif [ $playerChoice -ge 1 ] || [ $playerChoice -le 3 ]
        then
            let "nbElmt = nbElmt - playerChoice"
            echo ""
            echo "Il reste >> $nbElmt << cure dents !"
            echo ""
        fi
    # Tour du super ordinateur
    echo "................................................................."
    echo "............C'est au tour de mon super ordinateur................"
    echo ".........Hésite pas à aller te raffraichir en attendant.........."
    echo ""
    let "aiChoice = 4 - playerChoice"
    echo "Mon super ordinateur en a pris >> $aiChoice <<"
    echo ""
    let "nbElmt = nbElmt - aiChoice"
    echo "Il reste >> $nbElmt << cure dents !"
    echo ""
    if [ $nbElmt -eq 0 ]
    then
        echo "*********************************************************"
        echo "************** J'te l'avais dit et toc ******************"
        echo "*********************************************************"
        game_running=falses
    fi
done
