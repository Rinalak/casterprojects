<?
$conn_id=ftp_connect("10.1.1.2");
$login_result=ftp_login($conn_id, "root", "kron");
if ((!$conn_id)||(!$login_result)) die("�� 㤠���� ��⠭����� ᮥ������� � FTP �ࢥ஬ $ftp_server ��� ������ $ftp_user_name!\r\n"); else print "�ᯥ譮 ��⠭������ ᮥ������� � FTP �ࢥ஬ DBSERVER.\r\n";
//  ����஢���� 䠩��� ⠡��� prijave, prijave_q � DBSERVER-� �� STATSERVER
if (ftp_chdir($conn_id, "shared_disk/usr/mysql32356/data/test/")) print "�믮���� ���室 � ��४��� '" . ftp_pwd($conn_id) . "'.\r\n"; else print "�� 㤠���� ᬥ���� ��४���!\r\n";
if (ftp_get($conn_id, "D:\\mysql\\data\\prijaves\\oldformat_prijave.frm", "prijave.frm", FTP_BINARY)) print "���� 'prijave.frm' �ᯥ譮 ᪮��஢�� � 䠩� 'oldformat_prijave.frm'.\r\n"; else die("�� 㤠���� ᪮��஢��� 䠩� 'prijave.frm' � 䠩� 'oldformat_prijave.frm'.\r\n");
if (ftp_get($conn_id, "D:\\mysql\\data\\prijaves\\oldformat_prijave.MYD", "prijave.MYD", FTP_BINARY)) print "���� 'prijave.MYD' �ᯥ譮 ᪮��஢�� � 䠩� 'oldformat_prijave.ISD'.\r\n"; else die("�� 㤠���� ᪮��஢��� 䠩� 'prijave.ISD' � 䠩� 'oldformat_prijave.MYD'.\r\n");
if (ftp_get($conn_id, "D:\\mysql\\data\\prijaves\\oldformat_prijave.MYI", "prijave.MYI", FTP_BINARY)) print "���� 'prijave.MYI' �ᯥ譮 ᪮��஢�� � 䠩� 'oldformat_prijave.ISM'.\r\n"; else die("�� 㤠���� ᪮��஢��� 䠩� 'prijave.ISM' � 䠩� 'oldformat_prijave.MYI'.\r\n");
if (ftp_get($conn_id, "D:\\mysql\\data\\prijaves\\oldformat_prijave_q.frm", "prijave_q.frm", FTP_BINARY)) print "���� 'prijave_q.frm' �ᯥ譮 ᪮��஢�� � 䠩� 'oldformat_prijave_q.frm'.\r\n"; else die("�� 㤠���� ᪮��஢��� 䠩� 'prijave.frm' � 䠩� 'oldformat_prijave_q.frm'.\r\n");
if (ftp_get($conn_id, "D:\\mysql\\data\\prijaves\\oldformat_prijave_q.MYD", "prijave_q.MYD", FTP_BINARY)) print "���� 'prijave_q.MYD' �ᯥ譮 ᪮��஢�� � 䠩� 'oldformat_prijave_q.MYD'.\r\n"; else die("�� 㤠���� ᪮��஢��� 䠩� 'prijave.MYD' � 䠩� 'oldformat_prijave_q.MYD'.\r\n");
if (ftp_get($conn_id, "D:\\mysql\\data\\prijaves\\oldformat_prijave_q.MYI", "prijave_q.MYI", FTP_BINARY)) print "���� 'prijave_q.MYI' �ᯥ譮 ᪮��஢�� � 䠩� 'oldformat_prijave_q.MYI'.\r\n"; else die("�� 㤠���� ᪮��஢��� 䠩� 'prijave.MYI' � 䠩� 'oldformat_prijave_q.MYI'.\r\n");
// ����� ��諮�� ���
$ldd=date("d",mktime(0,0,0,date("m"),date("d"),date("Y"))-((mktime(0,0,0,1,2,2000)-mktime(0,0,0,1,1,2000)))); // ��।������ �᫠ ���譥� ����
$ldm=date("m",mktime(0,0,0,date("m"),date("d"),date("Y"))-((mktime(0,0,0,1,2,2000)-mktime(0,0,0,1,1,2000)))); // ��।������ ����� ���譥� ����
$ldy=date("Y",mktime(0,0,0,date("m"),date("d"),date("Y"))-((mktime(0,0,0,1,2,2000)-mktime(0,0,0,1,1,2000)))); // ��।������ ���� ���譥� ����
ftp_quit($conn_id);
//  �८�ࠧ������ 䠩��� � ���� �ଠ� �� ����� �ਨ MySQL-����ᮢ
$MYSQLCON=MYSQL_CONNECT("10.1.1.240","root","sqladmin") or die("Can't create connection");
MYSQL_SELECT_DB("prijaves") or die("�� 㤠���� ��⠭����� ������祭�� � �� prijaves �� MySQL-�ࢥ� STATSERVER");
print "��⠭������ ������祭�� � �� prijaves �� MySQL-�ࢥ� STATSERVER.\r\n";
//  �८�ࠧ������ 䠩��� prijave, prijave_q
MYSQL_QUERY("DROP TABLE IF EXISTS prijaves.prijave, prijaves.prijave_q;");
MYSQL_QUERY("CREATE TABLE prijaves.prijave (rbr int(11) NOT NULL auto_increment, sifra char(20) NOT NULL default '', rm char(6) default NULL, datpoc date NOT NULL default '0000-00-00', vripoc char(8) default NULL, datzav date default NULL, vrizav char(8) default NULL, stiglo decimal(4,0) default NULL, obradio decimal(4,0) default NULL, tsred decimal(4,0) default NULL, kratki decimal(4,0) default NULL, orgset decimal(4,0) default NULL, connack decimal(4,0) default NULL, orgdur decimal(4,0) default NULL, paused decimal(7,0) default NULL, wait decimal(7,0) default NULL, trans decimal(4,0) default '0', wrap decimal(7,0) default NULL, nums char(30) default NULL, closed decimal(0,0) default '1', ccid decimal(3,0) default '1', PRIMARY KEY  (rbr), KEY sifra (sifra), KEY datpoc (datpoc), KEY rm (rm), KEY vripoc (vripoc), KEY datzav (datzav), KEY vrizav (vrizav)) TYPE=MyISAM PACK_KEYS=1;");
MYSQL_QUERY("CREATE TABLE prijaves.prijave_q (sifra char(20) NOT NULL default '', rm char(6) default NULL, datpoc date NOT NULL default '0000-00-00', vripoc char(8) default NULL, datzav date default NULL, vrizav char(8) default NULL, stiglo decimal(4,0) default NULL, obradio decimal(4,0) default NULL, tsred decimal(4,0) default NULL, kratki decimal(4,0) default NULL, wait decimal(4,0) default NULL, odbio decimal(4,0) default NULL, trans decimal(4,0) default NULL, qid decimal(4,0) default NULL, ccid decimal(3,0) NOT NULL default '0', priority decimal(3,0) NOT NULL default '0', rbr int(11) NOT NULL auto_increment, PRIMARY KEY  (rbr), KEY sifra (sifra), KEY datpoc (datpoc), KEY rm (rm), KEY vripoc (vripoc), KEY datzav (datzav), KEY vrizav (vrizav)) TYPE=MyISAM PACK_KEYS=1;");

