<!DOCTYPE html>
<html>
<head>
  <title>Just You & Me ❤️</title>

  <style>
    body {
      background: linear-gradient(to bottom, #ffe6f0, #fff);
      font-family: 'Georgia', serif;
      text-align: center;
      padding: 40px;
      overflow-x: hidden;
    }

    h1 {
      font-size: 36px;
      margin-bottom: 10px;
    }

    h2 {
      color: #ff4d6d;
      margin-bottom: 30px;
    }

    .card {
      background: white;
      border-radius: 20px;
      padding: 30px;
      max-width: 600px;
      margin: 30px auto;
      box-shadow: 0 10px 30px rgba(0,0,0,0.1);
      animation: fadeIn 1.2s ease;
    }

    button {
      background: #ff4d6d;
      color: white;
      border: none;
      padding: 12px 25px;
      margin: 10px;
      border-radius: 30px;
      font-size: 16px;
      cursor: pointer;
      transition: 0.3s;
    }

    button:hover {
      background: #ff1f4a;
      transform: scale(1.05);
    }

    .response {
      margin-top: 20px;
      font-size: 18px;
      color: #444;
    }

    .hidden {
      display: none;
    }

    .heart {
      position: fixed;
      bottom: -20px;
      font-size: 20px;
      animation: float 6s linear infinite;
      opacity: 0.6;
    }

    @keyframes float {
      0% { transform: translateY(0); }
      100% { transform: translateY(-100vh); }
    }

    @keyframes fadeIn {
      from { opacity: 0; transform: translateY(20px); }
      to { opacity: 1; transform: translateY(0); }
    }
  </style>
</head>

<body>

  <h1>Hey My Love ❤️</h1>
  <h2>Answer these honestly 😌</h2>

  <!-- QUESTION 1 -->
  <div class="card">
    <h3>1️⃣ Do you love me? 🥺</h3>
    <button onclick="answer1('yes')">YESSS ❤️</button>
    <button onclick="answer1('more')">MORE THAN YOU KNOW 😍</button>

    <div id="a1" class="response"></div>
  </div>

  <!-- QUESTION 2 -->
  <div class="card hidden" id="q2">
    <h3>2️⃣ Who loves more? 😛</h3>
    <button onclick="answer2()">YOU 😌</button>
    <button onclick="answer2()">ME 😍</button>

    <div id="a2" class="response"></div>
  </div>

  <!-- QUESTION 3 -->
  <div class="card hidden" id="q3">
    <h3>3️⃣ Will you always choose me? 💕</h3>
    <button onclick="answer3()">ALWAYS ❤️</button>
    <button onclick="answer3()">FOREVER 💍</button>

    <div id="a3" class="response"></div>
  </div>

  <!-- QUESTION 4 -->
  <div class="card hidden" id="q4">
    <h3>4️⃣ Do you see a future with me? 🥹</h3>
    <button onclick="answer4()">YES BABY ❤️</button>
    <button onclick="answer4()">ONLY YOU 💖</button>

    <div id="a4" class="response"></div>
  </div>

  <!-- FINAL -->
  <div class="card hidden" id="final">
    <h1>💍 MARRYYYYYYY ME SOON ❤️</h1>
    <p>
      I love you more than words, more than distance, more than time.  
      You are my today, my tomorrow, my forever.  
    </p>
    <h2>I love you soooo much 😭❤️</h2>
  </div>

  <script>
    function answer1(type) {
      document.getElementById("a1").innerHTML =
        type === 'yes'
        ? "I knew it 😭❤️"
        : "My heart just melted 💖";
      document.getElementById("q2").classList.remove("hidden");
    }

    function answer2() {
      document.getElementById("a2").innerHTML =
        "Okay but actually… I love you more 😛❤️";
      document.getElementById("q3").classList.remove("hidden");
    }

    function answer3() {
      document.getElementById("a3").innerHTML =
        "You just made me the happiest girl 😭💞";
      document.getElementById("q4").classList.remove("hidden");
    }

    function answer4() {
      document.getElementById("a4").innerHTML =
        "Then come marry me soon 🥹💍";
      document.getElementById("final").classList.remove("hidden");
    }

    // Floating hearts
    setInterval(() => {
      const heart = document.createElement("div");
      heart.className = "heart";
      heart.innerHTML = "❤️";
      heart.style.left = Math.random() * 100 + "vw";
      document.body.appendChild(heart);

      setTimeout(() => heart.remove(), 6000);
    }, 600);
  </script>

</body>
</html>
