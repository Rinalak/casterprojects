<?
$DEBUG="off";

function PrintMessage($at, $as, $bs)
{
  global $DEBUG;
  if ($DEBUG=="on"):
    switch ($at):
      case "ERROR":
        $cf="white";
        $cb="red";
        break;
      case "INFORMATION":
        $cf="black";
        $cb="yellow";
        break;
      case "QUERY":
        $cf="black";
        $cb="white";
        break;
      case "SUCCESS":
        $cf="black";
        $cb="green";
        break;
      default:
        $cf="black";
        $cb="gray";
    endswitch;
?>
    <TABLE STYLE="margin: 3px 5px; table-layout: fixed; empty-cells: show; float: none; clear: both; border-collapse: collapse;">
      <TR>
        <TD WIDTH="100" ALIGN="CENTER" STYLE="padding: 3px 5px; border-color: black; border-width: 1px; color: <?echo $cf;?>; background: <?echo $cb;?>; font-weight: bold;"><?echo $as;?></TD>
        <TD STYLE="padding: 3px 5px;"><?echo $bs;?></TD>
      </TR>
    </TABLE>
<?
  endif;
}

function ShowErrorMessage($as)
{
  global $rep, $time, $amm, $amy, $abd, $abm, $aby, $aed, $aem, $aey, $maker, $makerstate, $makerphone, $action, $EMAIL1Addr, $EMAIL1Name, $EMAIL2Addr, $EMAIL2Name, $EMAIL3Addr, $EMAIL3Name, $RECALC;
?>
    <FORM METHOD="GET" ACTION="" STYLE="margin: 15px 15px 0px 15px; padding-bottom: 15px;">
      <CENTER> <!-- ������ ��� ��������� ��� ������������ ������� �� ������ � �������� MOZILLA -->
      <TABLE BGCOLOR="WHITE" WIDTH="640" ALIGN="CENTER" STYLE="border-color: black; border-width: 3; table-layout: fixed; empty-cells: show; float: none; clear: both; border-collapse: collapse;"> <!-- � ������ ������ ������������ ������� �� ������ - ALIGN="CENTER" ��������� �������������� IE � OPERA - � MOZILLA �� ��������! -->
        <THEAD ALIGN="CENTER" VALIGN="MIDDLE">
          <TR>
            <TD WIDTH="13"></TD>
            <TD WIDTH="13"></TD>
            <TD HEIGHT="15"></TD>
            <TD WIDTH="13"></TD>
            <TD WIDTH="13"></TD>
          </TR>
        </THEAD>
        <TFOOT ALIGN="CENTER" VALIGN="MIDDLE">
          <TR>
            <TD HEIGHT="15" COLSPAN="5"></TD>
          </TR>
          <TR>
            <TD COLSPAN="5">
              <INPUT TYPE="HIDDEN" NAME="step" VALUE="2">
              <INPUT TYPE="HIDDEN" NAME="rep" VALUE="<?echo $rep;?>">
              <INPUT TYPE="HIDDEN" NAME="time" VALUE="<?echo $time;?>">
              <INPUT TYPE="HIDDEN" NAME="abd" VALUE="<?echo $abd;?>">
              <INPUT TYPE="HIDDEN" NAME="abm" VALUE="<?echo $abm;?>">
              <INPUT TYPE="HIDDEN" NAME="aby" VALUE="<?echo $aby;?>">
              <INPUT TYPE="HIDDEN" NAME="aed" VALUE="<?echo $aed;?>">
              <INPUT TYPE="HIDDEN" NAME="aem" VALUE="<?echo $aem;?>">
              <INPUT TYPE="HIDDEN" NAME="aey" VALUE="<?echo $aey;?>">
<?
  if ($maker!=""):
?>
              <INPUT TYPE="HIDDEN" NAME="maker" VALUE="<?echo $maker;?>">
<?
  endif;
  if ($makerstate!=""):
?>
              <INPUT TYPE="HIDDEN" NAME="makerstate" VALUE="<?echo $makerstate;?>">
<?
  endif;
  if ($makerphone!=""):
?>
              <INPUT TYPE="HIDDEN" NAME="makerphone" VALUE="<?echo $makerphone;?>">
<?
  endif;
  if ($action!=""):
?>
              <INPUT TYPE="HIDDEN" NAME="action" VALUE="<?echo $action;?>">
<?
  endif;
  if ($EMAIL1Addr!=""):
?>
              <INPUT TYPE="HIDDEN" NAME="EMAIL1Addr" VALUE="<?echo $EMAIL1Addr;?>">
<?
  endif;
  if ($EMAIL1Name!=""):
?>
              <INPUT TYPE="HIDDEN" NAME="EMAIL1Name" VALUE="<?echo $EMAIL1Name;?>">
<?
  endif;
  if ($EMAIL2Addr!=""):
?>
              <INPUT TYPE="HIDDEN" NAME="EMAIL2Addr" VALUE="<?echo $EMAIL2Addr;?>">
<?
  endif;
  if ($EMAIL2Name!=""):
?>
              <INPUT TYPE="HIDDEN" NAME="EMAIL2Name" VALUE="<?echo $EMAIL2Name;?>">
<?
  endif;
  if ($EMAIL3Addr!=""):
?>
              <INPUT TYPE="HIDDEN" NAME="EMAIL3Addr" VALUE="<?echo $EMAIL3Addr;?>">
<?
  endif;
  if ($EMAIL3Name!=""):
?>
              <INPUT TYPE="HIDDEN" NAME="EMAIL3Name" VALUE="<?echo $EMAIL3Name;?>">
<?
  endif;
  if ($RECALC!=""):
?>
              <INPUT TYPE="HIDDEN" NAME="RECALC" VALUE="<?echo $RECALC;?>">
<?
  endif;
?>
              <INPUT TYPE="SUBMIT" VALUE="<<< �����" STYLE="border-color: black; border-width: 2;" ONMOUSEOVER="window.status='��� �������� � ���� ������ ���������� ������ ������� ������ &laquo;�����&raquo;';" ONMOUSEOUT="window.status='';">
            </TD>
          </TR>
          <TR>
            <TD HEIGHT="15" COLSPAN="5"></TD>
          </TR>
        </TFOOT>
        <TBODY ALIGN="CENTER" VALIGN="MIDDLE">
          <TR>
            <TD ROWSPAN="5"></TD>
            <TD WIDTH="13" ROWSPAN="5" BGCOLOR="red"></TD>
            <TD HEIGHT="15" BGCOLOR="red"></TD>
            <TD WIDTH="13" ROWSPAN="5" BGCOLOR="red"></TD>
            <TD ROWSPAN="5"></TD>
          </TR>
          <TR>
            <TD ALIGN="CENTER" BGCOLOR="red" STYLE="color: white;"><B>������!</B></TD>
          </TR>
          <TR>
            <TD HEIGHT="15" BGCOLOR="red"></TD>
          </TR>
          <TR>
            <TD STYLE="padding: 3px 5px;"><?echo $as;?><BR><BR>������� ������ <B>&laquo;�����&raquo;</B> ��� �������� � ����������� ���� ������������ ������.</TD>
          </TR>
          <TR>
            <TD HEIGHT="15" BGCOLOR="red"></TD>
          </TR>
        </TBODY>
      </TABLE>
      </CENTER>
    </FORM>
<?
}

