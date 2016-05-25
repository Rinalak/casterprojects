<div class="container top-bar-single">
  <ol class="breadcrumb">
    <li><a href="/">главная</a></li>
    <li class="active">вход</li>
  </ol>
</div>
<div class="container-fluid">
  <div class="row">
    <div class="col-xs-*">
    <?php echo (isset($prev_action_result)) ? self::showresult($prev_action_result): "";?>
    </div>
  </div>
  <div class="row">
    <form class="form-signin" role="form" action="/profile/logon" method="post">
      <p class="lead form-signin-heading">Авторизация</p>
      <input type="text" name="login" class="form-control" placeholder="Логин" required autofocus>
      <input type="password" name="password" class="form-control" placeholder="Пароль" required>
      <label class="checkbox hidden">
        <input type="checkbox" name="remember" value="1"> запомнить меня
      </label>
      <button class="btn btn-sm btn-primary btn-block" type="submit">Войти</button>
    </form>
  </div>
</div>