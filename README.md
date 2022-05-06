# LoginApp

Создайте приложение с двумя экранами.

Первый экран LoginViewController должен отвечать за авторизацию пользователя. На втором экране WelcomeViewController нужно отобразить 
его имя и кнопку логаута.

Имя пользователя на второй экран необходимо передавать при переходе с экрана авторизации. Для этого реализуйте метод prepare.

При возврате на первый экран данные в текстовых полях необходимо отчистить. Для этого воспользуйтесь unwind сегвеем.

Обратите внимание на клавиатуру. При вводе имени пользователя необходимо отключить автокоррекцию и предиктивный ввод. 
При вводе пароля, вводимые символы должны скрываться. Поработайте над скрытием клавиатуры. Скрывать клавиатуру можно тапом по экрану. 
Для этого необходимо переопределить метод touchesBegan:


```
// Метод для скрытия клавиатуры тапом по экрану
override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    super .touchesBegan(touches, with: event)
}
```

<img src = "https://user-images.githubusercontent.com/101284761/167179690-297664b2-bbf0-4ac9-b9b8-1be674e7bc27.png" width = "300"> <img src = "https://user-images.githubusercontent.com/101284761/167179672-9e19be30-542e-49ca-815a-8586581e0198.png" width = "300"> <img src = "https://user-images.githubusercontent.com/101284761/167179688-238e676d-8993-4aaf-bdb6-013d2d8dcca6.png" width = "300"> 
<img src = "https://user-images.githubusercontent.com/101284761/167179676-29f33f95-cf99-44d7-b61c-7afc614a6898.png" width = "300"> <img src = "https://user-images.githubusercontent.com/101284761/167179657-6da1e0a9-a056-41d2-a8e5-a2cf33e6871e.png" width = "300"> <img src = "https://user-images.githubusercontent.com/101284761/167179683-605b2bc9-21fd-4308-9d3e-eb19eea64eca.png" width = "300">

