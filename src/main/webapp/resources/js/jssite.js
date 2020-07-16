
let questions = [
  {
    id: 1,
    question: "How do you round the number 7.25, to the nearest integer? 1/5",
    answer: "Math.round(7.25)",
    options: [
      "round(7.25)",
      "Math.rnd(7.25)",
      "Math.round(7.25)",
      "rnd(7.25)"
    ]
  },
  {
    id: 2,
    question: "How do you find the number with the highest value of x and y? 2/5",
    answer: "Math.max(x,y)",
    options: [
      "Math.max(x,y)",
      "ceil(x,y)",
      "top(x,y)",
      "Math.ceil(x,y)"
    ]
  },
  {
    id: 3,
    question: "Which event occurs when the user clicks on an HTML element? 3/5",
    answer: "onclick",
    options: [
      "onmouseclick",
      "onclick",
      "onmouseover",
      "onchange"
    ]
  },
  {
    id: 4,
    question: "Which of the following function of String object causes a string to be displayed in a small font, as if it were in a <small> tag? 4/5",
    answer: "small()",
    options: [
      "link()",
      "sup()",
      "sub()",
      "small()"
    ]
  },
  {
    id: 5,
    question: "Which of the following function of Array object adds and/or removes elements from an array? 5/5",
    answer: "splice()",
    options: [
      "toSource()",
      "sort()",
      "splice()",
      "unshift()"
    ]
  }
];

let question_count = 0;
let points = 0;

window.onload = function() {
  show(question_count);

};

function next() {

   
  // if the question is last then redirect to final page
  if (question_count == questions.length - 1) {
    
    clearInterval(mytime);
   // location.href = "page.html";
  }
  sessionStorage.setItem("time", time);
  console.log(question_count);

  let user_answer = document.querySelector("li.option.active").innerHTML;
  // check if the answer is right or wrong
  if (user_answer == questions[question_count].answer) {
    points += 10;
    sessionStorage.setItem("points", points);
  }
  console.log(points);

  question_count++;
  show(question_count);
}

function show(count) {
  let question = document.getElementById("questions");
  let [first, second, third, fourth] = questions[count].options;

  question.innerHTML = `
  <h2>Q${count + 1}. ${questions[count].question}</h2>
   <ul class="option_group">
  <li class="option">${first}</li>
  <li class="option">${second}</li>
  <li class="option">${third}</li>
  <li class="option">${fourth}</li>
</ul> 
  `;
  toggleActive();
}

function toggleActive() {
  let option = document.querySelectorAll("li.option");
  for (let i = 0; i < option.length; i++) {
    option[i].onclick = function() {
      for (let i = 0; i < option.length; i++) {
        if (option[i].classList.contains("active")) {
          option[i].classList.remove("active");
        }
      }
      option[i].classList.add("active");
    };
  }
}