?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
  <HEAD>
    <TITLE><?echo $reports[4]["������������"];?></TITLE>
    <META CONTENT="no-cache" HTTP-EQUIV="pragma">
    <META CONTENT="no-cache" HTTP-EQUIV="cache-control">
    <META CONTENT="Dynamic" NAME="Document-state">
    <META CONTENT="text/html; charset=Windows-1251" HTTP-EQUIV="Content-Type">
    <LINK REL="home" HREF="<?echo $base_url;?>">
    <LINK REL="first" HREF="<?echo $base_url;?>">
    <LINK REL="previous" HREF="<?echo $base_url;?>?step=2&amp;rep=<?echo $rep;?>&amp;time=<?echo $time;
      if ($abd!=""): echo "&amp;abd=$abd"; endif;
      if ($abm!=""): echo "&amp;abm=$abm"; endif;
      if ($aby!=""): echo "&amp;aby=$aby"; endif;
      if ($aed!=""): echo "&amp;aed=$aed"; endif;
      if ($aem!=""): echo "&amp;aem=$aem"; endif;
      if ($aey!=""): echo "&amp;aey=$aey"; endif;
      if ($maker!=""): echo "&amp;maker=$maker"; endif;
      if ($makerstate!=""): echo "&amp;makerstate=$makerstate"; endif;
      if ($makerphone!=""): echo "&amp;makerphone=$makerphone"; endif;
      if ($action!=""): echo "&amp;action=$action"; endif;
      if ($EMAIL1Addr!=""): echo "&amp;EMAIL1Addr=$EMAIL1Addr"; endif;
      if ($EMAIL1Name!=""): echo "&amp;EMAIL1Name=$EMAIL1Name"; endif;
      if ($EMAIL2Addr!=""): echo "&amp;EMAIL2Addr=$EMAIL2Addr"; endif;
      if ($EMAIL2Name!=""): echo "&amp;EMAIL2Name=$EMAIL2Name"; endif;
      if ($EMAIL3Addr!=""): echo "&amp;EMAIL3Addr=$EMAIL3Addr"; endif;
      if ($EMAIL3Name!=""): echo "&amp;EMAIL3Name=$EMAIL3Name"; endif;
      if ($RECALC!=""): echo "&amp;RECALC=$RECALC"; endif;?>">
    <LINK REL="author" HREF="http://vladracoola.by.ru/index1.html">
    <STYLE MEDIA="screen, print" TYPE="text/css">
      * {
        font-family: Verdana, Arial, Helvetica, sans-serif;
        font-size: 8pt;
        padding: 0;
        margin: 0;
        border-color: transparent;
        border-width: 0;
        }
      TABLE, TD {
        border-style: solid;
      }
    </STYLE>
  </HEAD>
  <BODY<?if (($DEBUG=="on")||($action=="email")):?> BGCOLOR="gainsboro"<?endif;?>>
<?
      // ��������� ���������� ����������
      if (($time!="yesterday")&&($time!="today")&&($time!="lastweek")&&($time!="another")): // ���� ��������� ���������� �� �������� �� ��� ���� �� ����������� - ������� ��������� �� ������ � ���������� ���������
        ShowErrorMessage("����� ������������ ��������� ����������!<BR>���������� � ��������-������������ ��� ���������� ��������������!");
?>
  </BODY>
</HTML>
<?
        die("");
      endif;
      // ����� ���������� ���������� � ������ �������������
      if (($time=="yesterday")||($time=="today")||(($time=="another")&&($startday==$stopday)&&($startmonth==$stopmonth)&&($startyear==$stopyear))):
        PrintMessage("INFORMATION", "Info", "��������� ���� ��������� ������ - <B>$startday&nbsp;$months2[$startmonth]&nbsp;$startyear&nbsp;����</B>.");
      elseif (($time=="lastweek")||($time=="another")):
        PrintMessage("INFORMATION", "Info", "��������� ���� ��������� ������ - � <B>$startday&nbsp;$months2[$startmonth]&nbsp;$startyear&nbsp;����</B> �� <B>$stopday&nbsp;$months2[$stopmonth]&nbsp;$stopyear&nbsp;����</B>.");
      endif;
      // ���� ��� ������ ������������ ���������� ���, �������� ��������� ���
      if ($time=="another"):
        if (checkdate($startmonth,$startday,$startyear)<>1): // ���� ���� ������� �������������� ��������� ����
          ShowErrorMessage("������ �������������� ��������� ����: <B>$startday&nbsp;".$months2[$startmonth]."&nbsp;$startyear&nbsp;����</B>!");
?>
  </BODY>
