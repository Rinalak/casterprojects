<?
// ������������� ������������ ������� � ������������ ������
$months[1]="������"; 
$months[2]="�������"; 
$months[3]="����"; 
$months[4]="������"; 
$months[5]="���"; 
$months[6]="����"; 
$months[7]="����"; 
$months[8]="������"; 
$months[9]="��������"; 
$months[10]="�������"; 
$months[11]="������"; 
$months[12]="�������";

// ������������� ������������ ������� � ����������� ������
$months2[1]="������"; 
$months2[2]="�������"; 
$months2[3]="�����"; 
$months2[4]="������"; 
$months2[5]="���"; 
$months2[6]="����"; 
$months2[7]="����"; 
$months2[8]="�������"; 
$months2[9]="��������"; 
$months2[10]="�������"; 
$months2[11]="������"; 
$months2[12]="�������";

// ��������� ������������� ��������� ���������� �������
$quartals[1]="I";
$quartals[2]="II";
$quartals[3]="III";
$quartals[4]="IV";

// ������� ������ �� �������
$reports[1]=array("������������"=>"������������ ������ <B>&laquo;���������� ������ ����� ���&raquo;</B>","�����������"=>"������ ����� ������������ �������� ��������� ��������� �� ��������� ����, �� ������������� �� ��������� ������, � ����� 1-�� ����� ������� ������ �� ��������� ����� � ���� ������������ ����� <B>*.htm</B> �� ����� ����������� ����� <B>irai@mgts.by</B><!-- � <B>anna@mgts.by</B> --> ����������� ������ ���������� (����&nbsp;�.�.), � ����� ���������� � ����� ���������� � ��������������� ���������� ��� (����������&nbsp;�.�.) ������ ����������� �� ��������� ������ � 1-�� ����� ������� ������ �� ��������� �����.");
$reports[2]=array("������������"=>"������������ ������ &laquo;���������� ������ ������������ ��� &laquo;090&raquo; � &laquo;093&raquo;&raquo;","�����������"=>"");
$reports[3]=array("������������"=>"������������ ������ &laquo;���������� ������ ������������&raquo;","�����������"=>"");
$reports[4]=array("������������"=>"������������ ������ &laquo;���������� Content Provider ��� ��������������&raquo;","�����������"=>"������ ����� ����������� �������� ��������� ������ ����������� �� ��������� ������ � ����������� � ���������� ��������� ��� ����� ����� � ����� �������� ����������.");
$reports[5]=array("������������"=>"������������ ������ &laquo;����������� ����� �� ������ ��� &laquo;009&raquo;&raquo;","�����������"=>"������ ����� ����������� �������� ��������� 1-�� ����� ���������� �� �������� ��������� ������ � ��������������� ���������� ��� (���������� �.�.) � ����� �������� ����������.");
$reports[6]=array("������������"=>"������������ ������ <B>&laquo;�������� � �������� ������� �� ���� �� &laquo;���&raquo; �� �����&raquo;</B>","�����������"=>"");
$reports[7]=array("������������"=>"������������ ������ <B>&laquo;�������� � �������� ������� �� ���� ���� &laquo;���&raquo; �� �����&raquo;</B>","�����������"=>"");
$reports[8]=array("������������"=>"������������� ������� ����� ���","�����������"=>"");
$reports[9]=array("������������"=>"������������ ������� irda_* �� ��������� �����","�����������"=>"������ ����� ���� ��������� ������������ ����� ������� �������� ������� �� ��������� �� ��������� ����� - <B>irda_<I>������</I></B>, ��������� ������� ������� <B>ird_<I>��������</I></B> �� ������ ��������� ����");
$reports[10]=array("������������"=>"������������ ������� orda_* �� ��������� �����","�����������"=>"������ ����� ���� ��������� ������������ ����� ������� ��������� ������� � ��������� �� ��������� ����� - <B>orda_<I>������</I></B>, ��������� ������� ������� <B>ord_<I>��������</I></B> �� ������ ��������� ����");
$reports[11]=array("������������"=>"������ ������ �� ������ �� ������ ���","�����������"=>"������ ����� ���� ��������� ���������� ������ ������ ���������� ������ �� ������ ��� � ���������� ������ �������� �� ��������� ����");
$reports[12]=array("������������"=>"������������ ������ &laquo;���������� �� ���������� ���������� �� ��������� �������&raquo;","�����������"=>"������ ����� ����������� �������� ��������� 1-�� ����� ������� ������ � ��������������� ���������� ��� (���������� �.�.) � ����� �������� ����������.");
$reports[13]=array("������������"=>"������������ ������ �� &laquo;��������&raquo; ��������� �� �����","�����������"=>"������ ����� ���� ��������� ������������ �������������� ����� �� &laquo;��������&raquo; ��������� �� ��������� ����� � ��������� ������� ������ ����������� � ���������� ���������");
$reports[14]=array("������������"=>"������������ ������ �� ������ ��� � �������������� ���������� � ������� ����������","�����������"=>"������ ����� ���� ��������� ������������ ����� �� ������ ��� � �������������� ���������� � ������� ���������� �� ������� ��� �� ��������� ������� ���������");
$reports[15]=array("������������"=>"������������ ������ &laquo;���������� ������ ������������ ��� &laquo;090&raquo; � &laquo;093&raquo;&raquo; (������ �����)","�����������"=>"");

