<H1>Части оборудования</h1>
<P>
  <TABLE>
    <caption><?php echo (isset($prev_action_result)) ? self::showresult($prev_action_result): "";?></caption>
    <TBODY>
    <TR>
      <TH>Идентификатор</TH>
      <TH>Модель</TH>
      <TH>Тип части обрудования</TH>
      <TH>Наименование</TH>
      <TH>Активность</TH>
    </TR>
    <?php
      foreach($data as $row)
      {
        printf('<TR><TD>%d</TD><TD>%d</TD><TD>%d</TD><TD>%s</TD><TD>%d</TD></TR>', $row['Id'], $row['ModelId'], $row['ModelPartTypeId'], $row['Name'], $row['Active']);
      }      
    ?>
    </TBODY>
  </TABLE>
</P>
