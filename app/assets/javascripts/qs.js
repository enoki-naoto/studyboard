'use strict';

{

  const question = document.getElementById('question');
  const choices1 = document.getElementById('choices1');
  const choices2 = document.getElementById('choices2');
  const choices3 = document.getElementById('choices3');
  const btn = document.getElementById('btn');
  
  // const quiz = gon.qcontents;
  let currentNum = 0;
  question.textContent = gon.qcontents[currentNum].qsentence;
  choices1.textContent = gon.qcontents[currentNum].choice1;
  choices2.textContent = gon.qcontents[currentNum].choice2;
  choices3.textContent = gon.qcontents[currentNum].choice3;
  
  
  
}