// ������ ������������ �������
$repnames[1]="���������� ������ ����� ���";
$repnames[2]="���������� ������ ����� ��� (��������� ���������)";
$repnames[3]="���������� ������ ������������";
$repnames[4]="���������� Content Provider ��� ��������������";
$repnames[5]="����������� ����� �� ������ ��� &laquo;009&raquo;";
$repnames[6]="�������� � �������� ������� �� ���� �� &laquo;���&raquo; �� �����";
$repnames[7]="�������� � �������� ������� �� ���� ���� &laquo;���&raquo; �� �����";
$repnames[9]="������������ ������� irda_* �� ��������� �����";
$repnames[10]="������������ ������� orda_* �� ��������� �����";
$repnames[12]="���������� �� ���������� ���������� �� ���������� �������";
$repnames[13]="�������� �� &laquo;��������&raquo; ��������� �� �����";

$workedreps[1]=1;
$workedreps[2]=1;
$workedreps[3]=0;
$workedreps[4]=1;
$workedreps[5]=1;
$workedreps[6]=0;
$workedreps[7]=0;
$workedreps[8]=0;
$workedreps[9]=1;
$workedreps[10]=1;
$workedreps[11]=1;
$workedreps[12]=1;
$workedreps[13]=0;
$workedreps[14]=1;
$workedreps[15]=1;

// ������ ������������ � �������
$repcomments[1]="������ ����� ������������ �������� ��������� ��������� �� ��������� ����, �� ������������� �� ��������� ������, � ����� 1-�� ����� ������� ������ �� ��������� ����� � ���� ������������ ����� <B>*.htm</B> �� ����� ����������� ����� <B>irai@mgts.by</B><!-- � <B>anna@mgts.by</B> --> ����������� ������ ���������� (����&nbsp;�.�.), � ����� ���������� � ����� ���������� � ��������������� ���������� ��� (����������&nbsp;�.�.) ������ ����������� �� ��������� ������ � 1-�� ����� ������� ������ �� ��������� �����.";
$repcomments[4]="������ ����� ����������� �������� ��������� ������ ����������� �� ��������� ������ � ����������� � ���������� ��������� ��� ����� ����� � ����� �������� ����������.";
$repcomments[5]="������ ����� ����������� �������� ��������� 1-�� ����� ���������� �� �������� ��������� ������ � ��������������� ���������� ��� (���������� �.�.) � ����� �������� ����������.";
$repcomments[9]="������ ����� ���� ��������� ������������ ����� ������� �������� ������� �� ��������� �� ��������� ����� - <B>irda_<I>������</I></B>, ��������� ������� ������� <B>ird_<I>��������</I></B> �� ������ ��������� ����";
$repcomments[10]="������ ����� ���� ��������� ������������ ����� ������� ��������� ������� � ��������� �� ��������� ����� - <B>orda_<I>������</I></B>, ��������� ������� ������� <B>ord_<I>��������</I></B> �� ������ ��������� ����";

// ��������� ������������ ������ ����� ���
$servicelist[]="009"; 
$servicelist[]="075"; 
$servicelist[]="088"; 
$servicelist[]="090"; 
$servicelist[]="091"; 
$servicelist[]="092"; 
$servicelist[]="093"; 
$servicelist[]="094"; 
$servicelist[]="095"; 
$servicelist[]="096"; 
$servicelist[]="097"; 
$servicelist[]="098"; 
$servicelist[]="099"; 
$servicelist[]="9900911";
$servicelist[]="9909111";
$servicelist[]="9909911";
$servicelist[]="99075";
$servicelist[]="99088";
$servicelist[]="99090";
$servicelist[]="99091";
$servicelist[]="99092";
$servicelist[]="99093";
$servicelist[]="99094";
$servicelist[]="99095";
$servicelist[]="99096";
$servicelist[]="99097";

