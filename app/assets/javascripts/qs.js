'use strict';

{

  const quest = document.getElementById('quest');
  const choices = document.getElementById('choices');
  // const choices1 = document.getElementById('choices1');
  // const choices2 = document.getElementById('choices2');
  // const choices3 = document.getElementById('choices3');
  const btn = document.getElementById('next');
  const resultNumber = document.getElementById('resultNumber');
  const Label = document.querySelector('#resultNumber > p');
  
  const quiz = gon.qcontents;
  let currentNum = 0;
  let answered;
  let result = 0;
  let quizChoices = [];
  
  
  
  
  function shuffle(array) {
    for (let i = array.length - 1; i>0; i--){
      const a = Math.floor(Math.random() * (i + 1));
      [array[a], array[i]] = [array[i], array[a]];
    }
    return array;
  }
  
  function check(li) {
    
    // if(answered === true) 
    if(answered){
      return;
    }
    
    answered = true;
    if(li.textContent === quizChoices[0]) {
      li.classList.add('correct');
      result++;
    } else {
      li.classList.add('wrong');
    }
    btn.classList.remove('disabled');
  }
  
  function quizSet() {
    
    answered = false;
    quizChoices.push(quiz[currentNum].choice1);
    quizChoices.push(quiz[currentNum].choice2);
    quizChoices.push(quiz[currentNum].choice3);
    quest.textContent = quiz[currentNum].qsentence;
    
    while(choices.firstChild){
      choices.removeChild(choices.firstChild);
    }
    
    const shuffledChoices = shuffle([...quizChoices]);
  
    shuffledChoices.forEach(choice => {
    const li = document.createElement('li');
    li.textContent = choice;
    li.addEventListener('click', ()=> {
      check(li);
    });
    choices.appendChild(li);
   });
   
   if (currentNum === quiz.length - 1) {
     btn.textContent = 'クイズ結果';
   }
  }
  
  quizSet();
  
  btn.addEventListener('click', () => {
    if (btn.classList.contains('disabled')) {
      return;
    }
    btn.classList.add('disabled');
    
    if (currentNum === quiz.length - 1) {
      Label.textContent = `正解数: ${result} / ${quiz.length}`;
      resultNumber.classList.remove('hidden');
    } else {
       currentNum++;
       quizChoices = [];
       
    quizSet();
    }
   
  });
  
}