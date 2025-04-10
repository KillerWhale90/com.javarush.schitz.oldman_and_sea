<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>Enter your name</title>
  <style>
    body {
      margin: 0;
      padding: 0;
      background: linear-gradient(to bottom, #a8c0ff, #3f2b96);
      background-image: url('https://www.transparenttextures.com/patterns/paper-fibers.png'); /* текстура бумаги */
      font-family: 'Georgia', serif;
      color: #2c3e50;
      display: flex;
      justify-content: center;
      align-items: center;
      min-height: 100vh;
    }

    .container {
      background-color: rgba(255, 255, 255, 0.9);
      padding: 3em;
      max-width: 700px;
      border-radius: 12px;
      box-shadow: 0 8px 24px rgba(0, 0, 0, 0.2);
      border: 1px solid #ccc;
      text-align: center;
    }

    h1 {
      font-size: 2.5em;
      color: #0a3d62;
      margin-bottom: 0.5em;
      text-shadow: 1px 1px #fff;
    }

    h2 {
      font-size: 1.2em;
      font-weight: normal;
      line-height: 1.6;
      color: #34495e;
    }

    form {
      margin-top: 2em;
    }

    input[type="text"] {
      padding: 0.7em;
      font-size: 1em;
      border: 1px solid #bbb;
      border-radius: 6px;
      width: 60%;
      max-width: 300px;
      box-shadow: inset 0 1px 3px rgba(0,0,0,0.1);
    }

    button {
      margin-left: 1em;
      padding: 0.7em 1.5em;
      font-size: 1em;
      background-color: #3c6382;
      color: #fff;
      border: none;
      border-radius: 6px;
      cursor: pointer;
      transition: background 0.3s ease;
    }

    button:hover {
      background-color: #0a3d62;
    }
  </style>
</head>
<body>
<div class="container">
  <h1>Добро пожаловать в квест<br>
    <em>"Испытание моря: Путь Сантьяго"</em></h1>

  <h2>Ты — старый рыбак. Одинокий, упрямый, закалённый солёными ветрами и временем.
    За твоими плечами — годы борьбы, но сердце всё ещё живёт мечтой.
    Сегодня — день, который всё изменит.<br><br>

    Сможешь ли ты преодолеть боль, одиночество, и стихию?
    Выдержишь ли ты битву с самым достойным противником?
    А главное — останешься ли ты верен себе, когда всё будет потеряно?</h2>

  <form action="start" method="post">
    <input type="text" name="username" placeholder="Ваше имя" required>
    <button type="submit">Начать</button>
  </form>
</div>
</body>
</html>