// ������ ������������ ����� ���
$services["009"]="������� �������"; 
$services["075"]="������ �������-������������� ���������"; 
$services["088"]="������ ������� �������"; 
$services["090"]="�������������";
$services["091"]="���������"; 
$services["092"]="��������"; 
$services["093"]="����� � �����������"; 
$services["094"]="��������"; 
$services["095"]="������� ������"; 
$services["096"]="������ �� ��������"; 
$services["097"]="�������"; 
$services["098"]="���������� ����� ������������ ��������"; 
$services["099"]="���������� �������"; 
$services["9900911"]="��������, ������� �������"; 
$services["9909111"]="��������, ���������� �������"; 
$services["9909911"]="��������, ���������� �������";
$services["99075"]="��������, ������ �������-������������� ���������"; 
$services["99088"]="��������, ������ ������� �������"; 
$services["99090"]="��������, �������������"; 
$services["99091"]="��������, ���������"; 
$services["99092"]="��������, ��������"; 
$services["99093"]="��������, ����� � �����������"; 
$services["99094"]="��������, ��������"; 
$services["99095"]="��������, ������� ������"; 
$services["99096"]="��������, ������ ��� �����"; 
$services["99097"]="��������, �������"; 

$abonent_types["����"]="((ani LIKE '00172______') OR (ani LIKE '02______') OR (ani LIKE '2______') OR (ani LIKE '00175______') OR (ani LIKE '00178______') OR (ani LIKE '08______') OR (ani LIKE '8______') OR (ani LIKE '%8______') OR (ani LIKE '00172_____') OR (ani LIKE '02_____') OR (ani LIKE '00172____') OR (ani LIKE '02____'))";
$abonent_types["���"]="((ani LIKE '0296______') OR (ani LIKE '0293______') OR (ani LIKE '0291______') OR (ani LIKE '0299______'))";
$abonent_types["���"]="((ani LIKE '0297______') OR (ani LIKE '0295______') OR (ani LIKE '0292______') OR (ani LIKE '0298______'))";
$abonent_types["����"]="(ani LIKE '0259______')";
$abonent_types["������"]="(ani LIKE '00294______')";
$abonent_types["������"]="(!((ani LIKE '00172______') OR (ani LIKE '02______') OR (ani LIKE '2______') OR (ani LIKE '00175______') OR (ani LIKE '00178______') OR (ani LIKE '08______') OR (ani LIKE '8______') OR (ani LIKE '%8______') OR (ani LIKE '00172_____') OR (ani LIKE '02_____') OR (ani LIKE '00172____') OR (ani LIKE '02____') OR (ani LIKE '0296______') OR (ani LIKE '0293______') OR (ani LIKE '0291______') OR (ani LIKE '0299______') OR (ani LIKE '0297______') OR (ani LIKE '0295______') OR (ani LIKE '0292______') OR (ani LIKE '0298______') OR (ani LIKE '00294______') OR (ani LIKE '0259______')))";

$service_types["009"]="voice";
$service_types["075"]="auto";
$service_types["088"]="auto";
$service_types["090"]="voice";
$service_types["091"]="auto";
$service_types["092"]="auto";
$service_types["093"]="voice";
$service_types["094"]="auto";
$service_types["095"]="auto";
$service_types["096"]="auto";
$service_types["097"]="auto";
$service_types["098"]="voice";
$service_types["099"]="voice";
$service_types["9900911"]="voice";
$service_types["9909111"]="voice";
$service_types["9909911"]="voice";
$service_types["99075"]="auto";
$service_types["99088"]="auto";
$service_types["99090"]="voice";
$service_types["99091"]="auto";
$service_types["99092"]="auto";
$service_types["99093"]="voice";
$service_types["99094"]="auto";
$service_types["99095"]="auto";
$service_types["99096"]="auto";
$service_types["99097"]="auto";


