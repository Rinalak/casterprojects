<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
  <HEAD>
    <TITLE>������ � ������ ������ ���������-��������������� ���� ������� &laquo;����&raquo; ��� &laquo;����������&raquo; (��� 1/3)</TITLE>
    <META CONTENT="no-cache" HTTP-EQUIV="pragma">
    <META CONTENT="no-cache" HTTP-EQUIV="cache-control">
    <META CONTENT="Dynamic" NAME="Document-state">
    <META CONTENT="text/html; charset=Windows-1251" HTTP-EQUIV="Content-Type">
    <!--LINK REL="home" HREF="<?echo $base_url;?>">
    <LINK REL="first" HREF="<?echo $base_url;?>"-->
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
        background-color: white;
        }
    </STYLE>
  </HEAD>
  <BODY BGCOLOR="gainsboro">
    <FORM METHOD="GET" ACTION="" STYLE="margin: 15px 15px 0px 15px; padding-bottom: 15px;">
      <CENTER> <!-- ������ ��� ��������� ��� ������������ ������� �� ������ � �������� MOZILLA -->
      <TABLE BGCOLOR="WHITE" WIDTH="640" BORDER="0" ALIGN="CENTER" STYLE="border-color: black; border-width: 3;"> <!-- � ������ ������ ������������ ������� �� ������ - ALIGN="CENTER" ��������� �������������� IE � OPERA - � MOZILLA �� ��������! -->
        <THEAD ALIGN="CENTER" VALIGN="MIDDLE">
          <TR>
            <TD WIDTH="13" ROWSPAN="3"></TD>
            <TD WIDTH="13" ROWSPAN="3"></TD>
            <TD HEIGHT="15"></TD>
            <TD WIDTH="13" ROWSPAN="3"></TD>
            <TD WIDTH="13" ROWSPAN="3"></TD>
          </TR>
          <TR>
            <TD STYLE="font-family: Times New Roman; font-weight: bold; font-size: 12pt;">������ � ������ ������ ���������-��������������� ����<BR>������� &laquo;����&raquo; ��� &laquo;����������&raquo;</TD>
          </TR>
          <TR>
            <TD HEIGHT="15" COLSPAN="3"></TD>
          </TR>
        </THEAD>
        <TFOOT ALIGN="CENTER" VALIGN="MIDDLE">
          <TR>
            <TD HEIGHT="15" COLSPAN="5"></TD>
          </TR>
          <TR>
            <TD COLSPAN="5">
              <INPUT TYPE="HIDDEN" NAME="step" VALUE="2">
              <INPUT TYPE="SUBMIT" VALUE="����� >>>" STYLE="border-color: black; border-width: 2;" ONMOUSEOVER="window.status='�������� ����������� ����� � ������� ������ &laquo;�����&raquo; ��� �������� � ���������� ���� ������������ ������';" ONMOUSEOUT="window.status='';">
            </TD>
          </TR>
          <TR>
            <TD HEIGHT="15" COLSPAN="5"></TD>
          </TR>
        </TFOOT>
        <TBODY VALIGN="TOP">
          <TR>
            <TD WIDTH="13" ROWSPAN="5"></TD>
            <TD WIDTH="13" ROWSPAN="5" BGCOLOR="#339999"></TD>
            <TD HEIGHT="15" BGCOLOR="#339999"></TD>
            <TD WIDTH="13" ROWSPAN="5" BGCOLOR="#339999"></TD>
            <TD WIDTH="13" ROWSPAN="5"></TD>
          </TR>
          <TR ALIGN="CENTER">
            <TD BGCOLOR="#339999" STYLE="font-weight: bold;">�������� ��������:</TD>
          </TR>
          <TR>
            <TD HEIGHT="15" BGCOLOR="#339999"></TD>
          </TR>
          <TR>
            <TD ALIGN="CENTER" STYLE="padding: 7 0;">
              <SELECT STYLE="font-size: 7.9pt; border-color: black; border-width: 2;" NAME="rep" SIZE="<?echo count($reports);?>" ONMOUSEOVER="window.status='��� ������ ������� ������ �������� ����� ������ �� ����������� ������ ������';" ONMOUSEOUT="window.status='';">
<?
    for ($i=1;$i<=count($reports);$i++):
      if ($reports[$i]["������������"]!=""):
?>
                <OPTION VALUE="<?echo "$i";?>"<?if ($i==$rep): echo " SELECTED"; endif;?>><?if ($workedreps[$i]==1): echo "+ "; endif; echo $reports[$i]["������������"];?></OPTION>
<?
      endif;
    endfor;
?>
              </SELECT>
            </TD>
          </TR>
          <TR>
            <TD HEIGHT="15" BGCOLOR="#339999"></TD>
          </TR>
        </TBODY>
      </TABLE>
      </CENTER>
    </FORM>
<?
        /*
              <TABLE BGCOLOR="WHITE" WIDTH="640" BORDER="1" ALIGN="CENTER" STYLE="border-color: black; border-width: 3; margin-top: 10px;">
                <TBODY VALIGN="TOP">
                  <TR>
                    <TD><A HREF="http://validator.w3.org/check?uri=referer"><IMG BORDER="0" SRC="http://www.w3.org/Icons/valid-html40" ALT="Valid HTML 4.0!" HEIGHT="31" WIDTH="88"></A></TD>
                  </TR>
                </TBODY>
              </TABLE>
        */
?>
  </BODY>
</HTML>
