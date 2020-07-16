
let questions = [
  {
    id: 1,
    question: "What is the correct file extension for Python files? 1/5",
    answer: ".py",
    options: [
      ".pyt",
      ".pyth",
      ".py",
      ".pt"
    ]
  },
  {
    id: 2,
    question: "What is the correct syntax to output the type of a variable or object in Python? 2/5",
    answer: "print(type(x))",
    options: [
      "print(type(x))",
      "print(typeOf(x))",
      "print(typeof(x))",
      "print(typeof x)"
    ]
  },
  {
    id: 3,
    question: "Which method can be used to return a string in upper case letters? 3/5",
    answer: "upper()",
    options: [
      "upper()",
      "uppercase()",
      "upperCase()",
      "toUpperCase()"
    ]
  },
  {
    id: 4,
    question: "Which method can be used to replace parts of a string? 4/5",
    answer: "replace()",
    options: [
      "replaceString()",
      "switch()",
      "repl()",
      "replace()"
    ]
  },
  {
    id: 5,
    question: "Which collection is ordered, changeable, and allows duplicate members? 5/5",
    answer: "LIST",
    options: [
      "SET",
      "DICTIONARY",
      "LIST",
      "TUPLE"
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