</HTML>
<?
          die("");
        endif;
        if (checkdate($stopmonth,$stopday,$stopyear)<>1): // ���� ���� ������� �������������� �������� ����
          ShowErrorMessage("������ �������������� �������� ����: <B>$stopday&nbsp;".$months2[$stopmonth]."&nbsp;$stopyear&nbsp;����</B>!");
?>
  </BODY>
</HTML>
<?
          die("");
        endif;
        if ((mktime(0,0,0,$stopmonth,$stopday,$stopyear)-mktime(0,0,0,$startmonth,$startday,$startyear))<0): // ���� ��������� ���� �������, ��� ��������
          ShowErrorMessage("����� ������������ �������� ���: ��������� ���� (<B>$startday&nbsp;".$months2[$startmonth]."&nbsp;$startyear&nbsp;����</B>) �������� ����� �������, ��� �������� ���� (<B>$stopday&nbsp;".$months2[$stopmonth]."&nbsp;$stopyear&nbsp;����</B>)!");
?>
  </BODY>
</HTML>
<?
          die("");
        endif;
        if ((mktime(0,0,0,$startmonth,$startday,$startyear)-mktime(0,0,0,$m,$d,$y))>0): // ���� ��������� "���������" ���� ������, ��� �������, ������� ��������� �� ������ � ���������� ���������
          ShowErrorMessage("��������� ���� ��������� ���� (<B>$startday&nbsp;".$months2[$startmonth]."&nbsp;$startyear&nbsp;����</B>) ������ ������� (<B>$d&nbsp;".$months2[$m]."&nbsp;$y&nbsp;����</B>)!");
?>
  </BODY>
</HTML>
<?
          die("");
        endif;
        if ((mktime(0,0,0,$stopmonth,$stopday,$stopyear)-mktime(0,0,0,$m,$d,$y))>0): // ���� �������� "���������" ���� ������, ��� �������, ������� ��������� �� ������ � ���������� ���������
          ShowErrorMessage("��������� ���� �������� ���� (<B>$stopday&nbsp;".$months2[$stopmonth]."&nbsp;$stopyear&nbsp;����</B>) ������ ������� (<B>$d&nbsp;".$months2[$m]."&nbsp;$y&nbsp;����</B>)!");
?>
  </BODY>
</HTML>
<?
          die("");
        endif;
      endif;
      // ���� ��������� ���� ��� �������� ���� ����� �������, � ��������� � ������� ���� �� ���������, ������ ��������� �� ������ � ��������� ������
      if (($time=="today")||(($time=="another")&&($startday==$stopday)&&($startmonth==$stopmonth)&&($startyear==$stopyear)&&($startday==$d)&&($startmonth==$m)&&($startyear==$y))):
        $thisdayrep=1; // ������������� ����, ����������, ��� ����� ����� �� ������� ����
        PrintMessage("INFORMATION", "Info", "�� ������� ��� ������������ ������ ������� ���� - <B>$startday&nbsp;".$months2[$startmonth]."&nbsp;$startyear&nbsp;����</B>.");
      elseif ((($startday==$d)&&($startmonth==$m)&&($startyear==$y))||(($stopday==$d)&&($stopmonth==$m)&&($stopyear==$y))):
        $s="";
        if (($startday!=$ldd)||($startmonth!=$ldm)||($startyear!=$ldy)):
          $s="&nbsp;-&nbsp;$ldd&nbsp;".$months2[$ldm]."&nbsp;$ldy&nbsp;����";
        endif;
        ShowErrorMessage("��������, �� ������������ ������ �� ��������� ���������� ������� ����������: ������������ ����� �� ��� ��������� ���������� ���� (<B>$startday&nbsp;".$months2[$startmonth]."&nbsp;$startyear&nbsp;����$s</B>) ����� ������ �������� �� ������� ���� (<B>$d&nbsp;".$months2[$m]."&nbsp;$y&nbsp;����</B>)!");
?>
  </BODY>
</HTML>
<?
        die("");
      else:
        $thisdayrep=0; // ������������� ����, ����������, ��� ����� ����� �� ��������� ���
        $s="";
        if (($startday==$stopday)&&($startmonth==$stopmonth)&&($startyear==$stopyear)):
          PrintMessage("INFORMATION", "Info", "�� ������� ��� ������������ ������ ��������� ���� - <B>$startday&nbsp;".$months2[$startmonth]."&nbsp;$startyear&nbsp;����</B>.");
        else:
          PrintMessage("INFORMATION", "Info", "�� ������� ��� ������������ ������ ��������� ���� - <B>� $startday&nbsp;".$months2[$startmonth]."&nbsp;$startyear&nbsp;���� �� $stopday&nbsp;".$months2[$stopmonth]."&nbsp;$stopyear&nbsp;����</B>.");
        endif;
      endif;
      // ��������� ���������� ��������
      switch ($action):
        case "print": $s="���������� ��������, ���������� � ���������� �� ���� ���� � ������"; break;
        case "email": $s="�������� �� ����������� �����"; break;
        default: $s=""; break;
      endswitch;
      if ($s!=""):
        PrintMessage("INFORMATION", "Info", "��������� ���� �������� - <B>$s</B>.");
      else:
        ShowErrorMessage("������� ����������� ��������!<BR>���������� � ��������-������������ ��� ���������� ��������������!");
?>
  </BODY>
</HTML>
<?
        die("");
      endif;
      // ��������� ������� ����������� �����, ���� ��������� �������� - �������� �� E-Mail
      if ($action=="email"):
        if ((($EMAIL1Addr!="")||($EMAIL1Name!=""))&&($DEBUG=="on")):
          PrintMessage("INFORMATION", "Info", "��������� ���� ��������� �������� #1 - <I>����:</I> <B>$EMAIL1Addr</B>, <I>����:</I> <B>$EMAIL1Name</B>.");
        endif;
        if ((($EMAIL2Addr!="")||($EMAIL2Name!=""))&&($DEBUG=="on")):
          PrintMessage("INFORMATION", "Info", "��������� ���� ��������� �������� #2 - <I>����:</I> <B>$EMAIL2Addr</B>, <I>����:</I> <B>$EMAIL2Name</B>.");
        endif;
        if ((($EMAIL3Addr!="")||($EMAIL3Name!=""))&&($DEBUG=="on")):
          PrintMessage("INFORMATION", "Info", "��������� ���� ��������� �������� #3 - <I>����:</I> <B>$EMAIL3Addr</B>, <I>����:</I> <B>$EMAIL3Name</B>.");
        endif;
        if (($EMAIL1Addr=="")&&($EMAIL2Addr=="")&&($EMAIL3Addr=="")):
          ShowErrorMessage("�� ������ �� ������ ��������! �� ������ ������� �����(�) ����������� ����� (e-mail) � ����(��) &laquo;<B>����</B>&raquo;.<BR>���������� � ��������-������������ ��� ���������� ��������������!");