// ������� �� ������������
$service_servedcondition["009"]="(LEFT(ddi,3)='009') AND (v_mreza>'') AND (v_oper>'') AND (rm>0) AND (((dur-(TIME_TO_SEC(v_oper)-TIME_TO_SEC(v_mreza)))>=0) OR (izgnum>''))";
$service_servedcondition["075"]="(dur>0) AND (LEFT(ddi,3)='075') AND (v_mreza>'')";
$service_servedcondition["088"]="(dur>0) AND (LEFT(ddi,3)='088') AND (v_mreza>'')";
$service_servedcondition["090"]="(LEFT(ddi,3)='090') AND (v_mreza>'') AND (v_oper>'') AND (rm>0) AND (((dur-(TIME_TO_SEC(v_oper)-TIME_TO_SEC(v_mreza)))>=0) OR (izgnum>''))";
$service_servedcondition["091"]="(dur>0) AND (LEFT(ddi,3)='091') AND (v_mreza>'')";
$service_servedcondition["092"]="(dur>0) AND (LEFT(ddi,3)='092') AND (v_mreza>'')";
$service_servedcondition["093"]="(LEFT(ddi,3)='093') AND (v_mreza>'') AND (v_oper>'') AND (rm>0) AND (((dur-(TIME_TO_SEC(v_oper)-TIME_TO_SEC(v_mreza)))>=0) OR (izgnum>''))";
$service_servedcondition["094"]="(dur>0) AND (LEFT(ddi,3)='094') AND (v_mreza>'')";
$service_servedcondition["095"]="(dur>0) AND (LEFT(ddi,3)='095') AND (v_mreza>'')";
$service_servedcondition["096"]="(dur>0) AND (LEFT(ddi,3)='096') AND (v_mreza>'')";
$service_servedcondition["097"]="(dur>0) AND (LEFT(ddi,3)='097') AND (v_mreza>'')";
$service_servedcondition["098"]="(dur>1) AND ((ddi='098') OR (ddi='001798'))";
$service_servedcondition["099"]="((LEFT(ddi,3)='099') OR (ddi='1111')) AND (v_mreza>'') AND (v_oper>'') AND (rm>0) AND (((dur-(TIME_TO_SEC(v_oper)-TIME_TO_SEC(v_mreza)))>=0) OR (izgnum>''))";
$service_servedcondition["9900911"]="(LEFT(ddi,7)='9900911') AND (v_mreza>'') AND (v_oper>'') AND (rm>0) AND (((dur-(TIME_TO_SEC(v_oper)-TIME_TO_SEC(v_mreza)))>=0) OR (izgnum>''))";
$service_servedcondition["9909111"]="((LEFT(ddi,7)='9909111') OR (ddi='2222')) AND (v_mreza>'') AND (v_oper>'') AND (rm>0) AND (((dur-(TIME_TO_SEC(v_oper)-TIME_TO_SEC(v_mreza)))>=0) OR (izgnum>''))";
$service_servedcondition["9909911"]="(LEFT(ddi,7)='9909911') AND (v_mreza>'') AND (v_oper>'') AND (rm>0) AND (((dur-(TIME_TO_SEC(v_oper)-TIME_TO_SEC(v_mreza)))>=0) OR (izgnum>''))";
$service_servedcondition["99075"]="(dur>0) AND (LEFT(ddi,5)='99075') AND (v_mreza>'')";
$service_servedcondition["99088"]="(dur>0) AND (LEFT(ddi,5)='99088') AND (v_mreza>'')";
$service_servedcondition["99090"]="(LEFT(ddi,5)='99090') AND (v_mreza>'') AND (v_oper>'') AND (rm>0) AND (((dur-(TIME_TO_SEC(v_oper)-TIME_TO_SEC(v_mreza)))>=0) OR (izgnum>''))";
$service_servedcondition["99091"]="(dur>0) AND (LEFT(ddi,5)='99091') AND (v_mreza>'')";
$service_servedcondition["99092"]="(dur>0) AND (LEFT(ddi,5)='99092') AND (v_mreza>'')";
$service_servedcondition["99093"]="(LEFT(ddi,5)='99093') AND (v_mreza>'') AND (v_oper>'') AND (rm>0) AND (((dur-(TIME_TO_SEC(v_oper)-TIME_TO_SEC(v_mreza)))>=0) OR (izgnum>''))";
$service_servedcondition["99094"]="(dur>0) AND (LEFT(ddi,5)='99094') AND (v_mreza>'')";
$service_servedcondition["99095"]="(dur>0) AND (LEFT(ddi,5)='99095') AND (v_mreza>'')";
$service_servedcondition["99096"]="(dur>0) AND (LEFT(ddi,5)='99096') AND (v_mreza>'')";
$service_servedcondition["99097"]="(dur>0) AND (LEFT(ddi,5)='99097') AND (v_mreza>'')";