//MYSQL_QUERY("CREATE TABLE ARJ.nusers (sifra varchar(20) NOT NULL default '', ime varchar(30) default NULL, prezime varchar(30) default NULL, passwd varchar(30) default NULL, tip char(1) default NULL, opis varchar(30) default NULL, vlasnik varchar(20) default NULL, ccid decimal(3,0) NOT NULL default '0', wrap decimal(3,0) NOT NULL default '0', ext decimal(3,0) NOT NULL default '0', logged decimal(0,0) NOT NULL default '0', ipadr varchar(20) default NULL, rm decimal(3,0) NOT NULL default '0', telno varchar(32) default NULL, inet decimal(3,0) NOT NULL default '0', rccid decimal(3,0) NOT NULL default '0', UNIQUE KEY sifcc (sifra,ccid)) TYPE=MyISAM PACK_KEYS=1;");

MYSQL_QUERY("INSERT INTO prijaves.prijave SELECT * FROM prijaves.oldformat_prijave;");
MYSQL_QUERY("INSERT INTO prijaves.prijave_q SELECT * FROM prijaves.oldformat_prijave_q;");
MYSQL_QUERY("DROP TABLE IF EXISTS prijaves.oldformat_prijave, prijaves.oldformat_prijave_q, prijaves.prijave_$ldy$ldm$ldd, prijaves.prijave_q_$ldy$ldm$ldd;");

MYSQL_QUERY("CREATE TABLE prijaves.prijave_$ldy$ldm$ldd (PRIMARY KEY (rbr), KEY sifra (sifra), KEY datpoc (datpoc), KEY rm (rm), KEY vripoc (vripoc), KEY datzav (datzav), KEY vrizav (vrizav)) SELECT * FROM prijaves.prijave WHERE datpoc BETWEEN ADDDATE('$ldy$ldm$ldd', INTERVAL -1 DAY) AND '$ldy$ldm$ldd' AND datzav BETWEEN '$ldy$ldm$ldd' AND ADDDATE('$ldy$ldm$ldd', INTERVAL 1 DAY);");
MYSQL_QUERY("CREATE TABLE prijaves.prijave_q_$ldy$ldm$ldd (PRIMARY KEY (rbr), KEY sifra (sifra), KEY datpoc (datpoc), KEY rm (rm), KEY vripoc (vripoc), KEY datzav (datzav), KEY vrizav (vrizav)) SELECT * FROM prijaves.prijave_q WHERE datpoc BETWEEN ADDDATE('$ldy$ldm$ldd', INTERVAL -1 DAY) AND '$ldy$ldm$ldd' AND datzav BETWEEN '$ldy$ldm$ldd' AND ADDDATE('$ldy$ldm$ldd', INTERVAL 1 DAY);");

MYSQL_CLOSE($MYSQLCON);
print "�� ����樨 �믮�����.\r\n";
?>