?>
  </BODY>
</HTML>
<?
          die("");
        endif;
      endif;
      // ������������ ���������� ����, �������� � ������ � �������� ��� � ���������� $daycount
      $i=mktime(0,0,0,$stopmonth+0,$stopday+0,$stopyear+0)-mktime(0,0,0,$startmonth+0,$startday+0,$startyear+0);
      $daycount=0;
      while ($i>=-3600):
        $daycount++;
        $i=$i-(mktime(1,0,0,1,2,2000)-mktime(1,0,0,1,1,2000));
      endwhile;
      PrintMessage("INFORMATION", "Info", "���������� ���� �������� � ��������� ������: <B>$daycount</B>.");
      // ����������� ������ ���, �������� � ��������� ������
      $k=mktime(6,0,0,$startmonth+0,$startday+0,$startyear+0);
      $dates=array();
      for ($j=0; $j<$daycount; $j++):
        $cd=date("d",$k)+0;
        if ($cd<10): $cd="0".$cd; endif;
        $cm=date("m",$k)+0;
        if ($cm<10): $cm="0".$cm; endif;
        $cy=date("Y",$k)+0;
        $dates[]="".$cy.$cm.$cd;
        $k=$k+(mktime(1,0,0,1,2,2000)-mktime(1,0,0,1,1,2000));
      endfor;
      //var_dump($dates);
      // ����� ������ ����������� ������ ird_�������� � ������ �������
      $s="������ ��������� ������ ������, ����������� ��� ������������ ������:";
      foreach ($dates as $i):
        $s.="<BR><B>&nbsp;&nbsp;ird_".$i."<B>";
      endforeach;
      PrintMessage("INFORMATION", "Info", $s);
      // ������������� ��������� ��� ����������� � �������
      if ($thisdayrep==1): // ���� ����� ����� ������������ �� ������� ����
        $HostName="10.1.1.2";
        $DBName="statistika";
        $UserName="sel";
        $Password="";
      elseif ($thisdayrep==0): // ���� ����� ����� ������������ �� ��������� ���
        $HostName="10.1.1.240";
        $DBName="ird";
        $UserName="overseer";
        $Password="";
      endif;
      // ������� ����������� � ���������� �������
      $MySQLConnection=@mysql_connect($HostName,$UserName,$Password);
      // ���� �� ������� ������������ � ������� - ������ ��������� � ����� �� ������
      if ($MySQLConnection==FALSE):
        ShowErrorMessage("�� ������� ���������� ����������� � MySQL-������� <B>$HostName</B>!");
?>
  </BODY>
</HTML>
<?
        die("");
      endif;
      // ���� �� ������� ������� ���� ������ �� ������� - ����� �� ������
      if (@mysql_select_db("$DBName")==FALSE):
        ShowErrorMessage("�� ������� ���������� ����������� � �� <B>$DBName</B> �� MySQL-������� <B>$HostName</B>!");
?>
  </BODY>
</HTML>
<?
        die("");
      endif;
      // ���� ������� ������������ � � ������� � � ���� - ������ ��������� � ������ �������
      PrintMessage("SUCCESS", "My-SQL", "������� ���������� ����������� � �� <B>$DBName</B> �� MySQL-������� <B>$HostName</B>.");
      if ($thisdayrep==1): // ���� ����� ����� ������������ �� ������� ����
        // ��������� �� 10.1.1.2 ������� � �� statistika ������� "ird\_".$dates[0]  
        $q="SHOW TABLES FROM statistika LIKE 'ird\_".$dates[0]."';";
        PrintMessage("QUERY", "SQL", $q);
        $table=mysql_query($q);
        $num_rows=mysql_num_rows($table);
        if ($num_rows==1):
          PrintMessage("SUCCESS", "My-SQL", "������� ������ <B>ird_".$dates[0]."</B> �� ������� ���� (<B>".substr($dates[0],6,2)." ".$months2[(substr($dates[0],4,2))+0]." ".substr($dates[0],0,4)." ����</B>) � �� <B>statistika</B> �� MySQL-������� <B>$HostName</B> ������� �������.");
          // �.�. ������� ���� ������� ������� - ��������� �������� �� ������ ����������� ������
          $q="SELECT ani AS f1, datum AS f2, vrijeme AS f3, SEC_TO_TIME(dur) AS f4 FROM statistika.ird_".$dates[0]." WHERE datum=".$dates[0]." AND (dur>1) AND ((ddi LIKE '%2339535') OR (ddi='198') OR (ddi='001798')) AND (ani LIKE '%2370654') ORDER BY f2, f3;";
          PrintMessage("QUERY", "SQL", $q);
          $table=mysql_query($q);
          $num_rows=mysql_num_rows($table);
          if ($num_rows>0):
            PrintMessage("SUCCESS", "My-SQL", "������ ��&nbsp;<B>".substr($dates[0],6,2)."&nbsp;".$months2[(substr($dates[0],4,2))+0]."&nbsp;".substr($dates[0],0,4)."&nbsp;����</B> � ������� <B>ird_".$dates[0]."</B> �� <B>statistika</B> �� MySQL-������� <B>$HostName</B> ������� �������.");
          elseif ($num_rows==0):
            PrintMessage("WARNING", "My-SQL", "������ ��&nbsp;<B>".substr($dates[0],6,2)."&nbsp;".$months2[(substr($dates[0],4,2))+0]."&nbsp;".substr($dates[0],0,4)."&nbsp;����</B> � ������� <B>ird_".$dates[0]."</B> �� <B>statistika</B> �� MySQL-������� <B>$HostName</B> �����������.");
          else:
            ShowErrorMessage("�������� ������ ��������� ������ ��&nbsp;<B>".substr($dates[0],6,2)."&nbsp;".$months2[(substr($dates[0],4,2))+0]."&nbsp;".substr($dates[0],0,4)."&nbsp;����</B> �� ������� <B>ird_".$dates[0]."</B> �� <B>statistika</B> �� MySQL-������� <B>$HostName</B>!<BR>���������� � ��������-������������ ��� ���������� ��������������!");
          endif;
          // �������� ������ �� ������� ���� � �������� �� � ������
          $result_array=array();
          for ($j=0;$j<($num_rows);$j++):
            $tmp_array=mysql_fetch_assoc($table);
            $result_array[]=$tmp_array;
          endfor;
        else:
          // ���� ������� �� ������� - ������� �� ������
          ShowErrorMessage("� �� �� MySQL-������� <B>$HostName</B> �� ������� ������� ������ <B>ird_".$dates[0]."</B> �� ������� ���� (<B>".substr($dates[0],6,2)." ".$months2[(substr($dates[0],4,2))+0]." ".substr($dates[0],0,4)." ����</B>)!<BR>���������� � ��������-������������ ��� ���������� ��������������!");
        endif;
      elseif ($thisdayrep==0): // ���� ����� ����� ������������ �� ��������� ���
     
        PrintMessage("INFORMATION", "Info", "�������� ������� ���� ����������� ������ ������ (<B>ird.ird_<I>��������</I></B>)...");
        foreach ($dates as $i):
          $q="SHOW TABLES FROM ird LIKE 'ird\_$i';";
          PrintMessage("QUERY", "SQL", $q);
          $table=mysql_query($q);
          $num_rows=mysql_num_rows($table);
          if ($num_rows==0):
            ShowErrorMessage("����� �� ����� ���� ����������� �� ������� ���������� ������� ������ <B>ird.ird_".$i."</B>!<BR>���������� � ��������-������������ ��� ���������� ��������������!");