// ������� �� ������
$service_billingcondition["009"]="(LEFT(ddi,3)='009') AND (v_mreza>'') AND (v_oper>'') AND (rm>0) AND (druga_info=0) AND (((dur-(TIME_TO_SEC(v_oper)-TIME_TO_SEC(v_mreza)))>3) OR (izgnum>'')) AND ((ani LIKE '00172______') OR (ani LIKE '02______') OR (ani LIKE '00175______') OR (ani LIKE '0296______') OR (ani LIKE '0293______') OR (ani LIKE '0297______') OR (ani LIKE '0295______') OR (ani LIKE '0292______'))";
$service_billingcondition["075"]="(dur>0) AND (LEFT(ddi,3)='075') AND (v_mreza>'') AND (druga_info=0) AND ((ani LIKE '00172______') OR (ani LIKE '02______') OR (ani LIKE '00175______') OR (ani LIKE '0296______') OR (ani LIKE '0293______') OR (ani LIKE '0297______') OR (ani LIKE '0295______') OR (ani LIKE '0292______'))";
$service_billingcondition["088"]="(dur>0) AND (LEFT(ddi,3)='088') AND (v_mreza>'') AND ((ani LIKE '00172______') OR (ani LIKE '02______') OR (ani LIKE '00175______') OR (ani LIKE '0296______') OR (ani LIKE '0293______') OR (ani LIKE '0297______') OR (ani LIKE '0295______') OR (ani LIKE '0292______'))";
$service_billingcondition["090"]="(LEFT(ddi,3)='090') AND (v_mreza>'') AND (v_oper>'') AND (rm>0) AND (druga_info=0) AND (((dur-(TIME_TO_SEC(v_oper)-TIME_TO_SEC(v_mreza)))>3) OR (izgnum>'')) AND ((ani LIKE '00172______') OR (ani LIKE '02______') OR (ani LIKE '00175______') OR (ani LIKE '0296______') OR (ani LIKE '0293______') OR (ani LIKE '0297______') OR (ani LIKE '0295______') OR (ani LIKE '0292______'))";
$service_billingcondition["091"]="(dur>0) AND (LEFT(ddi,3)='091') AND (v_mreza>'') AND (druga_info=0) AND ((ani LIKE '00172______') OR (ani LIKE '02______') OR (ani LIKE '00175______') OR (ani LIKE '0296______') OR (ani LIKE '0293______') OR (ani LIKE '0297______') OR (ani LIKE '0295______') OR (ani LIKE '0292______'))";
$service_billingcondition["092"]="(dur>0) AND (LEFT(ddi,3)='092') AND (v_mreza>'') AND (druga_info=0) AND ((ani LIKE '00172______') OR (ani LIKE '02______') OR (ani LIKE '00175______') OR (ani LIKE '0296______') OR (ani LIKE '0293______') OR (ani LIKE '0297______') OR (ani LIKE '0295______') OR (ani LIKE '0292______'))";
$service_billingcondition["093"]="(LEFT(ddi,3)='093') AND (v_mreza>'') AND (v_oper>'') AND (rm>0) AND (druga_info=0) AND (((dur-(TIME_TO_SEC(v_oper)-TIME_TO_SEC(v_mreza)))>3) OR (izgnum>'')) AND ((ani LIKE '00172______') OR (ani LIKE '02______') OR (ani LIKE '00175______') OR (ani LIKE '0296______') OR (ani LIKE '0293______') OR (ani LIKE '0297______') OR (ani LIKE '0295______') OR (ani LIKE '0292______'))";
$service_billingcondition["094"]="(dur>0) AND (LEFT(ddi,3)='094') AND (v_mreza>'') AND (druga_info=0) AND ((ani LIKE '00172______') OR (ani LIKE '02______') OR (ani LIKE '00175______') OR (ani LIKE '0296______') OR (ani LIKE '0293______') OR (ani LIKE '0297______') OR (ani LIKE '0295______') OR (ani LIKE '0292______'))";
$service_billingcondition["095"]="(dur>0) AND (LEFT(ddi,3)='095') AND (v_mreza>'') AND (druga_info=0) AND ((ani LIKE '00172______') OR (ani LIKE '02______') OR (ani LIKE '00175______') OR (ani LIKE '0296______') OR (ani LIKE '0293______') OR (ani LIKE '0297______') OR (ani LIKE '0295______') OR (ani LIKE '0292______'))";
$service_billingcondition["096"]="(dur>0) AND (LEFT(ddi,3)='096') AND (v_mreza>'') AND (druga_info=0) AND ((ani LIKE '00172______') OR (ani LIKE '02______') OR (ani LIKE '00175______') OR (ani LIKE '0296______') OR (ani LIKE '0293______') OR (ani LIKE '0297______') OR (ani LIKE '0295______') OR (ani LIKE '0292______'))";
$service_billingcondition["097"]="(dur>0) AND (LEFT(ddi,3)='097') AND (v_mreza>'') AND (druga_info=0) AND ((ani LIKE '00172______') OR (ani LIKE '02______') OR (ani LIKE '00175______') OR (ani LIKE '0296______') OR (ani LIKE '0293______') OR (ani LIKE '0297______') OR (ani LIKE '0295______') OR (ani LIKE '0292______'))";
$service_billingcondition["098"]="0";
$service_billingcondition["099"]="0";
$service_billingcondition["9900911"]="0";
$service_billingcondition["9909111"]="0";
$service_billingcondition["9909911"]="0";
$service_billingcondition["99075"]="0";
$service_billingcondition["99088"]="0";
$service_billingcondition["99090"]="0";
$service_billingcondition["99091"]="0";
$service_billingcondition["99092"]="0";
$service_billingcondition["99093"]="0";
$service_billingcondition["99094"]="0";
$service_billingcondition["99095"]="0";
$service_billingcondition["99096"]="0";
$service_billingcondition["99097"]="0";

