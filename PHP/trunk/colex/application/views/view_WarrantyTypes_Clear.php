<div class="page-header">
  <h5>
    <a href="/">справочники</a>
    <span class="level"></span>
    <a href="/warrantytypes">типы гарантий</a>
    <span class="level"></span>
    удаление всех
  </h5>
</div>
<div class="table-responsive">
  <table class="table table-condensed table-hover table-bordered">
    <colgroup>
      <col/>
      <col/>
      <col class="activity"/>
    </colgroup>
    <thead>
      <tr>
        <th class="text-left">наименование</th>
        <th class="text-left">условия</th>
        <th class="text-center"><abbr title="активность">*</abbr></th>
      </tr>
    </thead>
    <tfoot>
      <tr>
        <td colspan="3" class="text-left">
          <form class="form-inline" method="post" action="/warrantytypes">
            <div class="form-group-xs">
              <div class="btn-toolbar" role="toolbar"  aria-label="Панель действий">
                <div class="btn-group" role="group">
                  <button type="submit" class="btn btn-success btn-xs" name="action" value="clear" alt="удалить все">
                    <span class="glyphicon glyphicon-ok-sign" alt="удалить все" aria-label="удалить все"></span>
                  </button>
                </div>
                <div class="btn-group" role="group">
                  <button type="submit" class="btn btn-danger btn-xs" name="action" value="cancel" alt="отмена">
                    <span class="glyphicon glyphicon-remove-sign" alt="отмена" aria-label="отмена"></span>
                  </button>
                </div>
              </div>
            </div>
          </form>
        </td>
      </tr>
    </tfoot>
    <tbody>
      <?php foreach($data as $row):?>
      <tr>
        <td><?php echo $row["name"];?></td>
        <td><?php echo str_replace(PHP_EOL, '<BR>', strlen($row["details"]) > 100 ? substr($row["details"], 0, 100)."..." : $row["details"]);?></td>
        <td class="text-center activity">
          <span class="glyphicon glyphicon-<?php echo ($row["active"] === 1) ? "ok" : "remove";?>" aria-hidden="true"></span>
        </td>
      </tr>
      <?php endforeach;?>
    </tbody>
  </table>
</div>