?>
  </BODY>
</HTML>
<?
            die("");
          elseif ($num_rows==1):
            PrintMessage("SUCCESS", "My-SQL", "������� ������ <B>ird.ird_".$i."</B> ������� �������.");
          else:
            ShowErrorMessage("���� ��� ������� ������ ������� ������ �� <B>".$months[$quart*3-(2-$i)]." $year ����</B> (<B>ird_".$i."</B>) � ���� ������ <B>ird</B>!<BR>���������� � ��������-������������ ��� ���������� ��������������!");
?>
  </BODY>
</HTML>
<?
            die("");
          endif;
        endforeach;
        // � ����� ������� ������� ��� ������� ������ ird
        // � ����� �������� ���������� ������� ird, �������� �� ��� ������ � �������� � ������
        $result_array=array();
        foreach ($dates as $i):
          $q="SELECT ani AS f1, datum AS f2, vrijeme AS f3, SEC_TO_TIME(dur) AS f4 FROM ird.ird_".$i." WHERE datum=".$i." AND (dur>1) AND ((ddi LIKE '%2339535') OR (ddi='198') OR (ddi='001798')) AND (ani LIKE '%2370654') ORDER BY f2, f3;";
          PrintMessage("QUERY", "SQL", $q);
          $table=mysql_query($q);
          $num_rows=mysql_num_rows($table);
          if ($num_rows>0):
            PrintMessage("SUCCESS", "My-SQL", "������ ��&nbsp;<B>".substr($i,6,2)."&nbsp;".$months2[(substr($i,4,2))+0]."&nbsp;".substr($i,0,4)."&nbsp;����</B> � ������� <B>ird_".$i."</B> �� <B>ird</B> �� MySQL-������� <B>$HostName</B> ������� �������.");
          elseif ($num_rows==0):
            PrintMessage("WARNING", "My-SQL", "������ ��&nbsp;<B>".substr($i,6,2)."&nbsp;".$months2[(substr($i,4,2))+0]."&nbsp;".substr($i,0,4)."&nbsp;����</B> � ������� <B>ird_".$i."</B> �� <B>ird</B> �� MySQL-������� <B>$HostName</B> �����������.");
          else:
            ShowErrorMessage("�������� ������ ��������� ������ ��&nbsp;<B>".substr($i,6,2)."&nbsp;".$months2[(substr($i,4,2))+0]."&nbsp;".substr($i,0,4)."&nbsp;����</B> �� ������� <B>ird_".$i."</B> �� <B>statistika</B> �� MySQL-������� <B>$HostName</B>!<BR>���������� � ��������-������������ ��� ���������� ��������������!");
          endif;
          // �������� ������ �� ������� ���� � �������� �� � ������
          for ($j=0;$j<($num_rows);$j++):
            $tmp_array=mysql_fetch_assoc($table);
            $result_array[]=$tmp_array;
          endfor;
        endforeach;
      endif;
      if ($DEBUG=="on"):
        //var_dump($result_array);
      endif;
      // � ����� ������� � ������� $result_array ��������� ��� ����������� ������
      // ������ ��������� �� �����
      // � ������, ���� ������ �� ��������� ������ ���, ������� ��������������� ��������� � ��������� ������ ���������
      $j=count($result_array);
      if ($j==0):
        $s="";
        if (($time=="yesterday")||(($time=="another")&&($startday==$stopday)&&($startmonth==$stopmonth)&&($startyear==$stopyear))):
          $s="(<B>$startday&nbsp;$months2[$startmonth]&nbsp;$startyear&nbsp;����</B>) ";
        elseif (($time=="lastweek")||($time=="lastmonth")||($time=="anothermonth")||($time=="another")):
          $s="(� <B>$startday&nbsp;$months2[$startmonth]&nbsp;$startyear&nbsp;����</B> �� <B>$stopday&nbsp;$months2[$stopmonth]&nbsp;$stopyear&nbsp;����</B>) ";
        endif;
