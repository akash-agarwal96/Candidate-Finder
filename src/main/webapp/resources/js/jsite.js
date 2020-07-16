
let questions = [
  {
    id: 1,
    question: "Which of the following option leads to the portability and security of Java? 1/5",
    answer: "Bytecode is executed by JVM",
    options: [
      "Bytecode is executed by JVM",
      "The applet makes the Java code secure and portable",
      "Use of exception handling",
      "Dynamic binding between objects"
    ]
  },
  {
    id: 2,
    question: "Which of the following is not a Java features? 2/5",
    answer: "Use of pointers",
    options: [
      "Dynamic",
      "Architecture Neutral",
      "Use of pointers",
      "Object-oriented"
    ]
  },
  {
    id: 3,
    question: "What is correct syntax for main method of a java class? 3/5",
    answer: "public static void main(String[] args)",
    options: [
      "public static int main(String[] args)",
      "public static void main(String[] args)",
      "public int main(String[] args)",
      "None of these"
    ]
  },
  {
    id: 4,
    question: "Method Overloading is an example of 4/5",
    answer: "Static Binding",
    options: [
      "None",
      "Dynamic Binding",
      "Both",
      "Static Binding"
    ]
  },
  {
    id: 5,
    question: "Which component is used to convert java program to bytecode ? 5/5",
    answer: "Compiler",
    options: [
      "JVM",
      "Compiler",
      "JDK",
      "Interpreter"
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
    //location.href = "page.html";
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
