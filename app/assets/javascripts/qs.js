'use strict';

{

  const quest = document.getElementById('quest');
  const choices1 = document.getElementById('choices1');
  const choices2 = document.getElementById('choices2');
  const choices3 = document.getElementById('choices3');
  const btn = document.getElementById('btn');
  
  const quiz = gon.qcontents;
  let currentNum = 0;
  quest.textContent = quiz[currentNum].qsentence;
  choices1.textContent = quiz[currentNum].choice1;
  choices2.textContent = quiz[currentNum].choice2;
  choices3.textContent = quiz[currentNum].choice3;
  
  
  
}