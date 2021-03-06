<div class="container top-bar-single">
  <ol class="breadcrumb">
    <li><a href="/">главная</a></li>
    <li><a href="/references">справочники</a></li>
    <li><a href="/functions">пользовательские функции</a></li>
    <li class="active">добавление</li>
  </ol>
</div>
<div class="container-fluid">
  <div class="row">
    <div class="col-xs-*">
      <?php echo (isset($prev_action_result)) ? self::showresult($prev_action_result): "";?>
    </div>
  </div>
  <div class="row">
    <div class="col-xs-*">
      <form action="/functions" method="post">
        <div class="form-group-xs text-capitalize-first">
          <label for="name" class="text-capitalize-first">наименование</label>
          <input type="text" class="form-control" id="name" name="name" maxlength="255" placeholder="Введите наименование" autofocus>
          <script>if (!("autofocus" in document.createElement("input"))) {document.getElementById("name").focus();}</script>
        </div>
        <div class="form-group-xs">
          <label for="code" class="text-capitalize-first">код</label>
          <input type="text" class="form-control" id="code" name="code" maxlength="255" placeholder="Введите код">
        </div>
        <div class="checkbox">
          <label class="text-capitalize-first"><input type="checkbox" name="active" checked>aктивность</label>
        </div>
        <div class="form-group-xs">
          <div class="btn-toolbar" role="toolbar" aria-label="Панель действий">
            <div class="btn-group" role="group">
              <button type="submit" class="btn btn-success btn-xs" name="action" value="add" alt="добавить">
                <span class="glyphicon glyphicon-ok-sign" alt="добавить" aria-label="добавить"></span> добавить
              </button>
            </div>
            <div class="btn-group" role="group">
              <button type="submit" class="btn btn-danger btn-xs" name="action" value="cancel" alt="отмена">
                <span class="glyphicon glyphicon-remove-sign" alt="отмена" aria-label="отмена"></span> отмена
              </button>
            </div>
          </div>
        </div>
      </form>
    </div>
  </div>
</div>
