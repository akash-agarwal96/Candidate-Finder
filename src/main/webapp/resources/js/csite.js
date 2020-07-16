
let questions = [
  {
    id: 1,
    question: "Which data type is used to create a variable that should store text? 1/5",
    answer: "string",
    options: [
      "myString",
      "Txt",
      "string",
      "String"
    ]
  },
  {
    id: 2,
    question: "Which method can be used to find the length of a string? 2/5",
    answer: "length()",
    options: [
      "len()",
      "getSize()",
      "getLength()",
      "length()"
    ]
  },
  {
    id: 3,
    question: "How do you call a function in C++? 3/5",
    answer: "functionName();",
    options: [
      "(functionName);",
      "functionName[];",
      "functionName;",
      "functionName();"
    ]
  },
  {
    id: 4,
    question: "What is the correct way to create an object called myObj of MyClass? 4/5",
    answer: "MyClass myObj;",
    options: [
      "class MyClass = new myObj();",
      "MyClass myObj;",
      "class myObj = new MyClass();",
      "new myObj = MyClass();"
    ]
  },
  {
    id: 5,
    question: "Which method can be used to find the highest value of x and y? 5/5",
    answer: "max(x,y)",
    options: [
      "maximum(x,y)",
      "max(x,y)",
      "largest(x,y)",
      "maxNum(x,y)"
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
