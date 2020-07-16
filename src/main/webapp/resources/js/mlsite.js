
let questions = [
  {
    id: 1,
    question: "Which of the factors affect the performance of learner system does not include? 1/5",
    answer: " Good data structures",
    options: [
      "Representation scheme used",
      "Training scenario",
      "Type of feedback",
      "Good data structures"
    ]
  },
  {
    id: 2,
    question: "In language understanding, the levels of knowledge that does not include? 2/5",
    answer: "Empirical",
    options: [
      "Phonological",
      "Syntactic",
      "Empirical",
      "Logical"
    ]
  },
  {
    id: 3,
    question: "Among the following which is not a horn clause? 3/5",
    answer: "p → Øq",
    options: [
      "p",
      "Øp V q",
      "p → q",
      "p → Øq"
    ]
  },
  {
    id: 4,
    question: "A model of language consists of the categories which does not include? 4/5",
    answer: "Structural units",
    options: [
      "Language units",
      "Role structure of units",
      "System constraints",
      "Structural units"
    ]
  },
  {
    id: 5,
    question: "The action ‘STACK(A, B)’ of a robot arm specify to? 5/5",
    answer: "Place block A on block B",
    options: [
      "Place block A on block B",
      "Place blocks A, B on the table in that order",
      "Place blocks B, A on the table in that order",
      "Place block B on Block A"
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