?>
    <FORM METHOD="GET" ACTION="" STYLE="margin: 15px 15px 0px 15px; padding-bottom: 15px;">
      <CENTER> <!-- ������ ��� ��������� ��� ������������ ������� �� ������ � �������� MOZILLA -->
      <TABLE BGCOLOR="WHITE" WIDTH="640" ALIGN="CENTER" STYLE="border-color: black; border-width: 3; table-layout: fixed; empty-cells: show; float: none; clear: both; border-collapse: collapse;"> <!-- � ������ ������ ������������ ������� �� ������ - ALIGN="CENTER" ��������� �������������� IE � OPERA - � MOZILLA �� ��������! -->
        <THEAD ALIGN="CENTER" VALIGN="MIDDLE">
          <TR>
            <TD WIDTH="13"></TD>
            <TD WIDTH="13"></TD>
            <TD HEIGHT="15"></TD>
            <TD WIDTH="13"></TD>
            <TD WIDTH="13"></TD>
          </TR>
        </THEAD>
        <TFOOT ALIGN="CENTER" VALIGN="MIDDLE">
          <TR>
            <TD HEIGHT="15" COLSPAN="5"></TD>
          </TR>
          <TR>
            <TD COLSPAN="5">
              <INPUT TYPE="HIDDEN" NAME="step" VALUE="2">
              <INPUT TYPE="HIDDEN" NAME="rep" VALUE="<?echo $rep;?>">
              <INPUT TYPE="HIDDEN" NAME="time" VALUE="<?echo $time;?>">
              <INPUT TYPE="HIDDEN" NAME="abd" VALUE="<?echo $abd;?>">
              <INPUT TYPE="HIDDEN" NAME="abm" VALUE="<?echo $abm;?>">
              <INPUT TYPE="HIDDEN" NAME="aby" VALUE="<?echo $aby;?>">
              <INPUT TYPE="HIDDEN" NAME="aed" VALUE="<?echo $aed;?>">
              <INPUT TYPE="HIDDEN" NAME="aem" VALUE="<?echo $aem;?>">
              <INPUT TYPE="HIDDEN" NAME="aey" VALUE="<?echo $aey;?>">
<?
  if ($maker!=""):
?>
              <INPUT TYPE="HIDDEN" NAME="maker" VALUE="<?echo $maker;?>">
<?
  endif;
  if ($makerstate!=""):
?>
              <INPUT TYPE="HIDDEN" NAME="makerstate" VALUE="<?echo $makerstate;?>">
<?
  endif;
  if ($makerphone!=""):
?>
              <INPUT TYPE="HIDDEN" NAME="makerphone" VALUE="<?echo $makerphone;?>">
<?
  endif;
  if ($action!=""):
?>
              <INPUT TYPE="HIDDEN" NAME="action" VALUE="<?echo $action;?>">
<?
  endif;
  if ($EMAIL1Addr!=""):
?>
              <INPUT TYPE="HIDDEN" NAME="EMAIL1Addr" VALUE="<?echo $EMAIL1Addr;?>">
<?
  endif;
  if ($EMAIL1Name!=""):
?>
              <INPUT TYPE="HIDDEN" NAME="EMAIL1Name" VALUE="<?echo $EMAIL1Name;?>">
<?
  endif;
  if ($EMAIL2Addr!=""):
?>
              <INPUT TYPE="HIDDEN" NAME="EMAIL2Addr" VALUE="<?echo $EMAIL2Addr;?>">
<?
  endif;
  if ($EMAIL2Name!=""):
?>
              <INPUT TYPE="HIDDEN" NAME="EMAIL2Name" VALUE="<?echo $EMAIL2Name;?>">
<?
  endif;
  if ($EMAIL3Addr!=""):
?>
              <INPUT TYPE="HIDDEN" NAME="EMAIL3Addr" VALUE="<?echo $EMAIL3Addr;?>">
<?
  endif;
  if ($EMAIL3Name!=""):
?>
              <INPUT TYPE="HIDDEN" NAME="EMAIL3Name" VALUE="<?echo $EMAIL3Name;?>">
<?
  endif;
  if ($RECALC!=""):
?>
              <INPUT TYPE="HIDDEN" NAME="RECALC" VALUE="<?echo $RECALC;?>">
<?
  endif;
?>
              <INPUT TYPE="SUBMIT" VALUE="<<< �����" STYLE="border-color: black; border-width: 2;" ONMOUSEOVER="window.status='��� �������� � ���� ������ ���������� ������ ������� ������ &laquo;�����&raquo;';" ONMOUSEOUT="window.status='';">
            </TD>
          </TR>
          <TR>
            <TD HEIGHT="15" COLSPAN="5"></TD>
          </TR>
        </TFOOT>
        <TBODY ALIGN="CENTER" VALIGN="MIDDLE">
          <TR>
            <TD ROWSPAN="5"></TD>
            <TD WIDTH="13" ROWSPAN="5" BGCOLOR="#339999"></TD>
            <TD HEIGHT="15" BGCOLOR="#339999"></TD>
            <TD WIDTH="13" ROWSPAN="5" BGCOLOR="#339999"></TD>
            <TD ROWSPAN="5"></TD>
          </TR>
          <TR>
            <TD ALIGN="CENTER" BGCOLOR="#339999" STYLE="color: white;"><B>�������� ��������� �������!</B></TD>
          </TR>
          <TR>
            <TD HEIGHT="15" BGCOLOR="#339999"></TD>
          </TR>
          <TR>
            <TD STYLE="padding: 3px 5px;">�� ��������� ���� ������ ������� <?echo $s;?>�� ���� ������� �� ������ ������.<BR><BR>������� ������ <B>&laquo;�����&raquo;</B> ��� �������� � ����������� ���� ������������ ������.</TD>
          </TR>
          <TR>
            <TD HEIGHT="15" BGCOLOR="#339999"></TD>
          </TR>
        </TBODY>
      </TABLE>
      </CENTER>
    </FORM>
