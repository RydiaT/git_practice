let messageToSend = message => {
    if (typeof message === 'String') {
        return message
    }
    else {
        return 'Uuuhh... sorry, but thats gotta be a string. Try adding quotes or making sure your quotes are the same types.'
    }
}
//The name for this project is missleading- I'm using it for practicing making websites. Currently, my plan is for this to be a game where you have either rock,
//paper, or scissors, and train them to fight other things.