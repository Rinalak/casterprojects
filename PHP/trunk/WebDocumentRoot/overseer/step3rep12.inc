<?
// CREATE TABLE overseer.rep14 (id int(10) unsigned NOT NULL auto_increment, yearmonth char(6) NOT NULL default '', connections_quantity int(10) unsigned NOT NULL default '0', succesful_connections_quantity int(10) unsigned NOT NULL default '0', created timestamp(14) NOT NULL, PRIMARY KEY  (`id`), UNIQUE KEY `id` (`id`)) TYPE=MyISAM COMMENT='���������� �� ���������� ���������� �� ���������� �������';
$DEBUG="off";
function PrintMessage($at, $as, $bs)
{
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
}

function ShowErrorMessage($as, $rep, $time, $amm, $amy, $maker, $makerstate, $makerphone, $action, $EMAIL1Addr, $EMAIL1Name, $EMAIL2Addr, $EMAIL2Name, $EMAIL3Addr, $EMAIL3Name, $RECALC, $FROMSTARTOFYEAR)
{
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
              <INPUT TYPE="HIDDEN" NAME="amm" VALUE="<?echo $amm;?>">
              <INPUT TYPE="HIDDEN" NAME="amy" VALUE="<?echo $amy;?>">
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
  if ($FROMSTARTOFYEAR!=""):
?>
              <INPUT TYPE="HIDDEN" NAME="FROMSTARTOFYEAR" VALUE="<?echo $FROMSTARTOFYEAR;?>">
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
    <TITLE><?echo $reports[12]["������������"];?></TITLE>
    <META CONTENT="no-cache" HTTP-EQUIV="pragma">
    <META CONTENT="no-cache" HTTP-EQUIV="cache-control">
    <META CONTENT="Dynamic" NAME="Document-state">
    <META CONTENT="text/html; charset=Windows-1251" HTTP-EQUIV="Content-Type">
    <LINK REL="home" HREF="<?echo $base_url;?>">
    <LINK REL="first" HREF="<?echo $base_url;?>">
    <LINK REL="previous" HREF="<?echo $base_url;?>?step=2&amp;rep=<?echo $rep;?>&amp;time=<?echo $time;
      if ($amm!=""): echo "&amp;amm=$amm"; endif;
      if ($amy!=""): echo "&amp;amy=$amy"; endif;
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
      if ($RECALC!=""): echo "&amp;RECALC=$RECALC"; endif;
      if ($FROMSTARTOFYEAR!=""): echo "&amp;FROMSTARTOFYEAR=$FROMSTARTOFYEAR"; endif;?>">
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
      if (($time!="lastmonth")&&($time!="anothermonth")): // ���� ��������� ���������� �� �������� �� ��� ���� �� ����������� - ������� ��������� �� ������ � ���������� ���������
        ShowErrorMessage("����� ������������ ��������� ����������!<BR>���������� � ��������-������������ ��� ���������� ��������������!", $rep, $time, $amm, $amy, $maker, $makerstate, $makerphone, $action, $EMAIL1Addr, $EMAIL1Name, $EMAIL2Addr, $EMAIL2Name, $EMAIL3Addr, $EMAIL3Name, $RECALC, $FROMSTARTOFYEAR);
?>
  </BODY>
</HTML>
<?
        die("");
      endif;
      // ����� ���������� ���������� � ������ �������������
      if ($DEBUG=="on"):
        PrintMessage("INFORMATION", "Info", "��������� ���� ��������� ������ - <B>$months[$startmonth]&nbsp;$startyear&nbsp;����</B>.");
      endif;
      // ���� ��� ������ ������������ �����, �������� ��������� ����
      if ($time=="anothermonth"):
        if (checkdate($startmonth,$startday,$startyear)<>1): // ���� ���� ������� �������������� ����
          ShowErrorMessage("����� �������������� �����! ����������, ��������� � ����������� ���� � ��������� ����.<BR>���� ������ ����� �����������, ���������� � ��������-������������ ��� ���������� ��������������!", $rep, $time, $amm, $amy, $maker, $makerstate, $makerphone, $action, $EMAIL1Addr, $EMAIL1Name, $EMAIL2Addr, $EMAIL2Name, $EMAIL3Addr, $EMAIL3Name, $RECALC, $FROMSTARTOFYEAR);
?>
  </BODY>
</HTML>
<?
          die("");
        endif;
        if ((mktime(0,0,0,$startmonth,$startday,$startyear)-mktime(0,0,0,$m,$d,$y))>0): // ���� ��������� "���������" ���� ������, ��� �������, ������� ��������� �� ������ � ���������� ���������
          ShowErrorMessage("���� ������ ���������� ���� ������ (<B>$startday&nbsp;".$months2[$startmonth]."&nbsp;$startyear&nbsp;����</B>) ������ ������� (<B>$d&nbsp;".$months2[$m]."&nbsp;$y&nbsp;����</B>)!", $rep, $time, $amm, $amy, $maker, $makerstate, $makerphone, $action, $EMAIL1Addr, $EMAIL1Name, $EMAIL2Addr, $EMAIL2Name, $EMAIL3Addr, $EMAIL3Name, $RECALC, $FROMSTARTOFYEAR);
?>
  </BODY>
</HTML>
<?
          die("");
        endif;
        if ((mktime(0,0,0,$stopmonth,$stopday,$stopyear)-mktime(0,0,0,$m,$d,$y))>0): // ���� �������� "���������" ���� ������, ��� �������, ������� ��������� �� ������ � ���������� ���������
          ShowErrorMessage("���� ��������� ���������� ���� ������ (<B>$stopday&nbsp;".$months2[$stopmonth]."&nbsp;$stopyear&nbsp;����</B>) ������ ������� (<B>$d&nbsp;".$months2[$m]."&nbsp;$y&nbsp;����</B>)!", $rep, $time, $amm, $amy, $maker, $makerstate, $makerphone, $action, $EMAIL1Addr, $EMAIL1Name, $EMAIL2Addr, $EMAIL2Name, $EMAIL3Addr, $EMAIL3Name, $RECALC, $FROMSTARTOFYEAR);
?>
  </BODY>
</HTML>
<?
          die("");
        endif;
      endif;
      // ��������� ���������� ��������
      switch ($action):
        case "print": $s="���������� ��������, ���������� � ���������� �� ���� ���� � ������"; break;
        case "email": $s="�������� �� ����������� �����"; break;
        default: $s=""; break;
      endswitch;
      if ($s!=""):
        if ($DEBUG=="on"):
          PrintMessage("INFORMATION", "Info", "��������� ���� �������� - <B>$s</B>.");
        endif;
      else:
        ShowErrorMessage("������� ����������� ��������!<BR>���������� � ��������-������������ ��� ���������� ��������������!", $rep, $time, $amm, $amy, $maker, $makerstate, $makerphone, $action, $EMAIL1Addr, $EMAIL1Name, $EMAIL2Addr, $EMAIL2Name, $EMAIL3Addr, $EMAIL3Name, $RECALC, $FROMSTARTOFYEAR);
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
          ShowErrorMessage("�� ������ �� ������ ��������! �� ������ ������� �����(�) ����������� ����� (e-mail) � ����(��) &laquo;<B>����</B>&raquo;.<BR>���������� � ��������-������������ ��� ���������� ��������������!", $rep, $time, $amm, $amy, $maker, $makerstate, $makerphone, $action, $EMAIL1Addr, $EMAIL1Name, $EMAIL2Addr, $EMAIL2Name, $EMAIL3Addr, $EMAIL3Name, $RECALC, $FROMSTARTOFYEAR);
?>
  </BODY>
</HTML>
<?
          die("");
        endif;
      endif;
      // ����������� � MySQL-�������
      $HostName="10.1.1.240";
      $UserName="overseer";
      $Password="";
      $DBName="orda";
      $MySQLConnection=@mysql_connect($HostName,$UserName,$Password);
      if ($MySQLConnection==FALSE):
        ShowErrorMessage("�� ������� ���������� ����������� � MySQL-������� <B>$HostName</B>!<BR>���������� � ��������-������������ ��� ���������� ��������������!", $rep, $time, $amm, $amy, $maker, $makerstate, $makerphone, $action, $EMAIL1Addr, $EMAIL1Name, $EMAIL2Addr, $EMAIL2Name, $EMAIL3Addr, $EMAIL3Name, $RECALC, $FROMSTARTOFYEAR);
?>
  </BODY>
</HTML>
<?
        die("");
      endif;
      if (@mysql_select_db("$DBName")==FALSE):
        ShowErrorMessage("�� ������� ���������� ����������� � �� <B>$DBName</B> �� MySQL-������� <B>$HostName</B>!<BR>���������� � ��������-������������ ��� ���������� ��������������!", $rep, $time, $amm, $amy, $maker, $makerstate, $makerphone, $action, $EMAIL1Addr, $EMAIL1Name, $EMAIL2Addr, $EMAIL2Name, $EMAIL3Addr, $EMAIL3Name, $RECALC, $FROMSTARTOFYEAR);
?>
  </BODY>
</HTML>
<?
        die("");
      endif;
      if ($DEBUG=="on"): PrintMessage("SUCCESS", "My-SQL", "������� ���������� ����������� � �� <B>$DBName</B> �� MySQL-������� <B>$HostName</B>."); endif;
      // �������� ������� ������ ��
      $q="SHOW TABLES FROM orda LIKE 'orda_%';";
      if ($DEBUG=="on"): PrintMessage("QUERY", "SQL", $q); endif;
      $table=mysql_query($q);
      $num_rows=mysql_num_rows($table);
      if ($num_rows<1):
        ShowErrorMessage("�� ������� �� ����� ������� ������ � �� <B>orda</B> �� MySQL-������� <B>$HostName</B>!<BR>���������� � ��������-������������ ��� ���������� ��������������!", $rep, $time, $amm, $amy, $maker, $makerstate, $makerphone, $action, $EMAIL1Addr, $EMAIL1Name, $EMAIL2Addr, $EMAIL2Name, $EMAIL3Addr, $EMAIL3Name, $RECALC, $FROMSTARTOFYEAR);
?>
  </BODY>
</HTML>
<?
        die("");
      endif;
      // �������������� ������������� ����������
      $b=TRUE;
      $orda_founded=array();
      $orda_failed=array();
      // �������� � ������������ ������ $result_array ������ ���� �������� ������ ord_��������
      for ($i=0;$i<($num_rows);$i++):
        $tmp_array=mysql_fetch_array($table, MYSQL_NUM);
        $orda_founded[]=$tmp_array[0];
      endfor;
      $orda_must=array();
      // ���������� ������� ����������� ������
      if ($FROMSTARTOFYEAR=="on"):
        $cm=1;
      else:
        $cm=$startmonth+0;
      endif;
      $cy=$startyear+0;
      while ((mktime(0,0,0,$stopmonth,1,$startyear)-mktime(0,0,0,$cm,1,$cy))>=0):
        if ($cm<10):
          $orda_must[]="orda_".$cy."0".$cm;
        else:
          $orda_must[]="orda_".$cy.$cm;
        endif;
        if ($cm==12):
          $cm=1;
          $cy++;
        else:
          $cm++;
        endif;
      endwhile;
      //var_dump($orda_must);
      // ������������ ������� ����������� ������
      foreach ($orda_must as $j):
        if (!(in_array($j, $orda_founded))):
          if (!(in_array($j, $orda_failed))):
            $orda_failed[]=$j;
          endif;
          $b=FALSE;
        endif;
      endforeach;
      if ($b==FALSE):
        // ����� ������ ��� ���������� ��������� ������ ��
        $s="�� ������� ����� ��������� ������� ���� ������ <B>orda</B> �� MySQL-������� <B>$HostName</B>:";
        sort($orda_failed);
        foreach ($orda_failed as $i):
          $s.="<BR>".$i;
        endforeach;
        ShowErrorMessage("$s<BR>���������� � ��������-������������ ��� ���������� ��������������!", $rep, $time, $amm, $amy, $maker, $makerstate, $makerphone, $action, $EMAIL1Addr, $EMAIL1Name, $EMAIL2Addr, $EMAIL2Name, $EMAIL3Addr, $EMAIL3Name, $RECALC, $FROMSTARTOFYEAR);
?>
  </BODY>
</HTML>
<?
        die("");
      endif;
      // � ����� ������� ��� �������� ���������, ��� ����������� ����� �������
      // ����� �������� ���������� ����������� �������� � ������������� ���� ������
      // ���������� ����� �������
      $q="";
      $result_array=array();
      for ($j=0;$j<count($orda_must);$j++):
        $q="SELECT CONCAT(LEFT(RIGHT('".$orda_must[$j]."',6),4),'         ') UNION SELECT RIGHT('".$orda_must[$j]."',2) UNION SELECT COUNT(*) FROM orda.".$orda_must[$j]." UNION SELECT COUNT(*) FROM orda.".$orda_must[$j]." WHERE dur>0 AND v_mreza!='';";
        if ($DEBUG=="on"): PrintMessage("QUERY", "SQL", $q); endif;
        $table=mysql_query($q);
        $num_rows=mysql_num_rows($table);
        if ($num_rows!=4):
          ShowErrorMessage("���� ��� ������� ��������� ������ �� ������� <B>".$orda_must[$j]."</B> ���� ������ <B>orda</B></B>!<BR>���������� � ��������-������������ ��� ���������� ��������������!", $rep, $time, $amm, $amy, $maker, $makerstate, $makerphone, $action, $EMAIL1Addr, $EMAIL1Name, $EMAIL2Addr, $EMAIL2Name, $EMAIL3Addr, $EMAIL3Name, $RECALC, $FROMSTARTOFYEAR);
?>
  </BODY>
</HTML>
<?
          die("");
        endif;
        $result_array[]=array("���"=>(mysql_result($table, 0)+0),"�����"=>mysql_result($table, 1),"���������� �������"=>(mysql_result($table, 2)+0),"���������� ������������� �������"=>(mysql_result($table, 3)+0));
      endfor;
      //var_dump($result_array);
      if ($FROMSTARTOFYEAR=="on"):
        $s="���������� �� ���������� ���������� �� ���������� �������, ��������� ���������-�������������� ����� � ������<BR>� 1&nbsp;".$months2[1]."&nbsp;$startyear&nbsp;���� �� ".$stopday."&nbsp;".$months2[$stopmonth]."&nbsp;$stopyear&nbsp;����";
      else:
        $s="���������� �� ���������� ���������� �� ���������� �������, ��������� ���������-�������������� ����� � ������<BR>� $startday&nbsp;".$months2[$startmonth]."&nbsp;$startyear&nbsp;���� �� ".$stopday."&nbsp;".$months2[$stopmonth]."&nbsp;$stopyear&nbsp;����";
      endif;
      $bodymessage="    <CENTER>
    <TABLE ALIGN=\"CENTER\" BORDER=\"1\" BGCOLOR=\"WHITE\" WIDTH=\"656\" STYLE=\"border-color: white; border-width: 0; table-layout: fixed; empty-cells: show; float: none; clear: both; border-collapse: collapse;\">
      <TBODY VALIGN=\"MIDDLE\" STYLE=\"border-color: white; border-width: 0;\">
        <TR>
          <TD HEIGHT=\"1px\" STYLE=\"border-color: white; border-width: 0;\" WIDTH=\"82px\"></TD>
          <TD HEIGHT=\"1px\" STYLE=\"border-color: white; border-width: 0;\" WIDTH=\"145px\"></TD>
          <TD HEIGHT=\"1px\" STYLE=\"border-color: white; border-width: 0;\" WIDTH=\"349px\"></TD>
        </TR>
        <TR>
          <TD COLSPAN=\"3\" STYLE=\"border-bottom-color: #CCCCCC; border-top-color: white; border-left-color: white; border-right-color: white; border-width: 0px 0px 1px 0px; font-size: 7pt; text-align: right;\">���������-�������������� ���<BR>������� &laquo;������� ��������� ���������� ����&raquo;<BR>��� &laquo;����������&raquo;</TD>
        </TR>
        <TR>
          <TD COLSPAN=\"3\" STYLE=\"border-color: white; border-width: 0; text-align: center; font-size: 13pt; font-weight: bold; padding: 50px 0px 10px 0px;\">".$s."</TD>
        </TR>
        <TR>
          <TD STYLE=\"text-align: center; border-width: 2px 2px 2px 2px; border-color: black; font-weight: bold; padding: 2px;\">�����, ���</TD>
          <TD STYLE=\"text-align: center; border-width: 2px 2px 2px 0px; border-color: black; font-weight: bold; padding: 2px;\">���������� ����������</TD>
          <TD STYLE=\"text-align: center; border-width: 2px 2px 2px 0px; border-color: black; font-weight: bold; padding: 2px;\">���������� ����������, ������������� ������� ��������</TD>
        </TR>";
      for ($i=0;$i<(count($result_array));$i++):
        $bodymessage.="
        <TR>
          <TD STYLE=\"text-align: center; border-width: 0px 2px ".(1+($i==(count($result_array)-1)))."px 2px; border-color: black; padding: 1px 2px;\">".ucfirst($months[$result_array[$i]["�����"]+0])." ".$result_array[$i]["���"]."</TD>
          <TD STYLE=\"text-align: center; border-width: 0px 2px ".(1+($i==(count($result_array)-1)))."px 0px; border-color: black; padding: 1px 2px;\">".$result_array[$i]["���������� �������"]."</TD>
          <TD STYLE=\"text-align: center; border-width: 0px 2px ".(1+($i==(count($result_array)-1)))."px 0px; border-color: black; padding: 1px 2px;\">".$result_array[$i]["���������� ������������� �������"]."</TD>
        </TR>";
      endfor;
      $bodymessage.="
        <TR>
          <TD VALIGN=\"TOP\" COLSPAN=\"3\" STYLE=\"text-align: left; media: print, screen; font-size: 7pt; border-color: white; border-width: 0; padding-top: 20px;\">";
        if (($maker!="")||($makerstate!="")||($makerphone!="")) $bodymessage.="�����������:";
        if ($makerstate!="") $bodymessage.="<BR>$makerstate";
        if ($maker!="") $bodymessage.="<BR>$maker";
        if ($makerphone!="") $bodymessage.="<BR>$makerphone";
        $bodymessage.="</TD>
        <TR>
           <TD COLSPAN=\"3\" HEIGHT=\"".(702-(count($result_array)*13))."\" STYLE=\"text-align: left; color: #EEEEEE; font-size: 5pt; border-color: white; border-width: 1px 0px 0px 0px; padding-top: 1px;\"></TD>
        </TR>
        <TR>
           <TD COLSPAN=\"3\" STYLE=\"text-align: center; font-size: 5pt; border-bottom-color: white; border-top-color: #CCCCCC; border-left-color: white; border-right-color: white; border-width: 1px 0px 0px 0px; padding-top: 1px;\">����� ����������� $d ".$months2[$m]." $y ���� � ".date("H:i:s")." ��� ������ ������������ ��������� &laquo;OVERSEER&raquo;, &copy;&nbsp;2006&nbsp;by&nbsp;Vlad&nbsp;Ivanov</TD>
        </TR>
      </TBODY>
    </TABLE>
    </CENTER>
";
      if ($action=="print"):
        if ($DEBUG=="on"): PrintMessage("INFORMATION", "Info", "����������� ����� ������ �� ����� ��� ���������/������. ������� ������� ������ ��������� ����� ������."); endif;
        echo $bodymessage;
      elseif ($action=="email"):
        if ($DEBUG=="on"): PrintMessage("INFORMATION", "Info", "����������� �������� ������ ��������� ��������� (��. ����)."); endif;
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
            PrintMessage("SUCCESS", "����", "�������� ������$s �� ������ <B>$EMAIL1Addr</B> ������ �������.");
          else:
            if ($EMAIL1Name!=""): $s=" <B>$EMAIL1Name</B>"; endif;
            ShowErrorMessage("�� ������� ��������� �����$s �� ������ <B>$EMAIL1Addr</B>!<BR>���������� � ��������-������������ ��� ���������� ��������������!", $rep, $time, $aqq, $aqy, $maker, $makerstate, $makerphone, $action, $EMAIL1Addr, $EMAIL1Name, $EMAIL2Addr, $EMAIL2Name, $EMAIL3Addr, $EMAIL3Name, $RECALC);
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
            PrintMessage("SUCCESS", "����", "�������� ������$s �� ������ <B>$EMAIL2Addr</B> ������ �������.");
          else:
            if ($EMAIL2Name!=""): $s=" <B>$EMAIL2Name</B>"; endif;
            ShowErrorMessage("�� ������� ��������� �����$s �� ������ <B>$EMAIL2Addr</B>!<BR>���������� � ��������-������������ ��� ���������� ��������������!", $rep, $time, $aqq, $aqy, $maker, $makerstate, $makerphone, $action, $EMAIL1Addr, $EMAIL1Name, $EMAIL2Addr, $EMAIL2Name, $EMAIL3Addr, $EMAIL3Name, $RECALC);
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
            PrintMessage("SUCCESS", "����", "�������� ������$s �� ������ <B>$EMAIL3Addr</B> ������ �������.");
          else:
            if ($EMAIL3Name!=""): $s=" <B>$EMAIL3Name</B>"; endif;
            ShowErrorMessage("�� ������� ��������� �����$s �� ������ <B>$EMAIL3Addr</B>!<BR>���������� � ��������-������������ ��� ���������� ��������������!", $rep, $time, $aqq, $aqy, $maker, $makerstate, $makerphone, $action, $EMAIL1Addr, $EMAIL1Name, $EMAIL2Addr, $EMAIL2Name, $EMAIL3Addr, $EMAIL3Name, $RECALC);
?>
  </BODY>
</HTML>
<?
            die("");
          endif;
        endif;
      endif;
      mysql_close($MySQLConnection);
      if ($DEBUG=="on"): PrintMessage("SUCCESS", "My-SQL", "��������� ���������� �� MySQL-������� <B>$HostName</B>."); endif;
?>
  </BODY>
</HTML>