<?
        die("");
      endif;
      // ���������� ��������������� ������ ��� ����� ������
      $s="";
      if (($time=="yesterday")||(($time=="another")&&($startday==$stopday)&&($startmonth==$stopmonth)&&($startyear==$stopyear))):
        $s="�� ".$startday."&nbsp;".$months2[$startmonth]."&nbsp;".$startyear."&nbsp;����<BR>";
      elseif (($time=="lastweek")||($time=="lastmonth")||($time=="anothermonth")||($time=="another")):
        $s="�� ������ � ".$startday."&nbsp;".$months2[$startmonth]."&nbsp;".$startyear."&nbsp;���� �� ".$stopday."&nbsp;".$months2[$stopmonth]."&nbsp;".$stopyear."&nbsp;����<BR>";
      endif;
      $bodymessage="    <CENTER>
    <TABLE ALIGN=\"CENTER\" BORDER=\"1\" BGCOLOR=\"WHITE\" WIDTH=\"656\" STYLE=\"border-color: white; border-width: 0; table-layout: fixed; empty-cells: show; float: none; clear: both; border-collapse: collapse;\">
      <TBODY VALIGN=\"MIDDLE\" STYLE=\"border-color: white; border-width: 0;\">
        <TR>
          <TD HEIGHT=\"1px\" STYLE=\"border-color: white; border-width: 0;\" WIDTH=\"164px\"></TD>
          <TD HEIGHT=\"1px\" STYLE=\"border-color: white; border-width: 0;\" WIDTH=\"164px\"></TD>
          <TD HEIGHT=\"1px\" STYLE=\"border-color: white; border-width: 0;\" WIDTH=\"164px\"></TD>
          <TD HEIGHT=\"1px\" STYLE=\"border-color: white; border-width: 0;\" WIDTH=\"164px\"></TD>
        </TR>
        <TR>
          <TD COLSPAN=\"4\" STYLE=\"border-bottom-color: #CCCCCC; border-top-color: white; border-left-color: white; border-right-color: white; border-width: 0px 0px 1px 0px; font-size: 7pt; text-align: right;\">���������-�������������� ���<BR>������� &laquo;������� ��������� ���������� ����&raquo;<BR>��� &laquo;����������&raquo;</TD>
        </TR>
        <TR>
          <TD COLSPAN=\"4\" STYLE=\"border-color: white; border-width: 0; text-align: center; font-size: 13pt; font-weight: bold; padding: 20px 0px 3px 0px;\">���������� ������� ��������������<BR>�� ������ &laquo;Content Provider&raquo;<BR>".$s."</TD>
        </TR>
        <TR>
          <TD STYLE=\"text-align: center; border-width: 2px 2px 2px 2px; border-color: black; font-weight: bold; padding: 2px;\">����� ��������</TD>
          <TD STYLE=\"text-align: center; border-width: 2px 2px 2px 0px; border-color: black; font-weight: bold; padding: 2px;\">���� ������</TD>
          <TD STYLE=\"text-align: center; border-width: 2px 2px 2px 0px; border-color: black; font-weight: bold; padding: 2px;\">����� ������</TD>
          <TD STYLE=\"text-align: center; border-width: 2px 2px 2px 0px; border-color: black; font-weight: bold; padding: 2px;\">������������ ������</TD>
        </TR>
";
        for ($i=0;$i<count($result_array);$i++):
          if ($i==(count($result_array)-1)):
            $j=1;
          elseif ($result_array[$i+1]["f2"]!=$result_array[$i]["f2"]):
            $j=1;
          else:
            $j=0;
          endif;
          $bodymessage.="
        <TR>
          <TD STYLE=\"text-align: center; border-width: 0px 2px ".(1+$j)."px 2px; border-color: black; padding: 1px 2px;\">".$result_array[$i]["f1"]."</TD>
          <TD STYLE=\"text-align: center; border-width: 0px 2px ".(1+$j)."px 0px; border-color: black; padding: 1px 2px;\">".substr($result_array[$i]["f2"],8,2)."&nbsp;".$months2[substr($result_array[$i]["f2"],5,2)+0]."&nbsp;".substr($result_array[$i]["f2"],0,4)."&nbsp;����</TD>
          <TD STYLE=\"text-align: center; border-width: 0px 2px ".(1+$j)."px 0px; border-color: black; padding: 1px 2px;\">".$result_array[$i]["f3"]."</TD>
          <TD STYLE=\"text-align: center; border-width: 0px 2px ".(1+$j)."px 0px; border-color: black; padding: 1px 2px;\">".$result_array[$i]["f4"]."</TD>
        </TR>";
        endfor;
        $bodymessage.="
        <TR>
          <TD VALIGN=\"TOP\" COLSPAN=\"4\" STYLE=\"text-align: left; media: print, screen; font-size: 7pt; border-color: white; border-width: 0; padding-top: 20px;\">";
        if (($maker!="")||($makerstate!="")||($makerphone!="")) $bodymessage.="�����������:";
        if ($makerstate!="") $bodymessage.="<BR>$makerstate";
        if ($maker!="") $bodymessage.="<BR>$maker";
        if ($makerphone!="") $bodymessage.="<BR>$makerphone";
        $bodymessage.="</TD>
        <TR>
           <TD COLSPAN=\"4\" HEIGHT=\"20\" STYLE=\"text-align: left; color: #EEEEEE; font-size: 5pt; border-color: white; border-width: 1px 0px 0px 0px; padding-top: 1px;\"></TD>
        </TR>
        <TR>
           <TD COLSPAN=\"4\" STYLE=\"text-align: center; font-size: 5pt; border-bottom-color: white; border-top-color: #CCCCCC; border-left-color: white; border-right-color: white; border-width: 1px 0px 0px 0px; padding-top: 1px;\">����� ����������� $d ".$months2[$m]." $y ���� � ".date("H:i:s")." ��� ������ ������������ ��������� &laquo;OVERSEER&raquo;, &copy;&nbsp;2006&nbsp;by&nbsp;Vlad&nbsp;Ivanov</TD>
        </TR>
      </TBODY>
    </TABLE>
    </CENTER>