// ������� ������ �� ������� (�����, ������������, ������ �� ������������, ������ �� ������)
$services2[0]=array("�����"=>"009","������������"=>"������� �������","������ �� ������������"=>"(LEFT(ddi,3)='009') AND (v_mreza>'') AND (v_oper>'') AND (rm>0) AND (((dur-(TIME_TO_SEC(v_oper)-TIME_TO_SEC(v_mreza)))>=0) OR (izgnum>''))","������ �� ������"=>"(LEFT(ddi,3)='009') AND (v_mreza>'') AND (v_oper>'') AND (rm>0) AND (druga_info=0) AND (((dur-(TIME_TO_SEC(v_oper)-TIME_TO_SEC(v_mreza)))>3) OR (izgnum>'')) AND ((ani LIKE '00172______') OR (ani LIKE '02______') OR (ani LIKE '00175______') OR (ani LIKE '0296______') OR (ani LIKE '0293______') OR (ani LIKE '0297______') OR (ani LIKE '0295______') OR (ani LIKE '0292______'))");
$services2[1]=array("�����"=>"075", "������������"=>"������ �������-������������� ���������","������ �� ������������"=>"(dur>0) AND (LEFT(ddi,3)='075') AND (v_mreza>'')", "������ �� ������"=>"(dur>0) AND (LEFT(ddi,3)='075') AND (v_mreza>'') AND (druga_info=0) AND ((ani LIKE '00172______') OR (ani LIKE '02______') OR (ani LIKE '00175______') OR (ani LIKE '0296______') OR (ani LIKE '0293______') OR (ani LIKE '0297______') OR (ani LIKE '0295______') OR (ani LIKE '0292______'))");
$services2[2]=array("�����"=>"088", "������������"=>"������ ������� �������","������ �� ������������"=>"(dur>0) AND (LEFT(ddi,3)='088') AND (v_mreza>'')", "������ �� ������"=>"(dur>0) AND (LEFT(ddi,3)='088') AND (v_mreza>'') AND ((ani LIKE '00172______') OR (ani LIKE '02______') OR (ani LIKE '00175______') OR (ani LIKE '0296______') OR (ani LIKE '0293______') OR (ani LIKE '0297______') OR (ani LIKE '0295______') OR (ani LIKE '0292______'))");
$services2[3]=array("�����"=>"090", "������������"=>"�������������","������ �� ������������"=>"(LEFT(ddi,3)='090') AND (v_mreza>'') AND (v_oper>'') AND (rm>0) AND (((dur-(TIME_TO_SEC(v_oper)-TIME_TO_SEC(v_mreza)))>=0) OR (izgnum>''))", "������ �� ������"=>"(LEFT(ddi,3)='090') AND (v_mreza>'') AND (v_oper>'') AND (rm>0) AND (druga_info=0) AND (((dur-(TIME_TO_SEC(v_oper)-TIME_TO_SEC(v_mreza)))>3) OR (izgnum>'')) AND ((ani LIKE '00172______') OR (ani LIKE '02______') OR (ani LIKE '00175______') OR (ani LIKE '0296______') OR (ani LIKE '0293______') OR (ani LIKE '0297______') OR (ani LIKE '0295______') OR (ani LIKE '0292______'))");
$services2[4]=array("�����"=>"091", "������������"=>"���������","������ �� ������������"=>"(dur>0) AND (LEFT(ddi,3)='091') AND (v_mreza>'')", "������ �� ������"=>"(dur>0) AND (LEFT(ddi,3)='091') AND (v_mreza>'') AND (druga_info=0) AND ((ani LIKE '00172______') OR (ani LIKE '02______') OR (ani LIKE '00175______') OR (ani LIKE '0296______') OR (ani LIKE '0293______') OR (ani LIKE '0297______') OR (ani LIKE '0295______') OR (ani LIKE '0292______'))");
$services2[5]=array("�����"=>"092", "������������"=>"��������","������ �� ������������"=>"(dur>0) AND (LEFT(ddi,3)='092') AND (v_mreza>'')", "������ �� ������"=>"(dur>0) AND (LEFT(ddi,3)='092') AND (v_mreza>'') AND (druga_info=0) AND ((ani LIKE '00172______') OR (ani LIKE '02______') OR (ani LIKE '00175______') OR (ani LIKE '0296______') OR (ani LIKE '0293______') OR (ani LIKE '0297______') OR (ani LIKE '0295______') OR (ani LIKE '0292______'))");
$services2[6]=array("�����"=>"093", "������������"=>"����� � �����������","������ �� ������������"=>"(LEFT(ddi,3)='093') AND (v_mreza>'') AND (v_oper>'') AND (rm>0) AND (((dur-(TIME_TO_SEC(v_oper)-TIME_TO_SEC(v_mreza)))>=0) OR (izgnum>''))", "������ �� ������"=>"(LEFT(ddi,3)='093') AND (v_mreza>'') AND (v_oper>'') AND (rm>0) AND (druga_info=0) AND (((dur-(TIME_TO_SEC(v_oper)-TIME_TO_SEC(v_mreza)))>3) OR (izgnum>'')) AND ((ani LIKE '00172______') OR (ani LIKE '02______') OR (ani LIKE '00175______') OR (ani LIKE '0296______') OR (ani LIKE '0293______') OR (ani LIKE '0297______') OR (ani LIKE '0295______') OR (ani LIKE '0292______'))");
$services2[7]=array("�����"=>"094", "������������"=>"��������","������ �� ������������"=>"(dur>0) AND (LEFT(ddi,3)='094') AND (v_mreza>'')", "������ �� ������"=>"(dur>0) AND (LEFT(ddi,3)='094') AND (v_mreza>'') AND (druga_info=0) AND ((ani LIKE '00172______') OR (ani LIKE '02______') OR (ani LIKE '00175______') OR (ani LIKE '0296______') OR (ani LIKE '0293______') OR (ani LIKE '0297______') OR (ani LIKE '0295______') OR (ani LIKE '0292______'))");
$services2[8]=array("�����"=>"095", "������������"=>"������� ������","������ �� ������������"=>"(dur>0) AND (LEFT(ddi,3)='095') AND (v_mreza>'')", "������ �� ������"=>"(dur>0) AND (LEFT(ddi,3)='095') AND (v_mreza>'') AND (druga_info=0) AND ((ani LIKE '00172______') OR (ani LIKE '02______') OR (ani LIKE '00175______') OR (ani LIKE '0296______') OR (ani LIKE '0293______') OR (ani LIKE '0297______') OR (ani LIKE '0295______') OR (ani LIKE '0292______'))");
$services2[9]=array("�����"=>"096", "������������"=>"������ ��� �����","������ �� ������������"=>"(dur>0) AND (LEFT(ddi,3)='096') AND (v_mreza>'')", "������ �� ������"=>"(dur>0) AND (LEFT(ddi,3)='096') AND (v_mreza>'') AND (druga_info=0) AND ((ani LIKE '00172______') OR (ani LIKE '02______') OR (ani LIKE '00175______') OR (ani LIKE '0296______') OR (ani LIKE '0293______') OR (ani LIKE '0297______') OR (ani LIKE '0295______') OR (ani LIKE '0292______'))");
$services2[10]=array("�����"=>"097", "������������"=>"�������","������ �� ������������"=>"(dur>0) AND (LEFT(ddi,3)='097') AND (v_mreza>'')", "������ �� ������"=>"(dur>0) AND (LEFT(ddi,3)='097') AND (v_mreza>'') AND (druga_info=0) AND ((ani LIKE '00172______') OR (ani LIKE '02______') OR (ani LIKE '00175______') OR (ani LIKE '0296______') OR (ani LIKE '0293______') OR (ani LIKE '0297______') OR (ani LIKE '0295______') OR (ani LIKE '0292______'))");
$services2[11]=array("�����"=>"098", "������������"=>"�������-���������","������ �� ������������"=>"(dur>1) AND ((ddi='098') OR (ddi='001798'))", "������ �� ������"=>"0");
$services2[12]=array("�����"=>"099", "������������"=>"���������� �������","������ �� ������������"=>"((LEFT(ddi,3)='099') OR (ddi='1111')) AND (v_mreza>'') AND (v_oper>'') AND (rm>0) AND (((dur-(TIME_TO_SEC(v_oper)-TIME_TO_SEC(v_mreza)))>=0) OR (izgnum>''))", "������ �� ������"=>"0");
$services2[13]=array("�����"=>"9900911", "������������"=>"��������, ������� �������","������ �� ������������"=>"(LEFT(ddi,7)='9900911') AND (v_mreza>'') AND (v_oper>'') AND (rm>0) AND (((dur-(TIME_TO_SEC(v_oper)-TIME_TO_SEC(v_mreza)))>=0) OR (izgnum>''))", "������ �� ������"=>"0");
$services2[14]=array("�����"=>"9909111", "������������"=>"��������, ���������� �������","������ �� ������������"=>"((LEFT(ddi,7)='9909111') OR (ddi='2222')) AND (v_mreza>'') AND (v_oper>'') AND (rm>0) AND (((dur-(TIME_TO_SEC(v_oper)-TIME_TO_SEC(v_mreza)))>=0) OR (izgnum>''))", "������ �� ������"=>"0");
$services2[15]=array("�����"=>"9909911", "������������"=>"��������, ���������� �������","������ �� ������������"=>"(LEFT(ddi,7)='9909911') AND (v_mreza>'') AND (v_oper>'') AND (rm>0) AND (((dur-(TIME_TO_SEC(v_oper)-TIME_TO_SEC(v_mreza)))>=0) OR (izgnum>''))", "������ �� ������"=>"0");
$services2[16]=array("�����"=>"99075", "������������"=>"��������, ������ �������-������������� ���������","������ �� ������������"=>"(dur>0) AND (LEFT(ddi,5)='99075') AND (v_mreza>'')", "������ �� ������"=>"0");
$services2[17]=array("�����"=>"99088", "������������"=>"��������, ������ ������� �������","������ �� ������������"=>"(dur>0) AND (LEFT(ddi,5)='99088') AND (v_mreza>'')", "������ �� ������"=>"0");
$services2[18]=array("�����"=>"99090", "������������"=>"��������, �������������","������ �� ������������"=>"(LEFT(ddi,5)='99090') AND (v_mreza>'') AND (v_oper>'') AND (rm>0) AND (((dur-(TIME_TO_SEC(v_oper)-TIME_TO_SEC(v_mreza)))>=0) OR (izgnum>''))", "������ �� ������"=>"0");
$services2[19]=array("�����"=>"99091", "������������"=>"��������, ���������","������ �� ������������"=>"(dur>0) AND (LEFT(ddi,5)='99091') AND (v_mreza>'')", "������ �� ������"=>"0");
$services2[20]=array("�����"=>"99092", "������������"=>"��������, ��������","������ �� ������������"=>"(dur>0) AND (LEFT(ddi,5)='99092') AND (v_mreza>'')", "������ �� ������"=>"0");
$services2[21]=array("�����"=>"99093", "������������"=>"��������, ����� � �����������","������ �� ������������"=>"(LEFT(ddi,5)='99093') AND (v_mreza>'') AND (v_oper>'') AND (rm>0) AND (((dur-(TIME_TO_SEC(v_oper)-TIME_TO_SEC(v_mreza)))>=0) OR (izgnum>''))", "������ �� ������"=>"0");
$services2[22]=array("�����"=>"99094", "������������"=>"��������, ��������","������ �� ������������"=>"(dur>0) AND (LEFT(ddi,5)='99094') AND (v_mreza>'')", "������ �� ������"=>"0");
$services2[23]=array("�����"=>"99095", "������������"=>"��������, ������� ������","������ �� ������������"=>"(dur>0) AND (LEFT(ddi,5)='99095') AND (v_mreza>'')", "������ �� ������"=>"0");
$services2[24]=array("�����"=>"99096", "������������"=>"��������, ������ ��� �����","������ �� ������������"=>"(dur>0) AND (LEFT(ddi,5)='99096') AND (v_mreza>'')", "������ �� ������"=>"0");
$services2[25]=array("�����"=>"99097", "������������"=>"��������, �������","������ �� ������������"=>"(dur>0) AND (LEFT(ddi,5)='99097') AND (v_mreza>'')", "������ �� ������"=>"0");

