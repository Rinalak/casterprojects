<?
//$DEBUG="on";
$ird_founded = array();
$ird_failed = array();
$ird_must =  array();
if ($startmonth<10) $startmonth="0$startmonth";

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
    <TABLE STYLE="margin: 3px 5px;">
      <TR>
        <TD WIDTH="100" ALIGN="CENTER" STYLE="padding: 3px 5px; border-color: black; border-width: 1px; color: <?echo $cf;?>; background: <?echo $cb;?>; font-weight: bold;"><?echo $as;?></TD>
        <TD STYLE="padding: 3px 5px;"><?echo $bs;?></TD>
      </TR>
    </TABLE>
<?
}

function ShowErrorMessage($as, $rep, $time, $amm, $amy)
{
?>
    <FORM METHOD="GET" ACTION="" STYLE="margin: 15px 15px 0px 15px; padding-bottom: 15px;">
      <CENTER> <!-- ������ ��� ��������� ��� ������������ ������� �� ������ � �������� MOZILLA -->
      <TABLE BGCOLOR="WHITE" WIDTH="640" ALIGN="CENTER" STYLE="border-color: black; border-width: 3;"> <!-- � ������ ������ ������������ ������� �� ������ - ALIGN="CENTER" ��������� �������������� IE � OPERA - � MOZILLA �� ��������! -->
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
              <INPUT TYPE="HIDDEN" NAME="time" VALUE="<?print $time;?>">
              <INPUT TYPE="HIDDEN" NAME="amm" VALUE="<?print $amm;?>">
              <INPUT TYPE="HIDDEN" NAME="amy" VALUE="<?print $amy;?>">
<?
    if ($RECALC=="on"):
?>
              <INPUT TYPE="HIDDEN" NAME="RECALC" VALUE="<?print $RECALC;?>">
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
    <TITLE>������������ ������� arj.irda_<?echo "$year$month";?> �� ������� MAINSERVER</TITLE>
    <META CONTENT="no-cache" HTTP-EQUIV="pragma">
    <META CONTENT="no-cache" HTTP-EQUIV="cache-control">
    <META CONTENT="Dynamic" NAME="Document-state">
    <META CONTENT="text/html; charset=Windows-1251" HTTP-EQUIV="Content-Type">
    <LINK REL="home" HREF="http://10.1.1.250/ns2/">
    <LINK REL="first" HREF="http://10.1.1.250/ns2/">
    <LINK REL="previous" HREF="http://10.1.1.250/ns2/?step=2&amp;rep=<?echo $rep;?>&amp;time=<?echo $time;?>&amp;amm=<?echo $amm;?>&amp;amy=<?echo $amy;?><?if ($RECALC=="on"): echo "&amp;RECALC=$RECALC"; endif;?>">
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
      TABLE, TD, TH {
        border-style: solid;
      }
      TABLE {
        table-layout: fixed;
        empty-cells: show;
        float: none;
        clear: both;
        border-collapse: collapse;
        }
    </STYLE>
  </HEAD>
  <BODY BGCOLOR="gainsboro">
<?
    if (($startyear>=$y)&&($startmonth>$m)): // ���� ��������� ����� ������ ����� ������� ��� ������� �����, ������� ��������� �� ������ � ���������� ���������
      ShowErrorMessage("����������� ������������ ������ <B>������ �� ��������� ������</B> (�� ������� � ��� ���������� ������)!<BR>������� ������ <B>$d $months2[$m] $y ����</B>, � �� ��������� ������������ ������� ������� �� <B>$months[$startmonth] $startyear ����</B>.", $rep, $time, $amm, $amy);
?>
  </BODY>
</HTML>
<?
      die("");
    endif;
    // ���������� ����������� � ������� 10.1.1.250 - �� ��������� ������ ������� �� ������� MAINSERVER, � ��� � ������ ������� - � DBSERVER
    $HostName="10.1.1.250";
    $UserName="root";
    $Passwird="sqladmin";
    $DBName="arj";
    $MySQLConnection=@mysql_connect($HostName,$UserName,$Passwird);
    if ($MySQLConnection==FALSE):
      PrintMessage("ERROR","My-SQL","�� ������� ���������� ����������� � MySQL-������� <B>$HostName</B>!");
      die("  </BODY>\n</HTML>");
    endif;
    if (@mysql_select_db("$DBName")==FALSE):
      PrintMessage("ERROR","My-SQL","�� ������� ���������� ����������� � �� <B>$DBName</B> �� MySQL-������� <B>$HostName</B>!");
      die("  </BODY>\n</HTML>");
    endif;
    if ($DEBUG=="on"): PrintMessage("SUCCESS", "My-SQL", "������� ���������� ����������� � �� <B>$DBName</B> �� MySQL-������� <B>$HostName</B>."); endif;
    // ������������ ���������� ����, �������� � ������ � �������� ��� � ���������� $daycount
    $i=mktime(1,0,0,$stopmonth+0,$stopday+0,$stopyear+0)-mktime(0,0,0,$startmonth+0,$startday+0,$startyear+0);
    $daycount=0;
    while ($i>=0):
      $daycount++;
      $i=$i-(mktime(1,0,0,1,2,2000)-mktime(1,0,0,1,1,2000));
    endwhile;
    if ($DEBUG=="on"): PrintMessage("SUCCESS", "����", "���������� ���� �������� � ��������� ������: <B>$daycount</B>."); endif;
    // ������ ����� ����� ����� ��� ����������� ������� ird_$year$month$day �� ��������� ������, ��� ����,
    // ����� ���������� ���������� ������� � ���� ������ � �������� � ���������� ����������� ������� (� ���������� $fullmonthtable_recird_counter)
    // ���� ������� �� ������� ����� �� �� ����� �� �������� - ����� ������ ��������������
    // ���� ������� ���� ������� �� ������� DBSERVER, ���������� ����������� � ����� �� FTP � ������������� �� � ����� ������

    // �������������� ������������� ����������
    $b=TRUE;
    // ���������� ������� ����������� ������
    for ($i=1; $i<=$daycount; $i++):
      if ($i<10): $j="0$i"; else: $j=$i; endif;
      $ird_must[]="ird_$startyear$startmonth$j";
    endfor;
    // �������� ���������� ������ ird_$year$month$day �� ��������� �����, ������������ � �� arj �� MAINSERVER
    if ($DEBUG=="on"): PrintMessage("INFORMATION", "My-SQL", "��������� ���������� ������ <B>arj.ird_$startyear$startmonth%</B>..."); endif;
    $q="SHOW TABLES FROM arj LIKE 'ird_$startyear$startmonth"."__';";
    if ($DEBUG=="on"): PrintMessage("QUERY", "SQL", $q); endif;
    $table=mysql_query($q);
    $num_rows=mysql_num_rows($table);
    $s="� ���� ������ <B>arj</B> ������� ������� ������ �� <B>".$months[$startmonth+0]." $startyear ����</B> � ���������� <B>$num_rows</B>:";
    for ($i=0; $i<$num_rows;$i++):
      $s1=mysql_result($table, $i, 0); 
      if ($s1!=""): 
        $ird_founded[]=$s1;
        $s.="<BR>&nbsp;&nbsp;$s1";
      endif;
    endfor;
     
    // ������������ ������� ����������� ������ 
    foreach ($ird_must as $i):
      if (!(in_array($i, $ird_founded))):
        $ird_failed[]=$i;
        $b=FALSE;
      endif;
    endforeach;
    if ($num_rows>0):
      if ($DEBUG=="on"): PrintMessage("INFORMATION", "Info", $s); endif;
    else:
      if ($DEBUG=="on"): PrintMessage("ERROR", "My-SQL", "� ���� ������ <B>arj</B> �� ������� �� ����� ������� ������ �� <B>".$months[$startmonth+0]." $startyear ����</B>!"); endif;
    endif;

    if (($daycount==$num_rows)&&($b==TRUE)):
      if ($DEBUG=="on"): PrintMessage("SUCCESS", "����", "� �� <B>arj</B> ���������� ��� ��������� ������� (<B>ird_$startyear$startmonth%</B>) � ���������� <B>$num_rows</B>, ����������� ��� ������������ �������� ������� (<B>arj.irda_$startyear$startmonth</B>)."); endif;
    endif;

    // ����� ������ ��� ������������ ������� ������ ����������� ������

    $s="������ ������, ������������� � ���� ������ <B>arj</B> �� MySQL-������� <B>$HostName</B>:";
    foreach ($ird_failed as $i):
      $s.="<BR>&nbsp;&nbsp;".$i;
    endforeach;
    if (((count($ird_failed))>0)&&($DEBUG=="on")): PrintMessage("ERROR", "My-SQL", $s); endif;
    // � $daycount ���������� ���������� ���� � ��������� ������
    // � $fullmonthtable_recird_counter ���������� ���������� ������� � ������� arj.irda_$startyear$startmonth
    // � $b - ���� ����������� ���� ��������� ������ �� ��������� �����
    // � $ird_failed[] ���������� ������������ ������������� ��������� ������

    // ���������� �� FTP � ������� ����������� � �������������� ����������� ������
    if (count($ird_failed)!=0):
      $ftp_server="10.1.1.2";
      $conn_id=ftp_connect($ftp_server);
      if ($conn_id<1):
        ShowErrorMessage("�� ������� ���������� ���������� � FTP-�������� <B>$ftp_server</B>! ���������� � ���������� ��������������!", $rep, $time, $amm, $amy);
?>
  </BODY>
</HTML>
<?
        die("");
      endif;
      $login_result=@ftp_login($conn_id, "root", "kron");
      if ((!$conn_id)||(!$login_result)):
        ShowErrorMessage("�� ������� ������������ � FTP-������� <B>$ftp_server</B> ��� ��������� ������� � �������! ���������� � ���������� ��������������!", $rep, $time, $amm, $amy);
?>
  </BODY>
</HTML>
<?
        die("");
      else:
        if ($DEBUG=="on"): PrintMessage("SUCCESS", "FTP", "������� ����������� ���������� � FTP-�������� <B>$ftp_server</B>."); endif;
      endif;
/* �������� ������ � PHP>=4.2.0
      if (ftp_set_option($conn_id, FTP_TIMEOUT_SEC, 5*60)!=TRUE): // ������������� ������� ������� �������� �� FTP � 5 �����
        ShowErrorMessage("�� ������� ���������� ����� �������� �� FTP-������� <B>$ftp_server</B>! ���������� � ���������� ��������������!", $rep, $time, $amm, $amy);
?>
  </BODY>
</HTML>
<?
        die("");
      endif;
*/
      // ������� � ������ �������
      if (@ftp_chdir($conn_id, "shared_disk/usr/local/var/statistika/")): 
        if ($DEBUG=="on"): PrintMessage("SUCCESS", "FTP", "�������� ������� � ���������� <B>" . ftp_pwd($conn_id) . "/</B>."); endif;
      else:
        ShowErrorMessage("�� ������� ������� ���������� �� FTP-������� <B>$ftp_server</B>! ���������� � ���������� ��������������!", $rep, $time, $amm, $amy);
?>
  </BODY>
</HTML>
<?
        die("");
      endif;
      // ��������� �������� ����������� �����, ����������� ��� ������ �� ����������� ������ � ������������� �� �� ������� ISAM � ������ MyISAM
      $ext[]="frm"; $ext[]="ISD"; $ext[]="ISM";
      for ($i=0; $i<(count($ird_failed));$i++):
        // ����������� ��� ������ ��� ������ �� ������
        for ($j=0;$j<count($ext);$j++):
          // ������������ ����� ����� �� ������� ����
          $thisdayfilename="ird_".$y;
          if ($m<10) $thisdayfilename.="0";
          $thisdayfilename.="$m";
          if ($d<10) $thisdayfilename.="0";
          $thisdayfilename.="$d";
          // �������� �� ����������� ������ �� ������� ����
          if ($ird_failed[$i]==$thisdayfilename):
            ShowErrorMessage("�� ��������� ��������� ������������ ������, ����������� ����������� ������ ������ �� ������� ���� (<B>$thisdayfilename.*</B>)! ��������� ������� ������ ��� ���������� � ���������� ��������������!", $rep, $time, $amm, $amy);
?>
  </BODY>
</HTML>
<?
            die("");
          endif;

          $fn="$ird_failed[$i].$ext[$j]";
          if (!(@ftp_size($conn_id, $fn)>0)):
            ShowErrorMessage("��������� ���� <B>$fn</B> �� ��� ������ �� FTP-������� <B>$ftp_server</B>! ���������� � ���������� ��������������!", $rep, $time, $amm, $amy);
?>
  </BODY>
</HTML>
<?
            die("");
          endif;
          if (@ftp_get($conn_id, "d:\\WWW\mysql\\data\\ARJ\\$fn", $fn, FTP_BINARY)):
            if ($DEBUG=="on"): PrintMessage("SUCCESS", "FTP", "���� <B>$fn</B> � FTP-������� <B>$ftp_server</B> ������� ���������� �� ������ <B>$HostName</B>."); endif;
          else:
            ShowErrorMessage("�� ������� ����������� ���� <B>$fn</B> � FTP-������� <B>$ftp_server</B> �� ������ <B>$HostName</B>! ���������� � ���������� ��������������!", $rep, $time, $amm, $amy);
?>
  </BODY>
</HTML>
<?
            die("");
          endif;
        endfor;
        // �������������� ��������� ������ � ������ MyISAM
        $q="ALTER TABLE arj.".$ird_failed[$i]." TYPE=MyISAM;";
        if ($DEBUG=="on"): PrintMessage("QUERY", "SQL", $q); endif;
        mysql_query($q);
        // �������� �� ������������ ���������� �������� �����������
        if (mysql_affected_rows()>=0):
          if ($DEBUG=="on"): PrintMessage("SUCCESS", "MySQL", "������� <B>arj.".$ird_failed[$i]."</B> ���� ������� ������������� � ������ MyISAM."); endif;
        else:
          ShowErrorMessage("�������� ������ ��� �������������� ������� <B>arj.".$ird_failed[$i]."</B> � ������ MyISAM! ���������� � ���������� ��������������!", $rep, $time, $amm, $amy);
?>
  </BODY>
</HTML>
<?
          die("");
        endif;
      endfor;
      ftp_quit($conn_id);
      if ($DEBUG=="on"): PrintMessage("SUCCESS", "FTP", "���������� � FTP-�������� <B>$ftp_server</B> ���������."); endif;
      // �������������� ������������� ����������
      $b=TRUE;
      // �������� ���������� ������ ird_$year$month$day �� ��������� �����, ������������ � �� arj �� MAINSERVER
      if ($DEBUG=="on"): PrintMessage("INFORMATION", "My-SQL", "��������� ���������� ������ <B>arj.ird_$startyear$startmonth%</B>..."); endif;
      $q="SHOW TABLES FROM arj LIKE 'ird_$startyear$startmonth"."__';";
      if ($DEBUG=="on"): PrintMessage("QUERY", "SQL", $q); endif;
      $table=mysql_query($q);
      $num_rows=mysql_num_rows($table);
      $s="� ���� ������ <B>arj</B> ������� ������� ������ �� <B>".$months[$startmonth+0]." $startyear ����</B> � ���������� <B>$num_rows</B>:";
      for ($i=0; $i<$num_rows;$i++):
        $s1=mysql_result($table, $i, 0); 
        if ($s1!=""): 
          $ird_founded[]=$s1;
          $s.="<BR>&nbsp;&nbsp;$s1";
        endif;
      endfor;
      if ($DEBUG=="on"): PrintMessage("INFORMATION", "Info", $s); endif;
      // ������������ ������� ����������� ������ 
      foreach ($ird_must as $i):
        if (!(in_array($i, $ird_founded))):
          $ird_failed1[]=$i;
          $b=FALSE;
        endif;
      endforeach;
      if (($daycount==$num_rows)&&($b==TRUE)):
        if ($DEBUG=="on"): PrintMessage("SUCCESS", "����", "� �� <B>arj</B> ���������� ��� ��������� ������� (<B>ird_$startyear$startmonth%</B>) � ���������� <B>$num_rows</B>, ����������� ��� ������������ �������� ������� (<B>arj.irda_$startyear$startmonth</B>)."); endif;
      else:
        $s="�� ������� ����� � �������� ������ � ��������� �������� ���� ������ <B>arj</B> �� MySQL-������� <B>$HostName</B>:";
        foreach ($ird_failed1 as $i):
          $s.="<BR>&nbsp;&nbsp;$ird_failed1[$i]";
        endforeach;
        ShowErrorMessage("$s<BR>���������� � ���������� ��������������!", $rep, $time, $amm, $amy);
?>
  </BODY>
</HTML>
<?
        die("");
      endif;
    endif;
    // ���� �� ����� �� ����� �����, �� � ���� arj ��� ������ ���� ��� ����������� ������� ��� ������������ ������� ������� �� �����
    // ������ ����� ����� ���������� ���������� ������� � ������� ird_$year$month$day �� ��������� ������, � �������� � ���������� ����������� ������� (� ���������� $fullmonthtable_recird_counter)
    $perdatemonthtables_recird_counter=0;
    foreach ($ird_must as $i):
      $q="SELECT COUNT(*) AS f1 FROM arj.$i;";
      if ($DEBUG=="on"): PrintMessage("QUERY", "SQL", $q); endif;
      $table=mysql_query($q);
      $num_rows=mysql_num_rows($table);
      if ($num_rows==1):
        $i1=mysql_result($table, 0, "f1"); // �������� ���������� ����� � �������
        $perdatemonthtables_recird_counter=$perdatemonthtables_recird_counter+$i1;
        if ($DEBUG=="on"): PrintMessage("INFORMATION", "My-SQL", "������� ����� � ������� <B>arj.$i</B>: $i1."); endif;
      else:
        ShowErrorMessage("���� ��� ���������� �������! ���������� � ���������� ��������������!", $rep, $time, $amm, $amy);
?>
  </BODY>
</HTML>
<?
        die("");
      endif;
    endforeach;
    if ($DEBUG=="on"): PrintMessage("SUCCESS", "My-SQL", "����� ������� � ��������� �������� �� <B>$months[$startmonth] $startyear ����</B>: $perdatemonthtables_recird_counter."); endif;

















    // ���������� ����� ������� irda_$year$minth �� ��������� �����
    if ($DEBUG=="on"): PrintMessage("INFORMATION", "My-SQL", "�������� ������� ������� <B>arj.irda_$startyear$startmonth</B>..."); endif;
    $q="SHOW TABLES FROM arj LIKE 'irda_$startyear$startmonth';";
    if ($DEBUG=="on"): PrintMessage("QUERY", "SQL", $q); endif;
    $table=mysql_query($q);
    $num_rows=mysql_num_rows($table);
    if ($num_rows!=0):
      if ($DEBUG=="on"): PrintMessage("SUCCESS", "My-SQL", "������� <B>arj.irda_$startyear$startmonth</B> ������� �������."); endif;
      // ��������� ���������� ����� �������
      if ($DEBUG=="on"): PrintMessage("INFORMATION", "My-SQL", "��������� ���������� ����� ������� <B>arj.irda_$startyear$startmonth</B>..."); endif;
      $q="SELECT COUNT(*) AS f1 FROM arj.irda_$startyear$startmonth;";
      if ($DEBUG=="on"): PrintMessage("QUERY", "SQL", $q); endif;
      $table=mysql_query($q);
      $num_rows=mysql_num_rows($table);
      if ($num_rows==1):
        $fullmonthtable_recird_counter=mysql_result($table, 0, "f1"); // �������� ���������� ����� � �������
        if ($DEBUG=="on"): PrintMessage("SUCCESS", "My-SQL", "������� ����� � ������� <B>arj.irda_$startyear$startmonth</B>: $fullmonthtable_recird_counter."); endif;
      else:
        ShowErrorMessage("���� ��� ���������� �������! ���������� � ���������� ��������������!", $rep, $time, $amm, $amy);
?>
  </BODY>
</HTML>
<?
        die("");
      endif;
    else:
      if ($DEBUG=="on"): PrintMessage("ERROR", "My-SQL", "������� <B>arj.irda_$startyear$startmonth</B> �� �������!"); endif;
    endif;

    if (($fullmonthtable_recird_counter!=$perdatemonthtables_recird_counter)||($RECALC=="on")): // ���� ���������� ������� � ������� �� ����� �� ��������� � ����������� ������� �� ����� �� ������ �� ���� - ������ ������� ����� � �������� ����� ����� � ������� �����
      // �������� ������� arj.irda_$startyear$startmonth � ������ � �������
      if ($DEBUG=="on"): PrintMessage("INFORMATION", "My-SQL", "�������� ������� <B>arj.irda_$startyear$startmonth</B> ��� � �������..."); endif;
      $q="DROP TABLE IF EXISTS arj.irda_$startyear$startmonth;";
      if ($DEBUG=="on"): PrintMessage("QUERY", "SQL", $q); endif;
      mysql_query($q);
      // �������� ������������ �������� �������
      if ($DEBUG=="on"): PrintMessage("INFORMATION", "My-SQL", "�������� ������� ������� <B>arj.irda_$startyear$startmonth</B>..."); endif;
      $q="SHOW TABLES FROM arj LIKE 'irda_$startyear$startmonth';";
      if ($DEBUG=="on"): PrintMessage("QUERY", "SQL", $q); endif;
      $table=mysql_query($q);
      $num_rows=mysql_num_rows($table);
      if ($num_rows==0):
        if ($DEBUG=="on"): PrintMessage("SUCCESS", "My-SQL", "������� <B>arj.irda_$startyear$startmonth</B> ������� �������."); endif;
      else:
        ShowErrorMessage("���� ��� ���������� �������! ���������� � ���������� ��������������!", $rep, $time, $amm, $amy);
?>
  </BODY>
</HTML>
<?
        die("");
      endif;
      // �������� ������� arj.irda_$startyear$startmonth
      if ($DEBUG=="on"): PrintMessage("INFORMATION", "My-SQL", "�������� ������� <B>arj.irda_$startyear$startmonth</B>..."); endif;
      $q="CREATE TABLE arj.irda_$startyear$startmonth (ani char(32) NOT NULL default '', ddi char(32) NOT NULL default '', datum date NOT NULL default '0000-00-00', vrijeme time default NULL, dur decimal(11,0) NOT NULL default '0', rc decimal(3,0) NOT NULL default '0', srv decimal(3,0) NOT NULL default '0', rm decimal(3,0) NOT NULL default '0', izg decimal(3,0) NOT NULL default '0', izgnum char(32) NOT NULL default '', druga_info decimal(3,0) NOT NULL default '0', v_oper char(8) default NULL, v_mreza char(8) default NULL, qid decimal(3,0) default NULL, ccid decimal(3,0) default NULL, d_qid decimal(3,0) default NULL, d_ccid decimal(3,0) default NULL, qdur decimal(11,0) NOT NULL default '0', KEY datum (datum), KEY ddi (ddi), KEY ani (ani)) TYPE=MyISAM;";
      if ($DEBUG=="on"): PrintMessage("QUERY", "SQL", $q); endif;
      mysql_query($q);
      if ($DEBUG=="on"): PrintMessage("INFORMATION", "My-SQL", "�������� ������� ������� <B>arj.irda_$startyear$startmonth</B>..."); endif;
      $q="SHOW TABLES FROM arj LIKE 'irda_$startyear$startmonth';";
      if ($DEBUG=="on"): PrintMessage("QUERY", "SQL", $q); endif;
      $table=mysql_query($q);
      $num_rows=mysql_num_rows($table);
      if ($num_rows!=0):
        if ($DEBUG=="on"): PrintMessage("SUCCESS", "My-SQL", "������� <B>arj.irda_$startyear$startmonth</B> ������� �������."); endif;
        $fullmonthtable_recird_counter=0; // ���������� ����� � ������� ����� 0 - �.�. ������� ����� �������
      else:
        ShowErrorMessage("�� ������� ������� ������� <B>arj.irda_$startyear$startmonth</B>! ���������� � ���������� ��������������!", $rep, $time, $amm, $amy);
?>
  </BODY>
</HTML>
<?
        die("");
      endif;
      if ($DEBUG=="on"): PrintMessage("SUCCESS", "My-SQL", "������� ����� � ������� <B>arj.irda_$startyear$startmonth</B>: $fullmonthtable_recird_counter."); endif;
    endif;
    if ($fullmonthtable_recird_counter==$perdatemonthtables_recird_counter): // ���� ���������� ����� ��������� - ������� ��������� � ���, ��� ������� ��� ������������
?>
    <FORM METHOD="GET" ACTION="" STYLE="margin: 15px 15px 0px 15px; padding-bottom: 15px;">
      <CENTER> <!-- ������ ��� ��������� ��� ������������ ������� �� ������ � �������� MOZILLA -->
      <TABLE BGCOLOR="WHITE" WIDTH="640" ALIGN="CENTER" STYLE="border-color: black; border-width: 3;"> <!-- � ������ ������ ������������ ������� �� ������ - ALIGN="CENTER" ��������� �������������� IE � OPERA - � MOZILLA �� ��������! -->
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
              <INPUT TYPE="HIDDEN" NAME="time" VALUE="<?print $time;?>">
              <INPUT TYPE="HIDDEN" NAME="amm" VALUE="<?print $amm;?>">
              <INPUT TYPE="HIDDEN" NAME="amy" VALUE="<?print $amy;?>">
<?
    if ($RECALC=="on"):
?>
              <INPUT TYPE="HIDDEN" NAME="RECALC" VALUE="<?print $RECALC;?>">
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
            <TD ALIGN="CENTER" BGCOLOR="#339999"><B>�������� ��������� �������!</B></TD>
          </TR>
          <TR>
            <TD HEIGHT="15" BGCOLOR="#339999"></TD>
          </TR>
          <TR>
            <TD STYLE="padding: 3px 5px;">������� <B>arj.irda_<?echo "$startyear$startmonth";?></B> ��� ���� ������������ �����.<BR>��� ������������� ������� ���������������� �������, ��������� � ����������� ���� �������� ������ � ���������� ������� &laquo;�������� ������ �������� ������ ������� �� ��������� ������&raquo;, ����� ���� ����������� ����� �����.<BR><BR>������� ������ <B>&laquo;�����&raquo;</B> ��� �������� � ����������� ���� ������������ ������.</TD>
          </TR>
          <TR>
            <TD HEIGHT="15" BGCOLOR="#339999"></TD>
          </TR>
        </TBODY>
      </TABLE>
      </CENTER>
    </FORM> 
  </BODY>
</HTML>
<?
      die("");
    endif;
    foreach ($ird_must as $i):
      $q="INSERT INTO arj.irda_$startyear$startmonth SELECT * FROM arj.$i;";
      if ($DEBUG=="on"): PrintMessage("QUERY", "SQL", $q); endif;
      mysql_query($q);
      // �������� �� ������������ ���������� �������� �����������
      if (mysql_affected_rows()>=0):
        if ($DEBUG=="on"): PrintMessage("SUCCESS", "MySQL", "������ �� ������� <B>arj.$i</B> � ���������� ".mysql_affected_rows()." ���� ������� ��������� � ������� <B>arj.irda_$startyear$startmonth</B>."); endif;
      else:
        ShowErrorMessage("�������� ������ ��� ���������� ������� �� ������� <B>arj.$i</B> � ������� <B>arj.irda_$startyear$startmonth</B>! ���������� � ���������� ��������������!", $rep, $time, $amm, $amy);
?>
  </BODY>
</HTML>
<?
        die("");
      endif;
    endforeach;
    // ��������� �������� �� ���������� ���������� ������� � ��������� ������ �� ����� � � �������� �����
    if ($DEBUG=="on"): PrintMessage("INFORMATION", "My-SQL", "��������� ���������� ����� ������� <B>arj.irda_$startyear$startmonth</B>..."); endif;
    $q="SELECT COUNT(*) AS f1 FROM arj.irda_$startyear$startmonth;";
    if ($DEBUG=="on"): PrintMessage("QUERY", "SQL", $q); endif;
    $table=mysql_query($q);
    $num_rows=mysql_num_rows($table);
    if ($num_rows==1):
      $fullmonthtable_recird_counter=mysql_result($table, 0, "f1"); // �������� ���������� ����� � �������
      if ($DEBUG=="on"): PrintMessage("SUCCESS", "My-SQL", "������� ����� � ������� <B>arj.irda_$startyear$startmonth</B>: $fullmonthtable_recird_counter."); endif;
    else:
      ShowErrorMessage("���� ��� ���������� �������! ���������� � ���������� ��������������!", $rep, $time, $amm, $amy);
?>
  </BODY>
</HTML>
<?
      die("");
    endif;
    if ($fullmonthtable_recird_counter==$perdatemonthtables_recird_counter): // ���� ���������� ����� ��������� - ������� ��������� � ���, ��� ������� ��� ������������
?>
    <FORM METHOD="GET" ACTION="" STYLE="margin: 15px 15px 0px 15px; padding-bottom: 15px;">
      <CENTER> <!-- ������ ��� ��������� ��� ������������ ������� �� ������ � �������� MOZILLA -->
      <TABLE BGCOLOR="WHITE" WIDTH="640" ALIGN="CENTER" STYLE="border-color: black; border-width: 3;"> <!-- � ������ ������ ������������ ������� �� ������ - ALIGN="CENTER" ��������� �������������� IE � OPERA - � MOZILLA �� ��������! -->
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
              <INPUT TYPE="HIDDEN" NAME="time" VALUE="<?print $time;?>">
              <INPUT TYPE="HIDDEN" NAME="amm" VALUE="<?print $amm;?>">
              <INPUT TYPE="HIDDEN" NAME="amy" VALUE="<?print $amy;?>">
<?
    if ($RECALC=="on"):
?>
              <INPUT TYPE="HIDDEN" NAME="RECALC" VALUE="<?print $RECALC;?>">
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
            <TD ALIGN="CENTER" BGCOLOR="#339999"><B>�������� ��������� �������!</B></TD>
          </TR>
          <TR>
            <TD HEIGHT="15" BGCOLOR="#339999"></TD>
          </TR>
          <TR>
            <TD STYLE="padding: 3px 5px;">������� <B>arj.irda_<?echo "$startyear$startmonth";?></B> ���� ������� ������������.<BR><BR>������� ������ <B>&laquo;�����&raquo;</B> ��� �������� � ����������� ���� ������������ ������.</TD>
          </TR>
          <TR>
            <TD HEIGHT="15" BGCOLOR="#339999"></TD>
          </TR>
        </TBODY>
      </TABLE>
      </CENTER>
    </FORM> 
<?
    else:
        ShowErrorMessage("���� ��� ���������� ������� � ������� <B>arj.irda_$startyear$startmonth</B>! ���������� � ���������� ��������������!", $rep, $time, $amm, $amy);
    endif;
?>
  </BODY>
</HTML>
