<h1>группы доступа | добавление</h1>
<p>
  <form method="post" action="/accessgroups">
    <table>
      <col>
      <col class="activity">
      <thead>
        <tr>
          <th>наименование</th>
          <th class="activity">активность</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td><input type="text" name="name" maxlength="255" size="100"></td>
          <td><input type="checkbox" name="active" class="activity" checked></td>
        </tr>
        <tr>
          <td colspan="2" align="left">
            <nobr>
              <button type="submit" class="action" name="action" value="add" alt="добавить"><img src="/images/tick_ok_yes.png"></button>
              <button type="submit" class="action" name="action" value="cancel" alt="отмена"><img src="/images/arrow_top_left.png"></button>
            </nobr>
          </td>
        </tr>
      </tbody>
    </table>
  </form>
</p>