<%--
  Created by IntelliJ IDEA.
  User: Simon
  Date: 10.04.2025
  Time: 12:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Defeat</title>
    <!-- Подключение шрифта Arial и Verdana для поддержки кириллицы -->
    <style>
        /* Основной стиль для body */
        body {
            font-family: 'Arial', 'Verdana', sans-serif; /* Системные шрифты */
            background: #2c3e50; /* Темный фон */
            color: #ecf0f1; /* Светлый текст */
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            margin: 0;
        }

        /* Контейнер для сообщения о поражении */
        .lose-container {
            background-color: rgba(30, 30, 30, 0.9); /* Полупрозрачный фон */
            padding: 2em 3em;
            max-width: 600px;
            width: 100%;
            border-radius: 12px;
            box-shadow: 0 8px 24px rgba(0, 0, 0, 0.6);
            text-align: center;
            border: 1px solid #555;
        }

        /* Заголовок с именем пользователя */
        h1 {
            font-size: 2em;
            color: #e74c3c;
            margin-bottom: 1em;
        }

        /* Текст с ошибкой */
        h2 {
            font-size: 1.2em;
            color: #ecf0f1;
            line-height: 1.6;
            margin-bottom: 2em;
        }

        /* Кнопка для перезапуска */
        button {
            padding: 0.7em 1.5em;
            font-size: 1.1em;
            background-color: #3c6382;
            color: #fff;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            transition: background 0.3s ease;
        }

        /* Эффект наведения на кнопку */
        button:hover {
            background-color: #0a3d62;
        }

        /* Убираем стандартные стили у формы */
        form {
            margin: 0;
        }
    </style>
</head>
<body>

<div class="lose-container">
    <h1>${requestScope.loose}</h1>
    <h2>${requestScope.wrongAnswer}</h2>
    <form action="index.jsp">
        <button type="submit">Сыграть ещё раз</button>
    </form>
</div>

</body>
</html>
