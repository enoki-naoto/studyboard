'use strict';

{

  const quest = document.getElementById('quest');
  const choices = document.getElementById('choices');
  // const choices1 = document.getElementById('choices1');
  // const choices2 = document.getElementById('choices2');
  // const choices3 = document.getElementById('choices3');
  const btn = document.getElementById('next');
  
  const quiz = gon.qcontents;
  let currentNum = 0;
  let quizChoices = [];
  quizChoices.push(quiz[currentNum].choice1);
  quizChoices.push(quiz[currentNum].choice2);
  quizChoices.push(quiz[currentNum].choice3);
  
  
  
  function shuffle(array) {
    for (let i = array.length - 1; i>0; i--){
      const a = Math.floor(Math.random() * (i + 1));
      [array[a], array[i]] = [array[i], array[a]];
    }
    return array;
  }
  
  function check(li) {
    if(li.textContent === quizChoices[0]) {
      console.log('correct');
    } else {
      console.log('wrong');
    }
  }
  
  function quizSet() {
    quest.textContent = quiz[currentNum].qsentence;
    const shuffledChoices = shuffle([...quizChoices]);
  
    shuffledChoices.forEach(choice => {
    const li = document.createElement('li');
    li.textContent = choice;
    li.addEventListener('click', ()=> {
      check(li);
    });
    choices.appendChild(li);
   });
  }
  
  quizSet();
  
  
  
  
  
  
  
  
  // choices1.textContent = quiz[currentNum].choice1;
  // choices2.textContent = quiz[currentNum].choice2;
  // choices3.textContent = quiz[currentNum].choice3;
  
  
  
}