";
      if ($action=="print"):
        PrintMessage("INFORMATION", "Info", "����������� ����� ������ �� ����� ��� ���������/������. ������� ������� ������ ��������� ����� ������.");
        echo $bodymessage;
      elseif ($action=="email"):
        PrintMessage("INFORMATION", "Info", "����������� �������� ������ ��������� ��������� (��. ����).");
        $message="<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">
<HTML>
  <HEAD>
    <TITLE>".$reports[$rep]["������������"]."</TITLE>
    <META CONTENT=\"no-cache\" HTTP-EQUIV=\"pragma\">
    <META CONTENT=\"no-cache\" HTTP-EQUIV=\"cache-control\">
    <META CONTENT=\"Dynamic\" NAME=\"Document-state\">
    <META CONTENT=\"text/html; charset=Windows-1251\" HTTP-EQUIV=\"Content-Type\">
    <LINK REL=\"author\" HREF=\"http://vladracoola.by.ru/index1.html\">
    <STYLE MEDIA=\"screen, print\" TYPE=\"text/css\">
      * {
        font-family: Verdana, Arial, Helvetica, sans-serif;
        font-size: 8pt;
        padding: 0;
        margin: 0;
        border-color: transparent;
        border-width: 0;
        border-style: solid;
        }
      TABLE, TD {
        border-style: solid;
      }
    </STYLE>
  </HEAD>
  <BODY>
".$bodymessage."
  </BODY>
</HTML>";
        $s="";
        // �������� ����� ��������� � ������ ���� ��� ������ ��������������� ����� � ��������� ���� ���������
        if (($EMAIL1Addr!="")&&($action=="email")&&($message!="")):
          $Headers="Priority: urgent\nMIME-Version: 1.0\nContent-Type: text/html; charset=Windows-1251\nFrom: \"���������-�������������� ��� ������� ���� ��� ����������\" <sic009@tut.by>\nTo: ";
          if ($EMAIL1Name!=""): $Headers.="\"$EMAIL1Name\" "; endif;
          $Headers.="<$EMAIL1Addr>\nContent-Type: text/html; charset=Windows-1251";
          if (mail("$EMAIL1Addr",$Subject,$message,$Headers)):
            if ($EMAIL1Name!=""): $s=" <B>$EMAIL1Name</B>"; endif;
            $d=$DEBUG;
            $DEBUG="on";
            PrintMessage("SUCCESS", "����", "�������� ������$s �� ������ <B>$EMAIL1Addr</B> ������ �������.");
            $DEBUG=$d;
          else:
            if ($EMAIL1Name!=""): $s=" <B>$EMAIL1Name</B>"; endif;
            ShowErrorMessage("�� ������� ��������� �����$s �� ������ <B>$EMAIL1Addr</B>!<BR>���������� � ��������-������������ ��� ���������� ��������������!");
?>
  </BODY>
</HTML>
<?
            die("");
          endif;
        endif;
        if (($EMAIL2Addr!="")&&($action=="email")&&($message!="")):
          $Headers="Priority: urgent\nMIME-Version: 1.0\nContent-Type: text/html; charset=Windows-1251\nFrom: \"���������-�������������� ��� ������� ���� ��� ����������\" <sic009@tut.by>\nTo: ";
          if ($EMAIL2Name!=""): $Headers.="\"$EMAIL2Name\" "; endif;
          $Headers.="<$EMAIL2Addr>\nContent-Type: text/html; charset=Windows-1251";
          if (mail("$EMAIL2Addr",$Subject,$message,$Headers)):
            if ($EMAIL2Name!=""): $s=" <B>$EMAIL2Name</B>"; endif;
            $d=$DEBUG;
            $DEBUG="on";
            PrintMessage("SUCCESS", "����", "�������� ������$s �� ������ <B>$EMAIL2Addr</B> ������ �������.");
            $DEBUG=$d;
          else:
            if ($EMAIL2Name!=""): $s=" <B>$EMAIL2Name</B>"; endif;
            ShowErrorMessage("�� ������� ��������� �����$s �� ������ <B>$EMAIL2Addr</B>!<BR>���������� � ��������-������������ ��� ���������� ��������������!");
?>
  </BODY>
</HTML>
<?
            die("");
          endif;
        endif;
        if (($EMAIL3Addr!="")&&($action=="email")&&($message!="")):
          $Headers="Priority: urgent\nMIME-Version: 1.0\nContent-Type: text/html; charset=Windows-1251\nFrom: \"���������-�������������� ��� ������� ���� ��� ����������\" <sic009@tut.by>\nTo: ";
          if ($EMAIL3Name!=""): $Headers.="\"$EMAIL3Name\" "; endif;
          $Headers.="<$EMAIL3Addr>\nContent-Type: text/html; charset=Windows-1251";
          if (mail("$EMAIL3Addr",$Subject,$message,$Headers)):
            if ($EMAIL3Name!=""): $s=" <B>$EMAIL3Name</B>"; endif;
            $d=$DEBUG;
            $DEBUG="on";
            PrintMessage("SUCCESS", "����", "�������� ������$s �� ������ <B>$EMAIL3Addr</B> ������ �������.");
            $DEBUG=$d;
          else:
            if ($EMAIL3Name!=""): $s=" <B>$EMAIL3Name</B>"; endif;
            ShowErrorMessage("�� ������� ��������� �����$s �� ������ <B>$EMAIL3Addr</B>!<BR>���������� � ��������-������������ ��� ���������� ��������������!");
?>
  </BODY>
</HTML>
<?
            die("");
          endif;
        endif;
      endif;  
      mysql_close($MySQLConnection);
      PrintMessage("SUCCESS", "My-SQL", "��������� ���������� �� MySQL-������� <B>$HostName</B>.");
?>
  </BODY>
</HTML>
