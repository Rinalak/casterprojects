<div class="container top-bar">
  <ol class="breadcrumb">
    <li><a href="/">главная</a></li>
    <li class="active">профиль</li>
  </ol>
  <form class="form-inline" method="post">
    <div class="form-group-xs">
      <div class="btn-group btn-group-xs" role="group">
        <button type="submit" class="btn btn-warning btn-xs" formaction="/profile/edit" name="id" value="<?php echo $data['profiles'][0]['id'];?>">
          <span class="glyphicon glyphicon-pencil" alt="редактировать" aria-label="редактировать"></span> редактировать
        </button>
      </div>
      <div class="btn-group btn-group-xs" role="group">
        <button type="submit" class="btn btn-danger btn-xs" formaction="/profile/delete" name="id" value="<?php echo $data['profiles'][0]['id'];?>">
          <span class="glyphicon glyphicon-trash" alt="удалить" aria-label="удалить"></span> удалить
        </button>
      </div>
      <div class="btn-group btn-group-xs" role="group">
        <button type="submit" class="btn btn-info btn-xs" formaction="/password/edit" name="id" value="<?php echo $data['profiles'][0]['id'];?>">
          <span class="glyphicon glyphicon-pencil" alt="редактировать" aria-label="редактировать"></span> сменить пароль
        </button>
      </div>
      <div class="btn-group btn-group-xs" role="group">
        <button type="submit" class="btn btn-info btn-xs" formaction="/avatar/edit" name="id" value="<?php echo $data['profiles'][0]['id'];?>">
          <span class="glyphicon glyphicon-pencil" alt="редактировать" aria-label="редактировать"></span> сменить аватар
        </button>
      </div>
    </div>
  </form>
</div>
<div class="container-fluid">
  <div class="row">
    <div class="col-xs-*">
      <?php echo (isset($prev_action_result)) ? self::showresult($prev_action_result): "";?>
    </div>
  </div>
  <div class="row">
    <div class="table-responsive">
      <table class="table table-condensed">
        <caption class="text-left">персональные данные</caption>
        <colgroup>
          <col class="col-xs-6"/>
          <col class="col-xs-6"/>
        </colgroup>
        <tbody>
          <tr>
            <th class="text-left">логин</th>
            <td class="text-left"><?php echo $data['profiles'][0]['employee']['login'];?></td>
          </tr>
          <tr>
            <th class="text-left">фамилия</th>
            <td class="text-left"><?php echo $data['profiles'][0]['employee']['lastname'];?></td>
          </tr>
          <tr>
            <th class="text-left">имя</th>
            <td class="text-left"><?php echo $data['profiles'][0]['employee']['firstname'];?></td>
          </tr>
          <tr>
            <th class="text-left">отчество</th>
            <td class="text-left"><?php echo $data['profiles'][0]['employee']['middlename'];?></td>
          </tr>
          <tr>
            <th class="text-left">пол</th>
            <td class="text-left"><?php echo $data['profiles'][0]['employee']['male'] === 1 ? "мужской" : "женский";?></td>
          </tr>
          <tr>
            <th class="text-left">дата рождения</th>
            <td class="text-left"><?php echo $data['profiles'][0]['employee']['birthdate'];?></td>
          </tr>
          <tr>
            <th class="text-left">последний вход в систему</th>
            <td class="text-left"><?php echo $data['profiles'][0]['employee']['lastlogon'];?></td>
          </tr>
        </tbody>
      </table>
    </div>
    <div class="table-responsive">
      <table class="table table-condensed">
        <caption class="text-left">настройки интерфейса</caption>
        <colgroup>
          <col class="col-xs-6"/>
          <col class="col-xs-6"/>
        </colgroup>
        <tbody>
          <tr>
            <th class="text-left">язык</th>
            <td class="text-left"><?php echo $data['profiles'][0]['language']['name'];?></td>
          </tr>
        </tbody>
      </table>
    </div>
  </div>
</div>