// ������ ���������� ������� ����� ������� ��������� ������� // ���������� ��� ������������� ����������� ���� $services2[$service_num_to_array_number["009"]]["������������"]
$service_num_to_array_number["009"]=0;
$service_num_to_array_number["075"]=1;
$service_num_to_array_number["088"]=2;
$service_num_to_array_number["090"]=3;
$service_num_to_array_number["091"]=4;
$service_num_to_array_number["092"]=5;
$service_num_to_array_number["093"]=6;
$service_num_to_array_number["094"]=7;
$service_num_to_array_number["095"]=8;
$service_num_to_array_number["096"]=9;
$service_num_to_array_number["097"]=10;
$service_num_to_array_number["098"]=11;
$service_num_to_array_number["099"]=12;
$service_num_to_array_number["9900911"]=13;
$service_num_to_array_number["9909111"]=14;
$service_num_to_array_number["9909911"]=15;
$service_num_to_array_number["99075"]=16;
$service_num_to_array_number["99088"]=17;
$service_num_to_array_number["99090"]=18;
$service_num_to_array_number["99091"]=19;
$service_num_to_array_number["99092"]=20;
$service_num_to_array_number["99093"]=21;
$service_num_to_array_number["99094"]=22;
$service_num_to_array_number["99095"]=23;
$service_num_to_array_number["99096"]=24;
$service_num_to_array_number["99097"]=25;
?>
