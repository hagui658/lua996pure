lib996 = {}



---����װ��λ��ȡװ������
---* actor �� ��Ҷ���
---* where �� װ��λ��
---@param actor object
---@param where int
---@nodiscard
function lib996:linkbodyitem(actor,where) end

---���������������
---@nodiscard
function lib996:getplayerlst() end

---�޳����߹һ���ɫ
---* mapID �� ��ͼ��,��*����ʾȫ����ͼ
---* level �� �޳��ȼ����ڴ˵ȼ����޳���*����ʾ����
---* count �� ����޳��������*����ʾ����
---@param mapID object
---@param level string
---@param count string
---@nodiscard
function lib996:tdummy(mapID,level,count) end

---���ת�����ַ���
---* tab �� Ҫת���ı��
---@param tab table
---@nodiscard
function lib996:tbl2json(tab) end

---�ַ���ת���ɱ��
---* str �� Ҫת�����ַ���
---@param str str
---@nodiscard
function lib996:json2tbl(str) end

---��ȡ��ǰʱ��
---@nodiscard
function lib996:gettime() end

---��ȡϵͳ����
---@nodiscard
function lib996:getsys() end

---��ӡ��־
---* str �� Ҫ��ӡ����Ϣ
---* show �� 0��m2��ͬ����ʾ��1��m2ͬ����ʾ
---@param str str
---@param show int
---@nodiscard
function lib996:scriptlog(str,show) end

---�����ļ�
---* path �� �ļ�·��
---@param path str
---@nodiscard
function lib996:include(path) end

---�½�����
---* actor �� ��Ҷ���
---* id �� ����id
---* a �� ����1�����滻�����������%s
---* b �� ����2�����滻�����������%s
---* c �� ����3�����滻�����������%s
---* d �� ����4�����滻�����������%s
---* e �� ����5�����滻�����������%s
---* f �� ����6�����滻�����������%s
---* g �� ����7�����滻�����������%s
---* h �� ����8�����滻�����������%s
---* i �� ����9�����滻�����������%s
---* j �� ����10�����滻�����������%s
---@param actor object
---@param id int
---@param a str
---@param b str
---@param c str
---@param d str
---@param e str
---@param f str
---@param g str
---@param h str
---@param i str
---@param j str
---@nodiscard
function lib996:newpicktask(actor,id,a,b,c,d,e,f,g,h,i,j) end

---ˢ�½���������״̬
---* actor �� ��Ҷ���
---* id �� ����id
---* a �� ����1�����滻�����������%s
---* b �� ����2�����滻�����������%s
---* c �� ����3�����滻�����������%s
---* d �� ����4�����滻�����������%s
---* e �� ����5�����滻�����������%s
---* f �� ����6�����滻�����������%s
---* g �� ����7�����滻�����������%s
---* h �� ����8�����滻�����������%s
---* i �� ����9�����滻�����������%s
---* j �� ����10�����滻�����������%s
---@param actor object
---@param id int
---@param a str
---@param b str
---@param c str
---@param d str
---@param e str
---@param f str
---@param g str
---@param h str
---@param i str
---@param j str
---@nodiscard
function lib996:newchangetask(actor,id,a,b,c,d,e,f,g,h,i,j) end

---�������
---* actor �� ��Ҷ���
---* id �� ����id
---@param actor object
---@param id int
---@nodiscard
function lib996:newcompletetask(actor,id) end

---ɾ������
---* actor �� ��Ҷ���
---* id �� ����id
---@param actor object
---@param id int
---@nodiscard
function lib996:newdeletetask(actor,id) end

---�����ö���ʾ
---* actor �� ��Ҷ���
---* id �� ����id
---@param actor object
---@param id int
---@nodiscard
function lib996:tasktopshow(actor,id) end

---�ڳ��Զ�Ѱ·��ָ������
---* actor �� ��Ҷ���
---* x �� x����
---* y �� y����
---* range �� ��Χ:0-12 ��0�򲻼��
---@param actor object
---@param x int
---@param y int
---@param range int
---@nodiscard
function lib996:dartmap(actor,x,y,range) end

---��������ʱ�ڳ��������
---* actor �� ��Ҷ���
---* time �� �ڳ����ʱ�䣬��
---* aim �� 0-��ʧ��1-ʱ�䵽����ʧ
---@param actor object
---@param time int
---@param aim int
---@nodiscard
function lib996:darttime(actor,time,aim) end

---�̳��Ƿ�����ָ��������ʾ
---* actor �� ��Ҷ���
---* show �� 1-����ʾ��0-��ʾ
---@param actor object
---@param show int
---@nodiscard
function lib996:notallowshow(actor,show) end

---�̳��Ƿ�����ָ����������
---* actor �� ��Ҷ���
---* buy �� 1-��������0-������
---@param actor object
---@param buy int
---@nodiscard
function lib996:notallowbuy(actor,buy) end

---�����Ϣ������̨
---* str �� Ҫ�������Ϣ
---@param str str
---@nodiscard
function lib996:release_print(str) end

---������Ļ��Ч
---* actor �� ��Ҷ���
---* id �� 	��Ч���
---* effectid �� ��ЧID
---* x �� ����Ļ�ϵ�X����
---* y �� ����Ļ�ϵ�Y����
---* speed �� �����ٶ�
---* times �� ���Ŵ��� 0Ϊ����
---* itype �� 0:�Լ� 1:������
---@param actor object
---@param id int
---@param effectid int
---@param x int
---@param y int
---@param speed int
---@param times int
---@param itype int
---@nodiscard
function lib996:screffects(actor,id,effectid,x,y,speed,times,itype) end

---�ر���Ļ��Ч
---* actor �� ��Ҷ���
---* id �� 	��Ч���
---* itype �� 0:�Լ� 1:������
---@param actor object
---@param id int
---@param itype int
---@nodiscard
function lib996:deleffects(actor,id,itype) end

---��ȡȫ����Ϣ
---* itype �� 0: ȫ�������Ϣ 1: ��������(��̨ά��) 2: ����ʱ��(��̨ά��) 3: �Ϸ����� 4: �Ϸ�ʱ�� 5: ������IP 6: ������� 7: ����������� 8: ����汾��
---@param itype int
---@nodiscard
function lib996:globalinfo(itype) end

---��Ӽƻ�����
---* id �� 	����ƻ�id�������ظ�
---* name �� ����ƻ�����
---* itype �� 0:ָ��ʱ�� 1:ÿ��ִ�� 2:ÿ��ִ�� 3:ÿ��ִ��
---* strtime �� ʱ��� ��ϸ��ʾ�� ��ʱ��#ƴ��
---* strfun �� �ص�����
---* param �� �Զ�������������#ƴ��
---@param id int
---@param name str
---@param itype int
---@param strtime str
---@param strfun str
---@param param str
---@nodiscard
function lib996:addscheduled(id,name,itype,strtime,strfun,param) end

---�жϼƻ������Ƿ����
---* id �� ����ƻ�id�������ظ�
---@param id int
---@nodiscard
function lib996:hasscheduled(id) end

---ɾ���ƻ�����
---* id �� ����ƻ�id�������ظ�
---@param id int
---@nodiscard
function lib996:delscheduled(id) end

---��������lua���������
---* actor �� ��Ҷ���
---* idx �� npcid QF:999999999,QM:999999996
---* time �� �ӳ�ʱ��ms,0����ִ��
---* strfun �� ������
---* param �� ����
---@param actor object
---@param idx int
---@param time INT
---@param strfun str
---@param param str
---@nodiscard
function lib996:callfunbynpc(actor,idx,time,strfun,param) end

---�����޵�ģʽ
---* actor �� ��Ҷ���
---* int �� 1���޵У�0�����޵�
---@param actor object
---@param int int
---@nodiscard
function lib996:superman(actor,int) end

---��������ģʽ
---* actor �� ��Ҷ���
---* int �� 1������0��������
---@param actor object
---@param int int
---@nodiscard
function lib996:observer(actor,int) end

---��ȡ���к�����
---@nodiscard
function lib996:getalltimems() end

---�޸����ﵱǰѪ��
---* actor �� ��Ҷ���
---* char �� ������ + - =
---* nvalue �� Ѫ��
---* effid �� �ز�ID
---@param actor object
---@param char string
---@param nvalue string
---@param effid bool
---@nodiscard
function lib996:humanhp( actor, char, nvalue, effid ) end

---�޸����ﵱǰ����
---* actor �� ��Ҷ���
---* char �� ������ + - =
---* nvalue �� ����
---* effid �� �ز�ID
---@param actor object
---@param char string
---@param nvalue string
---@param effid bool
---@nodiscard
function lib996:humanhp( actor, char, nvalue, effid ) end

---֪ͨ��ΧѪ���������仯
---* actor �� ��Ҷ���
---@param actor object
---@nodiscard
function lib996:healthspellchanged(actor) end

---��ȡ����/���� �����Ϣ
---* actor �� ��Ҷ���
---* id �� ����
---* param �� ����3����ID=2ʱ�����ã�
---@param actor object
---@param id int
---@param param int
---@nodiscard
function lib996:getbaseinfo(actor,id,param) end

---��������/���� �����Ϣ
---* actor �� ��Ҷ���
---* id �� ����
---* value �� ����ֵ
---@param actor object
---@param id int
---@param value int
---@nodiscard
function lib996:setbaseinfo(actor,id,value) end

---�ж϶����Ƿ�Ϊ���   
---* actor �� ����
---@param actor object
---@nodiscard
function lib996:isplayer(actor) end

---�ж϶����Ƿ�����   
---* actor �� ����
---@param actor object
---@nodiscard
function lib996:isdeath(actor) end

---��ȡ��������   
---* actor �� ����
---@param actor object
---@nodiscard
function lib996:getname(actor) end

---��ȡ�������ڵĵ�ͼid   
---* actor �� ����
---@param actor object
---@nodiscard
function lib996:getmapid(actor) end

---��ȡ����xy����   
---* actor �� ����
---@param actor object
---@nodiscard
function lib996:getxy(actor) end

---��ȡ����ǰHP  
---* actor �� ����
---@param actor object
---@nodiscard
function lib996:gethp(actor) end

---��ȡ����ǰMP  
---* actor �� ����
---@param actor object
---@nodiscard
function lib996:getmp(actor) end

---��ȡ�������HP  
---* actor �� ����
---@param actor object
---@nodiscard
function lib996:getmaxhp(actor) end

---��ȡ�������MP  
---* actor �� ����
---@param actor object
---@nodiscard
function lib996:getmaxmp(actor) end

---֪ͨ�ͻ�����ʾ��ʾ��
---* actor �� ��Ҷ���
---* FormName �� �ļ���
---* Content �� Win_Create�ڵ�ID(������#��ƴ��)
---@param actor object
---@param FormName string
---@param Content string
---@nodiscard
function lib996:showformwithcontent(actor,FormName,Content) end

---��ѯ���������Ƿ����
---* actor �� ��Ҷ���
---* name �� Ҫ��ѯ������
---@param actor object
---@param name string
---@nodiscard
function lib996:queryhumnameexist(actor,name) end

---�޸���������
---* actor �� ��Ҷ���
---* name �� Ҫ�޸ĵ�����
---@param actor object
---@param name string
---@nodiscard
function lib996:changehumname(actor,name) end

---�޸�����������ɫ
---* actor �� ��Ҷ���
---* color �� 996m2 ��ɫ�б�
---@param actor object
---@param color int
---@nodiscard
function lib996:changenamecolor(actor,color) end

---��ȡ������ʱ����
---* actor �� ��Ҷ���
---* nWhere �� λ�� ��Ӧcfg_att_score ����ID
---@param actor object
---@param nWhere int
---@nodiscard
function lib996:gethumnewvalue(actor,nWhere) end

---�޸�������ʱ���ԣ�����Ч�ڣ�
---* actor �� ��Ҷ���
---* nWhere �� λ�� ��Ӧcfg_att_score ����ID
---* nValue �� ��Ӧ����ֵ
---* nTime �� ��Чʱ�䣬��
---@param actor object
---@param nWhere int
---@param nValue int
---@param nTime int
---@nodiscard
function lib996:changehumnewvalue(actor,nWhere,nValue,nTime) end

---�������ﾭ��ֵ
---* actor �� ��Ҷ���
---* char �� ������ + - =
---* count �� ����
---* addexp �� �Ƿ����Ӿ����龭��
---@param actor object
---@param char string
---@param count string
---@param addexp bool
---@nodiscard
function lib996:changeexp(actor,char,count,addexp) end

---��������ȼ�
---* actor �� ��Ҷ���
---* char �� ������ + - =
---* count �� ����
---@param actor object
---@param char string
---@param count string
---@nodiscard
function lib996:changelevel(actor,char,count) end

---��������
---* actor �� ��Ҷ���
---* where �� λ�� 0-9
---* effType �� ����Ч��(0ͼƬ���� 1��ЧID)
---* resName �� ͼƬ��������ЧID
---* x �� X���� (Ϊ��ʱĬ��X=0)
---* y �� Y���� (Ϊ��ʱĬ��Y=0)
---* autoDrop �� �Զ���ȫ�հ�λ��0,1(0=�� 1=����)
---* selfSee �� �Ƿ�ֻ���Լ�����(0=�����˶��ɼ� 1=�����Լ��ɼ�)
---@param actor object
---@param where int
---@param effType int
---@param resName string
---@param x int
---@param y int  
---@param autoDrop int
---@param selfSee int 
---@nodiscard
function lib996:seticon(actor,where,effType,resName,x,y,autoDrop,selfSee) end

---���������ϲ�����Ч
---* actor �� ��Ҷ���
---* effectid �� ��ЧID
---* offsetX �� ���������ƫ�Ƶ�X����
---* offsetY �� ���������ƫ�Ƶ�Y����
---* times �� ���Ŵ�����0-һֱ����
---* behind �� ����ģʽ-0-ǰ��-1-����
---* selfshow �� ���Լ��ɼ�0-����Ұ�ھ��ɼ���1-��
---@param actor object
---@param effectid int
---@param offsetX int
---@param offsetY int
---@param times int
---@param behind int  
---@param selfshow int
---@nodiscard
function lib996:playeffect(actor,effectid,offsetX,offsetY,times,behind,selfshow) end

---����������ϲ��ŵ���Ч
---* actor �� ��Ҷ���
---* effectid �� ��ЧID
---@param actor object
---@param effectid string
---@nodiscard
function lib996:clearplayeffect(actor,effectid) end

---��ѯ�������
---* actor �� ��Ҷ���
---* id �� ����ID��1-100��
---@param actor object
---@param id int
---@nodiscard
function lib996:querymoney(actor,id) end

---��ȡ����ͨ�û�������(����Ҽ���)
---* actor �� ��Ҷ���
---* moneyname �� ��������
---@param actor object
---@param moneyname string
---@nodiscard
function lib996:getbindmoney(actor,moneyname) end

---�۳�����ͨ�û�������(��������μ���)
---* actor �� ��Ҷ���
---* moneyname �� ��������
---* count �� ��Ӧ����ֵ
---@param actor object
---@param moneyname string
---@param count int
---@nodiscard
function lib996:consumebindmoney( actor, moneyname, count ) end

---�������ﱳ��������
---* actor �� ��Ҷ���
---* count �� ���Ӵ�С����С��46��������126��
---@param actor object
---@param count int
---@nodiscard
function lib996:setbagcount( actor, count ) end

---������ѡ��������Ʒ
---* actor �� ��Ҷ���
---* makeindex �� ѡ�е���ƷΨһID�����Ʒ�á�,���ָ�
---@param actor object
---@param makeindex str
---@nodiscard
function lib996:selectbagitems( actor, makeindex ) end

---����װ��
---* actor �� ��Ҷ���
---* where �� λ��
---* makeindex �� 	��ƷΨһID
---@param actor object
---@param where int
---@param makeindex int
---@nodiscard
function lib996:takeonitem( actor, where, makeindex ) end

---����װ��
---* actor �� ��Ҷ���
---* where �� λ��
---* makeindex �� 	��ƷΨһID
---@param actor object
---@param where int
---@param makeindex int
---@nodiscard
function lib996:takeoffitem( actor, where, makeindex ) end

---��/�����κ�
---* actor �� ��Ҷ���
---* bState �� 0���رգ�1������
---@param actor object
---@param bState int
---@nodiscard
function lib996:setsndaitembox(actor,bState) end

---�޸��������·����
---* actor �� ��Ҷ���
---* item �� ��Ʒ����
---* looks �� 	���ֵ
---@param actor object
---@param item object
---@param looks int
---@nodiscard
function lib996:changeitemshape(actor,item,looks) end

---��ȡ����ʣ��ո���
---* actor �� ��Ҷ���
---@param actor object
---@nodiscard
function lib996:getbagblank(actor) end

---��ȡ����������Ʒ
---* actor �� ��Ҷ���
---@param actor object
---@nodiscard
function lib996:getbagitems(actor) end

---��ȡ�ֿ�������Ʒ
---* actor �� ��Ҷ���
---@param actor object
---@nodiscard
function lib996:getstorageitems(actor) end

---�����������Ʒ
---* actor �� ��Ҷ���
---@param actor object
---@nodiscard
function lib996:refreshbag(actor) end

---������װ��������Ч
---* actor �� ��Ҷ���
---* effectid �� ��ЧID�� 0-ɾ����Ч
---* position �� 	��ʾλ�ã�0-ǰ�� 1-����
---@param actor object
---@param effectid int
---@param position int
---@nodiscard
function lib996:updateequipeffect(actor,effectid,position) end

---�����������ȡ��Ҷ���
---* name �� ��Ҷ���
---@param name string
---@nodiscard
function lib996:getplayerbyname(name) end

---�������ΨһID��ȡ��Ҷ���
---* id �� ���Ψһid
---@param id string
---@nodiscard
function lib996:getplayerbyid(id) end

---�޸Ĺ���ģʽ
---* actor �� 	��Ҷ���
---* attackmode �� ����ģʽ
---@param actor object
---@param attackmode int
---@nodiscard
function lib996:changeattackmode(actor,attackmode) end

---ǿ���޸Ĺ���ģʽ
---* actor �� ��Ҷ���
---* attackmode �� ����ģʽ -1=��ǰ����ǿ��״̬
---* time �� 	ǿ���л�ʱ��ʱ��
---@param actor object
---@param attackmode int
---@param time int
---@nodiscard
function lib996:setattackmode(actor,attackmode,time) end

---��ȡ��ǰ����ģʽ
---* actor �� ��Ҷ���
---@param actor object
---@nodiscard
function lib996:getattackmode(actor) end

---��ת����ͼ�������
---* actor �� 	��Ҷ���
---* mapname �� ��ͼ��
---@param actor object
---@param mapname string
---@nodiscard
function lib996:map(actor,mapname) end

---��ת����ͼָ������
---* actor �� ��Ҷ���
---* mapname �� ��ͼ��
---* nX �� 	X����
---* nY �� Y����
---* nRange �� 	��Χ
---@param actor object
---@param mapname string
---@param nX int
---@param nY int
---@param nRange int
---@nodiscard
function lib996:mapmove(actor,mapname,nX,nY,nRange) end

---������ҵ�ָ��λ��
---* actor �� ��Ҷ���
---* X �� X����
---* Y �� Y����
---@param actor object
---@param X string
---@param Y string
---@nodiscard
function lib996:gotonow(actor,X,Y) end

---��ȡ���GMȨ�޵ȼ�
---* actor �� ��Ҷ���
---@param actor object
---@nodiscard
function lib996:getgmlevel(actor) end

---����
---* actor �� ��Ҷ���
---@param actor object
---@nodiscard
function lib996:realive(actor) end

---��ʱ��ת
---* actor �� ��Ҷ���
---* time �� ʱ��(����)
---* func �� 	��������
---* del �� ����ͼ�Ƿ�ɾ������ʱ(0��Ϊ��ʱ=��ɾ�� 1=ɾ��)
---* param �� 	�������#��ƴ��
---@param actor object
---@param time int
---@param func string
---@param del int
---@param param str
---@nodiscard
function lib996:delaygoto(actor,time,func,del) end

---ɾ���ӳ�
---* actor �� ��Ҷ���
---@param actor object
---@nodiscard
function lib996:cleardelaygoto(actor) end

---����ƮѪƮ����Ч
---* target �� ƮѪƮ�ֵ����壬һ��Ϊ�ܹ�����
---* type �� ��ʾ���� ��ϸ���·�˵����
---* damage �� 	��ʾ�ĵ���
---* hitter �� ����Ϊ������ �ɿ���ƮѪƮ�ֵ����壬һ��Ϊ������
---@param target object
---@param type integer
---@param damage integer
---@param hitter object
---@nodiscard
function lib996:sendattackeff(target,type,damage,hitter) end

---�趨���﹥��ƮѪƮ������
---* actor �� ��Ҷ���
---* type �� ��ʾ����
---@param actor object
---@param type int
---@nodiscard
function lib996:setattackefftype(actor,type) end

---�ɼ��ڿ�Ƚ���������
---* actor �� ��Ҷ���
---* time �� ������ʱ�䣬��
---* succ �� 	�ɹ�����ת�ĺ���
---* msg �� ��ʾ��Ϣ
---* canstop �� �ܷ��ж�0-�����ж�1-�����ж�
---* fail ��   �жϴ����ĺ���
---@param actor object
---@param time int
---@param succ string
---@param msg string
---@param canstop int
---@param fail string
---@nodiscard
function lib996:showprogressbardlg(actor,time,succ,msg,canstop,fail) end

---������Ҵ��˴���
---* actor �� ��Ҷ���
---* type �� ģʽ��0-�ָ�Ĭ�ϣ�1-���ˣ�2-���֣�3-���˴���
---* time �� 	ʱ��(��)
---* objtype �� ���� ��0-��ң�1-����
---@param actor object
---@param type int
---@param time int
---@param objtype int
---@nodiscard
function lib996:throughhum(actor,type,time,objtype) end

---���õ�ǰ����Ŀ��
---* obj1 �� ��һ�Ӣ�ۻ�������1  
---* obj2 �� ��һ�Ӣ�ۻ�������2
---@param obj1 object
---@param obj2 object
---@nodiscard
function lib996:settargetcert(obj1,obj2) end

---�Ƿ�����趨Ϊ����Ŀ��
---* obj1 �� ��һ�Ӣ�ۻ�������1  
---* obj2 �� ��һ�Ӣ�ۻ�������2
---@param obj1 object
---@param obj2 object
---@nodiscard
function lib996:ispropertarget(obj1,obj2) end

---ֹͣ��̯
---* actor �� ��Ҷ���
---@param actor object
---@nodiscard
function lib996:forbidmyshop(actor) end

---��������
---* actor �� ��Ҷ���
---* ID �� ID
---* name �� ��ʾ����
---* fun �� ������(������ö��ŷָ�)
---@param actor object
---@param ID int
---@param name string
---@param fun function
---@nodiscard
function lib996:addbutshow(actor,ID,name,fun) end

---ɾ������
---* actor �� ��Ҷ��� 
---* ID �� ID
---@param actor object
---@param ID int
---@nodiscard
function lib996:delbutshow(actor,ID) end

---��ȡ��ɫ����
---* actor �� ��Ҷ��� 
---* attid �� ����id
---@param actor object
---@param attid int
---@nodiscard
function lib996:attr(actor,attid) end

---�����������
---* actor �� ��Ҷ���
---* id �� ����ID��1-100��
---* opt �� ������ + - =
---* count �� ����
---* msg �� ��ע���� 
---* send �� �Ƿ�����ˢ��
---@param actor object
---@param id int
---@param opt str
---@param count int
---@param msg str
---@param send bool
---@nodiscard
function lib996:changemoney(actor,id,opt,count,msg,send) end

---�޸��������·���Ч
---* actor �� ��Ҷ���
---* where �� λ�� 0��1
---* EffId �� ��ЧID
---* selfSee �� �Ƿ�ֻ���Լ�����(1=�����˶��ɼ� 0=�����Լ��ɼ�)
---@param actor object
---@param where int
---@param EffId int
---@param selfSee int
---@nodiscard
function lib996:changedresseffect(actor,where,EffId,selfSee) end

---ֹͣ�Զ��һ�
---* actor �� ��Ҷ��� 
---@param actor object
---@nodiscard
function lib996:stopautoattack(actor) end

---�����ʼ�
---* userid �� ���Ψһid ����������� #����ȭ
---* type �� �Զ����ʼ�����
---* title �� �ʼ�����
---* str �� �ʼ�����
---* rewards �� ��������Ʒ1#����#�󶨱��&��Ʒ2#����#�󶨱�ǣ�&���飬#�ָ� 
---@param userid string
---@param type int
---@param title int
---@param str int
---@param rewards int
---@nodiscard
function lib996:sendmail(userid,type,title,str,rewards) end

---�����������Ϣ
---* actor �� ��Ҷ���
---* type �� 1:�Լ� 2:ȫ�� 3:�л� 4:��ǰ��ͼ 5:���
---* msg �� ��Ϣ����
---@param actor object
---@param type int
---@param msg str
---@nodiscard
function lib996:sendmsg(actor,type,msg) end

---������Ļ�м��������Ϣ
---* actor �� ��Ҷ���
---* FColor �� ǰ��ɫ
---* BColor �� ����ɫ
---* msg �� ��Ϣ����
---* flag �� 0:���͸��Լ� 1:������������ 2:�����л� 3:���͹��� 4:���͵�ǰ��ͼ 5:�滻ģʽ 7:���
---* time �� ��ʾʱ��
---* func �� ����ʱ��������ת�Ľű�λ�ã���Ӧ�ű���Ҫ��QFunction�ű��У�ʹ����תʱ����Ϣ������ʾ�б������%d��������ʾ����ʱʱ��
---@param actor object
---@param FColor int
---@param BColor int
---@param msg str
---@param flag str
---@param time int
---@param func str
---@nodiscard
function lib996:sendcentermsg(actor,FColor,BColor,msg,flag,time,func) end

---���������̶���Ϣ
---* actor �� ��Ҷ���
---* flag �� 0:������������ 1:���͸��Լ� 2:�����л� 3:���͵�ǰ��ͼ 4:���
---* FColor �� ǰ��ɫ
---* BColor �� ����ɫ
---* time �� ��ʾʱ��
---* msg �� ��Ϣ����
---* show �� �Ƿ���ʾ�������� 0-�� 1-��
---@param actor object
---@param flag str
---@param FColor int
---@param BColor int
---@param time int
---@param msg str
---@param show str
---@nodiscard
function lib996:sendtopchatboardmsg(actor,flag,FColor,BColor,msg,time,show) end

---������Ļ������Ϣ
---* actor �� ��Ҷ���
---* flag �� 0:���͸��Լ� 1:������������ 2:�����л� 3:���͵�ǰ��ͼ 4:���
---* FColor �� ǰ��ɫ
---* BColor �� ����ɫ
---* higjt �� �߶�
---* show �� ��������
---* msg �� ��Ϣ����
---@param actor object
---@param flag str
---@param FColor int
---@param BColor int
---@param higjt int
---@param show int
---@param msg str
---@nodiscard
function lib996:sendmovemsg(actor,flag,FColor,BColor,higjt,show,msg) end

---����������Ϣ
---* actor �� ��Ҷ���
---* msg �� ��Ϣ����
---* afun �� ȷ������ת�Ľӿ�
---* bfun �� ȡ������ת�Ľӿ�
---@param actor object
---@param msg str
---@param afun str
---@param bfun str
---@nodiscard
function lib996:messagebox(actor,msg,afun,bfun) end

---���ô���
---* actor �� ��Ҷ���
---* info �� 0:С���Ա 1:�л��Ա 2:��ǰ��ͼ������ 3:���Լ�Ϊ���ķ�Χ���
---* strfun �� �ص�����
---* range �� ����ģʽ=3ʱָ���ķ�Χ��С
---@param actor object
---@param info int
---@param strfun str
---@param range str
---@nodiscard
function lib996:gotolabel(actor,info,strfun,range) end

---�����ֿ����
---* actor �� ��Ҷ���
---* count �� Ҫ���͵ĸ�����
---@param actor object
---@param count int
---@nodiscard
function lib996:changestorage(actor,count) end

---�����Զ��һ�
---* actor �� ��Ҷ���
---@param actor object
---@nodiscard
function lib996:startautoattack(actor) end

---��������
---* actor �� ��Ҷ���
---* id �� �ļ�����
---* count �� ѭ�����Ŵ���
---* flag �� 0.���Ÿ��Լ� 1.���Ÿ�ȫ�� 2.���Ÿ�ͬһ��ͼ 4.���Ÿ�ͬ������
---@param actor object
---@param id int
---@param count int
---@param flag int
---@nodiscard
function lib996:playsound(actor,id,count,flag) end

---ֹͣ��ǰ����
---* actor �� ��Ҷ���
---@param actor object
---@nodiscard
function lib996:stop(actor) end

---��ȡ���Ψһid
---* actor �� ��Ҷ���
---@param actor object
---@nodiscard
function lib996:getuserid(actor) end

---��ȡ��ҵ�ǰ�ȼ�
---* actor �� ��Ҷ���
---@param actor object
---@nodiscard
function lib996:getlevel(actor) end

---��ȡ����Ա�
---* actor �� ��Ҷ���
---@param actor object
---@nodiscard
function lib996:getsex(actor) end

---��ȡ���ְҵ
---* actor �� ��Ҷ���
---@param actor object
---@nodiscard
function lib996:getjob(actor) end

---��ȡ��ҵ�ǰ����ֵ
---* actor �� ��Ҷ���
---@param actor object
---@nodiscard
function lib996:getexp(actor) end

---��ȡ���ת���ȼ�
---* actor �� ��Ҷ���
---@param actor object
---@nodiscard
function lib996:getrelevel(actor) end

---��ȡ��ұ�����������
---* actor �� ��Ҷ���
---@param actor object
---@nodiscard
function lib996:getbagsize(actor) end

---�ж���Ҷ����Ƿ�Ϊ�л�᳤
---* actor �� ��Ҷ���
---@param actor object
---@nodiscard
function lib996:isguildmaster(actor) end

---��ȡ����Զ�Ѱ·�յ�����
---* actor �� ��Ҷ���
---@param actor object
---@nodiscard
function lib996:gettargetxy(actor) end

---����������Ч��
---* actor �� ��Ҷ���
---* time �� ����ʱ�䣬�룬-1ȡ��������Ч��
---@param actor object
---@param time int
---@nodiscard
function lib996:sethide(actor,time) end

---��ȡ���pk��
---* actor �� ��Ҷ���
---@param actor object
---@nodiscard
function lib996:getpkpoint(actor) end

---�������pk��
---* actor �� ��Ҷ���
---* opt �� ������ + - =
---* n �� ����
---@param actor object
---@param opt str
---@param n int
---@nodiscard
function lib996:setpkpoint(actor,opt, n) end

---������ҵȼ�
---* actor �� ��Ҷ���
---* opt �� ������ + - =
---* n �� ����
---@param actor object
---@param opt str
---@param n int
---@nodiscard
function lib996:setlevel(actor,opt, n) end

---��������Ա�
---* actor �� ��Ҷ���
---* n �� �Ա� 0���У�1��Ů
---@param actor object
---@param n int
---@nodiscard
function lib996:setsex(actor,n) end

---�������ְҵ
---* actor �� ��Ҷ���
---* n �� 0��սʿ��1����ʦ��2����ʿ
---@param actor object
---@param n int
---@nodiscard
function lib996:setjob(actor,n) end

---�������ת���ȼ�
---* actor �� ��Ҷ���
---* n �� ��ǰת���ȼ�
---@param actor object
---@param n int
---@nodiscard
function lib996:setrelevel(actor,n) end

---��ȡ��������ֵ
---* actor �� ��Ҷ���
---@param actor object
---@nodiscard
function lib996:getmaxexp(actor) end

---��ȡ��ɫ��������
---* actor �� ��Ҷ���
---@param actor object
---@nodiscard
function lib996:attrtab(actor) end

---ˢ����������
---* actor �� ��Ҷ���
---@param actor object
---@nodiscard
function lib996:recalcabilitys(actor) end

---������ƷΨһID�����Ʒ����
---* actor �� ��Ҷ���
---* makeindex �� ��ƷΨһID
---@param actor object
---@param makeindex int
---@nodiscard
function lib996:getitembymakeindex(actor,makeindex) end

---����Ʒ
---* actor �� ��Ҷ���
---* itemname �� ��Ʒ����
---* qty �� ����
---* bind �� ��Ʒ����
---@param actor object
---@param itemname string
---@param qty int
---@param bind int
---@nodiscard
function lib996:giveitem(actor,itemname,qty,bind) end

---����Ʒֱ��װ��
---* actor �� ��Ҷ���
---* where �� װ��λ��
---* itemname �� ��Ʒ����
---* qty �� ����
---* bind �� ��Ʒ����
---@param actor object
---@param where int
---@param itemname string
---@param qty int
---@param bind int
---@nodiscard
function lib996:giveonitem(actor,where,itemname,qty,bind) end

---����Ʒ
---* actor �� ��Ҷ���
---* itemname �� ��Ʒ����
---* qty �� ����
---* IgnoreJP �� ���Լ�Ʒ(0:���ж��۳���1����Ʒ���۳�)
---@param actor object
---@param itemname string
---@param qty int
---@param IgnoreJP int
---@nodiscard
function lib996:takeitem(actor,itemname,qty,IgnoreJP) end

---����װ��λ��ȡװ������
---* actor �� ��Ҷ���
---* where �� װ��λ��
---@param actor object
---@param where int
---@nodiscard
function lib996:linkbodyitem(actor,where) end

---��ȡ��Ʒʵ����Ϣ
---* actor �� ��Ҷ���
---* item �� ��Ʒ����
---* id �� 1:ΨһID 2:��ƷID 3:ʣ��־� 4:���־� 5:�������� 6:��״̬
---@param actor object
---@param item object
---@param id int
---@nodiscard
function lib996:getiteminfo(actor,item,id) end

---��ȡ��Ʒģ����Ϣ
---* itemid �� ��ƷID
---* itemName �� ��Ʒ����
---* id �� 0:idx 1:���� 2:StdMode 3:Shape 4:���� 5:AniCount 6:���־� 7:�������� 8:�۸�price�� 9:ʹ������ 10:ʹ�õȼ� 11:���߱���(29��) 12:���߱�����30�У�
---@param itemid int
---@param itemName string
---@param id int
---@nodiscard
function lib996:getstditeminfo(itemid/itemName,id) end

---��ȡ��Ʒ��¼��Ϣ
---* actor �� ��Ҷ���
---* item �� ��Ʒ����
---* type �� [1,2,3]
---* position �� ��type=1,ȡֵ��Χ[0..49]type=2,ȡֵ��Χ[0..19]
---@param actor object
---@param item object
---@param type int
---@param position int
---@nodiscard
function lib996:getitemaddvalue(actor,item,type,position) end

---ˢ����Ʒ��Ϣ��ǰ��
---* actor �� ��Ҷ���
---* item �� ��Ʒ����
---@param actor object
---@param item object
---@nodiscard
function lib996:refreshitem(actor,item) end

---ͨ����ƷΨһid������Ʒ
---* actor �� ��Ҷ���
---* ids �� ��ƷΨһID(makeindex)����(,)����
---* count �� ������Ʒ�۳�����������˲�����Ĭ��ȫ���۳������ɵ�����Ʒȫ���۳�
---@param actor object
---@param ids int
---@param count int
---@nodiscard
function lib996:delitembymakeindex(actor,ids,count) end

---ʹ����Ʒ����ҩ��ʹ��������Ʒ�ȣ�
---* actor �� ��Ҷ���
---* itemname �� ��Ʒ����
---* count �� ����
---@param actor object
---@param itemname string
---@param count int
---@nodiscard
function lib996:eatitem(actor,itemname,count) end

---�����������Զ�������
---* actor �� ��Ҷ���
---* makeid �� ����makeindex(Ψһid)
---* type �� ������
---* attid �� ����id
---* attvar �� ����ֵ
---@param actor object
---@param makeid int
---@param type int
---@param attid int
---@param attvar int
---@nodiscard
function lib996:additemattr(actor,makeid,type,attid,attvar) end

---ɾ�������Զ�������
---* actor �� ��Ҷ���
---* makeid �� ����makeindex(Ψһid)
---* type �� ������
---* attid �� ����id(Ϊ0ʱ���������������)
---@param actor object
---@param makeid int
---@param type int
---@param attid int
---@nodiscard
function lib996:delitemattr(actor,makeid,type,attid) end

---��ȡ�����Զ���������
---* actor �� ��Ҷ���
---* makeid �� ����makeindex(Ψһid)
---@param actor object
---@param makeid int
---@nodiscard
function lib996:getitemattrtag(actor, makeid) end

---���ݵ����Զ����������ȡ��������
---* actor �� ��Ҷ���
---* makeid �� ����makeindex(Ψһid)
---* nTag �� ������
---@param actor object
---@param makeid int
---@param nTag int
---@nodiscard
function lib996:getitemattr(actor, makeid, nTag) end

---������Ʒ��Ч
---* actor �� ��Ҷ���
---* where �� װ��λ��
---* bagid �� ������Ч���
---* ineid �� �ڹ���Ч���
---@param actor object
---@param where int
---@param bagid int
---@param ineid int
---@nodiscard
function lib996:setitemeffect(actor, where, bagid,ineid) end

---��ȡ��Ʒ��ǰ�;ö�
---* actor �� ��Ҷ���
---* makeindex �� ��ƷΨһid
---@param actor object
---@param makeindex int
---@nodiscard
function lib996:getdura(actor,makeindex) end

---�޸���Ʒ��ǰ�;ö�
---* actor �� ��Ҷ���
---* makeindex �� ��ƷΨһid
---* ope �� ����� ��+�� ��-�� ��=��
---* value �� �޸ĵ��;�ֵ
---@param actor object
---@param makeindex int
---@param ope str
---@param value int
---@nodiscard
function lib996:setdura(actor,makeindex,ope,value) end

---ˢ����Ʒ������ǰ��
---* actor �� ��Ҷ���
---* makeid �� ��Ʒmakeindex����ƷΨһid��
---@param actor object
---@param makeid int
---@nodiscard
function lib996:senditemvartoc(actor,makeid) end

---���ݹ�������ɱ������
---* mapid �� ��ͼid
---* monname �� ����ȫ����nilʱ ɱ��ȫ��
---* count �� ������0����
---* drop �� �Ƿ������Ʒ��true����
---@param mapid object
---@param monname string
---@param count int
---@param drop bool
---@nodiscard
function lib996:killmonsters(mapid,monname,count,drop) end

---���ݹ������ɱ������
---* actor �� ��ɱ�߶���
---* mon �� �������
---* drop �� �Ƿ������Ʒ��true����
---* trigger �� �Ƿ񴥷�killmon
---* showdie �� �Ƿ���ʾ��������
---@param actor object
---@param mon object
---@param drop bool
---@param trigger bool
---@param showdie bool
---@nodiscard
function lib996:killmonbyobj(actor,mon,drop,trigger,showdie) end

---ɱ����Ʒ�ٱ�
---* actor �� ��Ҷ���
---* count �� ������Ʒ�������Ӵ���
---@param actor object
---@param count int
---@nodiscard
function lib996:monitems(actor,count) end

---�ѹ������óɱ���
---* mon �� �������
---* player �� ��Ҷ���
---@param mon object
---@param player object
---@nodiscard
function lib996:setmonmaster(mon,player) end

---���������б�
---* actor �� ��Ҷ���
---* nIndex �� ����(0��ʼ)
---@param actor object
---@param nIndex int
---@nodiscard
function lib996:getslavebyindex(actor,nIndex) end

---�޸ı�������
---* mob �� ��������
---* name �� ����������
---@param mob object
---@param name object
---@nodiscard
function lib996:changemonname(mob,name) end

---�޸ı����ȼ�
---* play �� ��Ҷ���
---* mon �� ��������
---* operate �� ��������(+,-,=)
---* nLevel �� �ȼ�
---@param play object
---@param mon object
---@param operate string
---@param nLevel int
---@nodiscard
function lib996:changeslavelevel(play,mon,operate,nLevel) end

---����makeId���ع������
---* mapid �� ��ͼid
---* monUserId �� ����makeId(Ψһid)
---@param mapid object
---@param monUserId string
---@nodiscard
function lib996:getmonbyuserid(mapid,monUserId) end

---���ݹ���id���ع��������Ϣ
---* idx �� �����IDX
---* id ��id
---@param idx object
---@param id string
---@nodiscard
function lib996:getmonbaseinfo(idx,id) end

---��ⷶΧ�ڹ�������
---* mapid �� ��ͼid
---* monName �� �������ƣ�nil ������й�
---* nx �� ����X
---* ny �� ����Y
---* nRange �� ��Χ
---@param mapid object
---@param monName string
---@param nx int
---@param ny int
---@param nRange int
---@nodiscard
function lib996:checkrangemoncount(mapid,monName,nx,ny,nRange) end

---�ٻ�ʰȡС����
---* player �� ��Ҷ���
---* monname ����������
---@param player object
---@param monname string
---@nodiscard
function lib996:createsprite(player,monname) end

---���ʰȡС����
---* player �� ��Ҷ���
---* monname ��������,Ϊnil ����ȫ��
---@param player object
---@param monname string
---@nodiscard
function lib996:checkspritelevel(player,monname) end

---ʰȡģʽ
---* player �� ��Ҷ���
---* mode �� ģʽ��0=������Ϊ���ļ�ȡ��1=��С����Ϊ���ļ�ȡ��
---* Range �� ��Χ
---* interval �� �������С500ms
---@param player object
---@param mode int
---@param Range int
---@param interval int
---@nodiscard
function lib996:pickupitems(player,mode,Range,interval) end

---�ر�ʰȡģʽ
---* player �� ��Ҷ���
---@param player object
---@nodiscard
function lib996:stoppickupitems(player) end

---��ָ��λ�����ȴ�ָ�����
---* player �� ��Ҷ���
---* map �� ��ͼ
---* X �� X����
---* Y �� Y����
---* MonName �� ���ȹ����Ĺ�������MonName֧�ֶ���������ƣ����������� # ƴ��
---@param player object
---@param map string
---@param X string
---@param Y string
---@param MonName string
---@nodiscard
function lib996:killmobappoint(player,map,X,Y,MonName) end

---��ʱ���ӹ��ﱬ����Ʒ
---* obj �� ����������
---* mon �� �������
---* itemname �� ��Ʒ����
---@param obj object
---@param mon object
---@param itemname string
---@nodiscard
function lib996:additemtodroplist(obj,mon,itemname) end

---��ָ����ͼxy����ˢ�¹���
---* mapid �� ��ͼid
---* x �� x����
---* y �� y����
---* monname �� ��������
---* range �� ��Χ
---* count �� ����
---* color �� ��ɫ
---@param mapid object
---@param x int
---@param y int
---@param monname str
---@param range int
---@param count int
---@param color int
---@nodiscard
function lib996:genmon(mapid,x,y,monname,range,count,color) end

---��ȡ�������˶���
---* mon �� �������
---@param mon object
---@nodiscard
function lib996:getmonplayer(mon) end

---��ȡ����id
---* mon �� �������
---@param mon object
---@nodiscard
function lib996:getmonidx(mon) end

---���ñ����ѱ�
---* mon �� �������
---@param mon object
---@nodiscard
function lib996:betray(mon) end

---�����������
---* mon �� �������
---@param mon object
---@nodiscard
function lib996:montype(mon) end

---�����л�
---* player �� ��Ҷ���
---* name ���л���
---@param player object
---@param name string
---@nodiscard
function lib996:buildguild(player,name) end

---�����л�
---* player �� ��Ҷ���
---* name ���л���
---@param player object
---@param name string
---@nodiscard
function lib996:guildaddmember(player,name) end

---�˳��л�
---* player �� ��Ҷ���
---* name ���л���
---@param player object
---@param name string
---@nodiscard
function lib996:guilddelmember(player,name) end

---��ɢ�л�
---* player �� ��Ҷ���
---@param player object
---@nodiscard
function lib996:GuildCloseBefore(player) end

---��ȡ���������л��Ա����
---* player �� ��Ҷ���
---@param player object
---@nodiscard
function lib996:getguildmembercount(player) end

---���л���ӵ������б�
---* name �� �л���
---* day �� ����
---@param name string
---@param day int
---@nodiscard
function lib996:addtocastlewarlistex(name,day) end

---�����л��ڵ���ͬʱ����
---@nodiscard
function lib996:addattacksabakall() end

---��ȡ������ڵ��л����
---* player �� ��Ҷ���
---@param player object
---@nodiscard
function lib996:getmyguild(player) end

---�����л�
---* index �� 0:�л�ID 1:�л�����
---* key �� �����ؼ���
---@param index int
---@param key string
---@nodiscard
function lib996:findguild(index,key) end

---��ȡ�л���Ϣ
---* guild �� ��Ҷ���
---* index �� ����
---@param guild int
---@param index int
---@nodiscard
function lib996:getguildinfo(guild,index) end

---�����л���Ϣ
---* guild �� �л����
---* index �� ����
---* value ��Ҫ���õ�����
---@param guild object
---@param index int
---@param value string
---@nodiscard
function lib996:setguildinfo(guild,index,value) end

---���������л����
---@nodiscard
function lib996:getallguild() end

---ָ���������ָ���л�
---* actor �� ָ������Ҷ���
---* guiname �� Ҫ������л�����
---@param actor object
---@param guiname int
---@nodiscard
function lib996:addguildmember(actor,guiname) end

---�߳�ָ�����л��Ա
---* actor �� Ҫ�߳���Ҷ���
---* guiname �� �л�����
---@param actor object
---@param guiname int
---@nodiscard
function lib996:delguildmember(actor,guiname) end

---��������
---* player �� ��Ҷ���
---@param player object
---@nodiscard
function lib996:creategroup(player) end

---��Ӷ�Ա
---* player �� ��Ҷ���
---* memberId �� ��ԱUserId��Ψһid��
---@param player object
---@param memberId string
---@nodiscard
function lib996:addgroupmember(player,memberId) end

---ɾ����Ա
---* player �� ��Ҷ���
---* memberId �� ��ԱUserId��Ψһid��
---@param player object
---@param memberId string
---@nodiscard
function lib996:delgroupmember(player,memberId) end

---��ȡ��Ա�б�
---* player �� ��Ҷ���
---@param player object
---@nodiscard
function lib996:getgroupmember(player) end

---��Ӿ����ͼ
---* oldMap �� ԭ��ͼID
---* NewMap �� �µ�ͼID����id����Ϊ��ʱ����ʹ�ã�
---* NewName ���µ�ͼ��
---* time �� ��Чʱ��(��)
---* BackMap �� �سǵ�ͼ(��Чʱ������󣬴���ȥ�ĵ�ͼ)
---@param oldMap string
---@param NewMap string
---@param NewName string
---@param time int
---@param BackMap string
---@nodiscard
function lib996:addmirrormap(oldMap,NewMap,NewName,time,BackMap) end

---ɾ�������ͼ
---* MapId �� ��ͼID
---@param MapId object
---@nodiscard
function lib996:delmirrormap(MapId) end

---��⾵���ͼ�Ƿ����
---* MapId �� ��ͼID
---@param MapId object
---@nodiscard
function lib996:checkmirrormap(MapId) end

---��ӵ�ͼ��Ч
---* Id �� ��Ч����ID���������ֶ����ͼ��Ч
---* MapId �� ��ͼID
---* X �� ����X
---* Y �� ����Y
---* effId �� ��ЧID
---* time �� ����ʱ�䣨�룩
---* mode �� 0:���˿ɼ� 1:�Լ��ɼ� 2:��ӿɼ� 3:�л��Ա�ɼ� 4:�жԿɼ�
---@param Id int
---@param MapId object
---@param X int
---@param Y int
---@param effId int
---@param time int
---@param mode int
---@nodiscard
function lib996:mapeffect(Id,MapId,X,Y,effId,time,mode) end

---ɾ����ͼ��Ч
---* Id �� ��Ч����ID
---@param Id int
---@nodiscard
function lib996:delmapeffect(Id) end

---�ڵ�ͼ�Ϸ�����Ʒ
---* actor �� ��Ҷ���
---* MapId �� ��ͼID
---* X �� ����X
---* Y �� ����Y
---* range �� ��Χ
---* name �� ��Ʒ��
---* count �� ����
---* time �� ʱ�䣨�룩
---* hint �� �Ƿ������ʾ
---* take �� �Ƿ�����ʰȡ
---* self �� ���Լ�ʰȡ
---* order �� ��-��λ��˳�򣬷�-���λ��
---@param actor object
---@param MapId object
---@param X int
---@param Y int
---@param range int
---@param name string
---@param count int
---@param time int
---@param hint bool
---@param take bool
---@param self bool
---@param order bool
---@nodiscard
function lib996:throwitem(actor,MapId,X,Y,range,name,count,time,hint,take,self,order) end

---�����ͼ��ָ�����ֵ���Ʒ
---* MapId �� ��ͼID
---* X �� ����X
---* Y �� ����Y
---* range �� ��Χ
---* itemName �� ��Ʒ��
---@param MapId object
---@param X int
---@param Y int
---@param range int
---@param itemName string
---@nodiscard
function lib996:clearitemmap(MapId,X,Y,range,itemName) end

---�趨��ͼ��ʱ��
---* MapId �� ��ͼID
---* Idx �� ��ʱ��ID
---* second �� ʱ�����룩
---* func �� ������ת�ĺ���
---@param MapId object
---@param Idx int
---@param second int
---@param func string
---@nodiscard
function lib996:setenvirontimer(MapId,Idx,second,func) end

---�رյ�ͼ��ʱ��
---* MapId �� ��ͼID
---* Idx �� ��ʱ��ID
---@param MapId object
---@param Idx string
---@nodiscard
function lib996:setenvirofftimer(MapId,Idx) end

---��ȡ��ͼ��ָ����Χ�ڵĶ���
---* MapId �� ��ͼID
---* X �� ����X
---* Y �� ����Y
---* range �� ��Χ
---* flag �� 1:��� 2:���� 4:NPC 8:��Ʒ
---@param MapId object
---@param X int
---@param Y int
---@param range int
---@param flag int
---@nodiscard
function lib996:getobjectinmap(MapId,x,y,range,flag) end

---��ȡ����λ�ü�����ʱ��
---* MapId �� ��ͼID
---@param MapId object
---@nodiscard
function lib996:getmonrefresh(MapId) end

---���õ�ͼ��ת��
---* name �� ��Ҷ���
---* amapid �� ��ͼID
---* jx �� ����X
---* jy �� ����Y
---* range �� ��Χ
---* bmapid �� ��Ʒ��
---* cx �� ����
---* cy �� ʱ�䣨�룩
---* time �� �Ƿ������ʾ
---@param name string
---@param amapid object
---@param jx int
---@param jy int
---@param range int
---@param bmapid object
---@param cx int
---@param cy int
---@param time int
---@nodiscard
function lib996:addmapgate(name,amapid,jx,jy,range,bmapid,cx,cy,time) end

---��ȡ��ͼ��ת��
---* name �� ��ת������
---* amapid �� ��ڵ�ͼID
---@param name string
---@param amapid object
---@nodiscard
function lib996:getmapgate(name,amapid) end

---ɾ����ͼ��ת��
---* name �� ��ת������
---* amapid �� ��ڵ�ͼID
---@param name string
---@param amapid object
---@nodiscard
function lib996:delmapgate(name,amapid) end

---���þ����ͼʣ��ʱ��
---* MapId �� �����ͼID
---* time �� ʣ��ʱ��
---@param MapId object
---@param time int
---@nodiscard
function lib996:setmaptime(MapId,time) end

---��ȡ�����ͼʣ��ʱ��
---* MapId �� �����ͼID
---@param MapId object
---@nodiscard
function lib996:getmaptime(MapId) end

---�ж��߼����Ƿ�Ϊ��ȫ��
---* mapid �� ��ͼID
---* x �� x����
---* y �� y����
---@param mapid object
---@param x int
---@param y int
---@nodiscard
function lib996:isinsafe(mapid, x, y) end

---�ж��߼����Ƿ�Ϊ������
---* mapid �� ��ͼID
---* x �� x����
---* y �� y����
---@param mapid object
---@param x int
---@param y int
---@nodiscard
function lib996:isincastle(mapid, x, y) end

---���ݵ�ͼid���ص�ͼ��
---* mapid �� ��ͼID
---@param mapid object
---@nodiscard
function lib996:getmapname(mapid) end

---��ȡ����int�ͱ���
---* Type �� ����0:��ң�1:�лᣬ2:��ͼ��3����Ʒ��4��NPC��5:����
---* actor �� ���� ���⣺����Ϊ��Ʒʱ�˴���makeindex
---* sVarName �� ������
---@param Type int
---@param actor obj
---@param sVarName string
---@nodiscard
function lib996:getint(Type,actor,sVarName) end

---���ö���int�ͱ���
---* Type �� ����0:��ң�1:�лᣬ2:��ͼ��3����Ʒ��4��NPC��5:����
---* actor �� ���� ���⣺����Ϊ��Ʒʱ�˴���makeindex
---* sVarName �� ������
---* nValue �� ����ֵ
---@param Type int
---@param actor obj
---@param sVarName string
---@param nValue int
---@nodiscard
function lib996:setint(Type,actor,sVarName,nValue) end

---��ȡ����str�ͱ���
---* Type �� ����0:��ң�1:�лᣬ2:��ͼ��3����Ʒ��4��NPC��5:����
---* actor �� ���� ���⣺����Ϊ��Ʒʱ�˴���makeindex
---* sVarName �� ������
---@param Type int
---@param actor obj
---@param sVarName string
---@nodiscard
function lib996:getstr(Type,actor,sVarName) end

---���ö���str�ͱ���
---* Type �� ����0:��ң�1:�лᣬ2:��ͼ��3����Ʒ��4��NPC��5:����
---* actor �� ���� ���⣺����Ϊ��Ʒʱ�˴���makeindex
---* sVarName �� ������
---* nValue �� ����ֵ
---@param Type int
---@param actor obj
---@param sVarName string
---@param nValue int
---@nodiscard
function lib996:setstr(Type,actor,sVarName,nValue) end

---��ȡϵͳint�ͱ���
---* sVarName �� ������
---@param sVarName string
---@nodiscard
function lib996:getsysint(sVarName) end

---����ϵͳint�ͱ���
---* sVarName �� ������
---* nValue �� ����ֵ
---@param sVarName string
---@param nValue int
---@nodiscard
function lib996:setsysint(sVarName,nValue) end

---��ȡϵͳstr�ͱ���
---* sVarName �� ������
---@param sVarName string
---@nodiscard
function lib996:getsysstr(sVarName) end

---����ϵͳstr�ͱ���
---* sVarName �� ������
---* nValue �� ����ֵ
---@param sVarName string
---@param nValue str
---@nodiscard
function lib996:setsysstr(sVarName,nValue) end

---�Զ����������
---* varname �� ���������
---* itype �� 0-������� 1-������� 2-�л�
---* sort �� 0-����1-����
---* count �� ��ȡ�������� Ϊ�ջ�0ȡ���У�ȡǰ����
---@param varname str
---@param itype int
---@param sort int
---@param count int
---@nodiscard
function lib996:sorthumvar(varname,itype,sort,count) end

---��������Զ������
---* actor �� Ҫ�������������� nil ��ʾ�����������
---* varname �� ������ *��ʾ���б���
---@param actor object
---@param varname string
---@nodiscard
function lib996:clearhumcustvar(actor,varname) end

---����ϵͳ�Զ������
---* varname �� ������ *��ʾ���б���
---@param varname string
---@nodiscard
function lib996:clearhumcustvar(varname) end

---�����Զ����л����
---* actor �� �л����� nil ��ʾ�����л�
---* varname �� ������ *��ʾ���б���
---@param actor object
---@param varname string
---@nodiscard
function lib996:clearguildcustvar(actor,varname) end

---���buff
---* actor �� ����
---* buffid �� buffid
---* time �� ����ʱ��Ϊ����Ϊbuff����ʱ��
---* lap �� ���Ӳ�����Ĭ��1
---* player �� ʩ����
---* abil �� �޸�buff��att����{[1]=200, [4]=20}������id=ֵ
---@param actor object
---@param buffid int
---@param time int
---@param lap int
---@param player object
---@param abil table
---@nodiscard
function lib996:addbuff(actor,buffid,time,lap,player,abil) end

---ɾ��buff
---* actor �� ����
---* buffid �� buffid
---@param actor object
---@param buffid int
---@nodiscard
function lib996:delbuff(actor,buffid) end

---�Ƿ���buff
---* actor �� ����
---* buffid �� buffid
---@param actor object
---@param buffid int
---@nodiscard
function lib996:hasbuff(actor,buffid) end

---��ȡbuff��Ϣ
---* actor �� ����
---* buffid �� buffid
---* itype �� 1:���Ӳ��� 2:ʣ��ʱ��
---@param actor object
---@param buffid int
---@param itype int
---@nodiscard
function lib996:getbuffinfo(actor,buffid,itype) end

---��ȡ����buff
---* actor �� ����
---@param actor object
---@nodiscard
function lib996:getallbuffid(actor) end

---��ȡ������Ϣ
---* actor �� ����
---* skillid �� ����ID
---* id �� ����ID��1:�ȼ���2:ǿ���ȼ���3:������
---@param actor object
---@param skillid int
---@param id int
---@nodiscard
function lib996:getskillinfo(actor,skillid,id) end

---��Ӽ���
---* actor �� ��Ҷ���
---* skillid �� ����ID
---* level �� �ȼ�
---@param actor object
---@param skillid int
---@param level int
---@nodiscard
function lib996:addskill(actor,skillid,level) end

---ɾ������
---* actor �� ��Ҷ���
---* cskillid �� ����ID
---@param actor object
---@param skillid string
---@nodiscard
function lib996:delskill(actor,skillidr) end

---������м���
---* actor �� ��Ҷ���
---@param actor object
---@nodiscard
function lib996:clearskill(actor) end

---ɾ���Ǳ�ְҵ����
---* actor �� ��Ҷ���
---@param actor object
---@nodiscard
function lib996:delnojobskill(actor) end

---���ü��ܵȼ�
---* actor �� ��Ҷ���
---* skillid �� ����ID
---* flag �� ���ͣ�1-���ܵȼ�2-ǿ���ȼ�3-������
---* point �� �ȼ������
---@param actor object
---@param skillid int
---@param flag int
---@param point int
---@nodiscard
function lib996:setskillinfo(actor,skillid,flag,point) end

---�ýű������ͷż���
---* actor �� ��Ҷ���
---* skillid �� ����ID
---* type �� ���ͣ�1-��ͨ����2-ǿ������
---* level �� ���ܵȼ�
---* target �� ���ܶ���1-����Ŀ�꣬2-����3-Ŀ�����(��������)��4-��ǰ��ͼ����(��������)
---* flag �� �Ƿ���ʾʩ��������0-����ʾ��1-��ʾ
---@param actor object
---@param skillid int
---@param type int
---@param level int
---@param target int
---@param flag int
---@nodiscard
function lib996:releasemagic(actor,skillid,type,level,target,flag) end

---��ȡ���ɳ�Ϳ����
---*  actor �� ��Ҷ���
---@param actor object
---@nodiscard
function lib996:castleidentity(actor) end

---��ȡɳ�Ϳ˻�����Ϣ
---*  id �� ����id
---@param id int
---@nodiscard
function lib996:castleinfo(id) end

---������ʱNPC
---*  npc �� npc����
---*  x �� x����
---*  y �� y����
---*  npc �� json
---@param npc object
---@param x int
---@param y int
---@param npc str
---@nodiscard
function lib996:createnpc(npc,x,y,npc) end

---ɾ����ʱNPC
---*  npcid �� npc����
---*  mapid �� ��ͼid
---@param npc object
---@param mapid object
---@nodiscard
function lib996:delnpc(npc,mapid) end

---����ID��ȡNPC����
---*  npcid �� npcid
---@param npcid int
---@nodiscard
function lib996:getnpcbyindex(npcid) end

---��ת��ָ��NPC����
---*  actor �� ��Ҷ���
---*  npcid �� npcid
---*  rangea �� ��Χ�����ڴ˷�Χ�����ƶ���npc����
---*  rangeb �� ��Χ���ƶ���NPC�����ķ�Χ��
---@param actor object
---@param npcid int
---@param rangea int
---@param rangeb int
---@nodiscard
function lib996:opennpcshowex(actor,npcid,rangea,rangeb) end

---����NPC��Ч
---*  actor �� ��Ҷ���
---*  npcid �� npcid
---*  Effect �� ��ЧID
---*  x �� x����
---*  y �� y����
---@param actor object
---@param npcid int
---@param Effect int
---@param x int
---@param y int
---@nodiscard
function lib996:setnpceffect(actor,npcid,Effect,x,y) end

---ɾ��NPC��Ч
---*  actor �� ��Ҷ���
---*  npcid �� npcid
---@param actor object
---@param npcid int
---@nodiscard
function lib996:delnpceffect(actor,npcid) end

---��ȡNPC�����Id
---*  npc �� ��Ҷ���
---@param npc object
---@nodiscard
function lib996:getnpcindex(npc) end

---��Ӷ���ʱ��
---*  actor �� ��Ҷ���
---*  id �� ��ʱ��id
---*  tick �� ִ�м������
---*  count �� ִ�д�����Ϊ0ʱ���޴���
---@param actor object
---@param id int
---@param tick int
---@param count int
---@nodiscard
function lib996:setontimer(actor,id,tick,count) end

---�Ƴ�����ʱ��
---*  actor �� ��Ҷ���
---*  id �� ��ʱ��id
---@param actor object
---@param id int
---@nodiscard
function lib996:setofftimer(actor,id) end

---���ϵͳ��ʱ��
---*  id �� ��ʱ��id
---*  tick �� ִ�м������
---*  count �� ִ�д�����Ϊ 0ʱ���޴���
---@param id int
---@param tick int
---@param count int
---@nodiscard
function lib996:setontimerex(id,tick,count) end

---�Ƴ�ϵͳ��ʱ��
---*  id �� ��ʱ��id
---@param id int
---@nodiscard
function lib996:setofftimerex(id) end

---�ж϶����Ƿ��ж�ʱ��
---*  actor �� ��Ҷ���
---*  id �� ��ʱ��id
---@param actor object
---@param id int
---@nodiscard
function lib996:hastimer(actor,id) end

---�ж�ϵͳ�Ƿ��ж�ʱ��
---*  id �� ��ʱ��id
---@param id int
---@nodiscard
function lib996:hastimerex(id) end

---�Ƿ���Ӣ��
---*  actor �� ��Ҷ���
---@param actor object
---@nodiscard
function lib996:hashero(actor) end

---ɾ��Ӣ��
---*  actor �� ��Ҷ���
---@param actor object
---@nodiscard
function lib996:delhero(actor) end

---�ٻ�Ӣ��
---*  actor �� ��Ҷ���
---@param actor object
---@nodiscard
function lib996:recallhero(actor) end

---�ջ�Ӣ��
---*  actor �� ��Ҷ���
---@param actor object
---@nodiscard
function lib996:unrecallhero(actor) end

---��ȡӢ�۶���
---*  actor �� ��Ҷ���
---@param actor object
---@nodiscard
function lib996:gethero(actor) end

---�ж�Ӣ���Ƿ�Ϊ����״̬
---*  actor �� ��Ҷ���
---@param actor object
---@nodiscard
function lib996:isherorecall(actor) end

---�ж�Ӣ���Ƿ�Ϊ����״̬
---*  actor �� ��Ҷ���
---@param actor object
---@nodiscard
function lib996:isherorecall(actor) end

---���촥��
---*  self �� ��Ҷ���
---*  msg �� ����
---*  chat �� 1;ϵͳ;2;����3;˽��4;�л�5;���6;����7;����
---@param self object
---@param msg int
---@param chat str
---@nodiscard
function triggerchat(self,msg,chat) end

---��װ��ʱ
---* actor �� ����
---* itemid �� ��Ʒid
---* pos �� λ��
---* itemname �� ��Ʒ����
---* itemmakeid �� makeid��ΨһID��
---@param actor object
---@param itemid int
---@param pos int
---@param itemname str
---@param itemmakeid int
---@nodiscard
function on_take_off(actor,itemid,pos,itemname,itemmakeid) end

---��װ��ʱ
---* actor �� ����
---* itemid �� ��Ʒid
---* pos �� ��Ʒ����
---* itemname �� λ��
---* itemmakeid �� makeid��ΨһID��
---@param actor object
---@param itemid int
---@param pos int
---@param itemname str
---@param itemmakeid int
---@nodiscard
function on_take_on(actor,itemid,pos,itemname,itemmakeid) end

---��Ʒ���뱳��ʱ
---*  actor �� ��Ҷ���
---*  itemobj �� ��Ʒ����
---@param actor object
---@param itemobj object
---@nodiscard
function addbag(actor,itemobj) end

---��Ʒ���뱳��ʱ
---*  actor �� ��Ҷ���
---*  itemobj �� ��Ʒ����
---@param actor object
---@param itemobj object
---@nodiscard
function addbag(actor,itemobj) end

---��ֵ����
---*  actor �� ��Ҷ���
---*  gold �� ��ֵrmb���
---*  productid �� ��ƷID(ǰ�˵����ֵʱ�򴫵ݵĲ���)
---*  moneyid �� ��ֵ��û���ID
---@param actor object
---@param gold int
---@param productid int
---@param moneyid int
---@nodiscard
function recharge(actor,gold,productid,moneyid) end

---NPC�������
---*  actor �� ��Ҷ���
---*  npcid �� ��ֵrmb���
---@param actor object
---@param npcid int
---@nodiscard
function clicknpc(actor,npcid) end

---�����ת��ͼ����
---*  actor �� ��Ҷ���
---@param actor object
---@nodiscard
function entermap(actor) end

---��ȡ����
---*  actor �� ��Ҷ���
---*  itemobj �� ��Ʒ����
---@param actor object
---@param itemobj object
---@nodiscard
function pickupitemex(actor,itemobj) end

---���ܴ���
---*  actor �� ��Ҷ���
---@param actor object
---@nodiscard
function run(actor) end

---��·����
---*  actor �� ��Ҷ���
---@param actor object
---@nodiscard
function walk(actor) end

---��������
---*  actor �� ��Ҷ���
---@param actor object
---@nodiscard
function playlevelup(actor) end

---�˳�����
---*  actor �� ��Ҷ���
---@param actor object
---@nodiscard
function playoffline(actor) end

---���Ա仯ʱ����
---*  actor �� ��Ҷ���
---@param actor object
---@nodiscard
function sendability(actor) end

---���ǿ�ʼʱ����
---@nodiscard
function castlewarstart() end

---���ǽ���ʱ����
---@nodiscard
function castlewarend() end

---ռ��ɳ�Ϳ˴���
---@nodiscard
function getcastle0() end

---��������ʱ
---@nodiscard
function startup() end

---��¼ʱ����
---*  actor �� ��Ҷ���
---@param actor object
---@nodiscard
function login(actor) end

---�л��ʼ��
---*  actor �� ��Ҷ���
---@param actor object
---@nodiscard
function loadguild(actor) end

---ÿ���һ�ε�¼
---*  actor �� ��Ҷ���
---@param actor object
---@nodiscard
function setday(actor) end

---�������֮ǰ
---*  actor �� ��Ҷ���
---@param actor object
---@nodiscard
function nextdie(actor) end

---�������ʱ
---*  actor �� ��Ҷ���
---@param actor object
---@nodiscard
function playdie(actor) end

---���︴��ʱ
---*  actor �� ��Ҷ���
---@param actor object
---@nodiscard
function revival(actor) end

---����С�˴���
---*  actor �� ��Ҷ���
---@param actor object
---@nodiscard
function playreconnection(actor) end

---��Ҹ�����
---*  actor �� ��Ҷ���
---*  oname �� ������
---*  actor �� ������
---@param actor object
---@param oname str
---@param nname str
---@nodiscard
function changehumnameok(actor,oname,nname) end

---����ˢ��ʱ
---*  mon �� �������
---@param mon object
---@nodiscard
function makemonnotice(mon) end

---�뿪��ͼʱ
---*  actor �� ��Ҷ���
---@param actor object
---@nodiscard
function leavemap(actor) end

---���buffʱ
---*  actor �� ����
---*  buffid �� buffid
---*  time �� buffʣ��ʱ��
---@param actor object
---@param buffid int
---@param time int
---@nodiscard
function addbuffafter(actor,buffid,time) end

---ɾ��buffʱ
---*  actor �� ����
---*  buffid �� buffid
---*  time �� buffʣ��ʱ��
---@param actor object
---@param buffid int
---@param time int
---@nodiscard
function delbuffafter(actor,buffid,time) end

---��װ��ǰ
---* actor �� ����
---* itemid �� ��Ʒid
---* pos �� λ��
---* itemname �� ��Ʒ����
---* itemmakeid �� makeid��ΨһID��
---@param actor object
---@param itemid int
---@param pos int
---@param itemname str
---@param itemmakeid int
---@return bool |true����������|false������
---@nodiscard
function on_take_on_pre(actor,itemid,pos,itemname,itemmakeid) end

---�Զ�Ѱ·��ʼʱ����
---*  actor �� ��Ҷ���
---@param actor object
---@nodiscard
function findpathbegin(actor) end

---��ȡ����ʱ����
---*  actor �� ��Ҷ���
---@param actor object
---@nodiscard
function gainexp(actor) end

---���Ҹı�ʱ����
---*  actor �� ��Ҷ���
---*  id �� ����id
---@param actor object
---@param id int
---@nodiscard
function moneychangeex(actor,id) end

---���������Ʒǰ����
---*  actor �� ��Ҷ���
---*  item �� item����
---@param actor object
---@param item object
---@nodiscard
function mondropitemex(actor,item) end

---����ǰ����
---*  attack �� �����߶���
---*  role �� �ܺ��߶���
---*  ack �� �����߱��δ���Ĺ�����
---*  def �� �ܺ��߱����ܻ��ķ�����
---*  skillid �� ����id
---*  hurttype �� �˺����� 0�������˺���1��ħ���˺�
---@param attack object
---@param role object
---@param ack int
---@param def int
---@param skillid int
---@param hurttype int
---@nodiscard
function on_hurt_pre(attack,role,ack,def,skillid,hurttype) end

---ע�������index
---*  idx �� �������� QF:999999999,QM:999999996
---*  scriptfile �� �ļ�·��
---@param idx int
---@param scriptfile str
---@nodiscard
function lib996:setsysindex(idx,scriptfile) end

---Ӣ�۸���ʱ
---*  actor �� ��Ҷ���
---@param actor object
---@nodiscard
function herorevival(actor) end

---Ӣ������ʱ
---*  actor �� ��Ҷ���
---@param actor object
---@nodiscard
function herodie(actor) end

---��װ��ǰ
---* actor �� ����
---* itemid �� ��Ʒid
---* pos �� λ��
---* itemname �� ��Ʒ����
---* itemmakeid �� makeid��ΨһID��
---@param actor object
---@param itemid int
---@param pos int
---@param itemname str
---@param itemmakeid int
---@return bool |true������������|false������
---@nodiscard
function on_take_off_pre(actor,itemid,pos,itemname,itemmakeid) end

---Ӣ�۴�װ��ʱ
---*  actor �� ��Ҷ���
---*  itemid �� ��Ʒid
---*  where �� λ��
---*  itemName �� ��Ʒ����
---*  makeindex �� makeid��ΨһID��
---@param actor object
---@param itemid int
---@param where int
---@param itemName string
---@param makeindex int
---@nodiscard
function herotakeonex(actor, itemid, where, itemname, makeindex) end

---��Ʒ����Ӣ�۱���ʱ
---*  actor �� ��Ҷ���
---@param actor object
---@nodiscard
function addherobag(actor) end

---�½�����ʱ����
---*  actor �� ��Ҷ���
---*  id �� �½�������id
---@param actor object
---@param id int
---@nodiscard
function picktask(actor,id) end

---����仯ʱ
---*  actor �� ��Ҷ���
---@param actor object
---@nodiscard
function changetask(actor) end

---���񱻵��ʱ
---*  actor �� ��Ҷ���
---*  id �� ����id
---@param actor object
---@param id int
---@nodiscard
function clicknewtask(actor,id) end

---����ɾ��ʱ
---*  actor �� ��Ҷ���
---@param actor object
---@nodiscard
function deletetask(actor) end

---����Ӣ������
---*  actor �� ��Ҷ���
---*  name �� Ӣ������  
---@param actor object
---@param name str
---@nodiscard
function lib996:checkheroname(actor,name) end

---��ȡ��ұ���ָ����Ʒ������
---*  actor �� ��Ҷ���
---*  itemname �� ��Ʒ����
---*  itype �� ������ 0���󶨣�1�ǰ󶨣�2��/�ǰ�
---@param actor object
---@param itemname str
---@param itype int
---@nodiscard
function lib996:itemcount(actor,itemname,itype) end

---�ж������index�Ƿ����
---*  id �� id
---@param id int
---@nodiscard
function lib996:hassysindex(id) end

---������Ʒid��ȡ��Ʒ����
---*  id �� ��Ʒid
---@param id int
---@nodiscard
function lib996:getnamebyindex(id) end

---������Ʒmakeindex��ȡ��Ʒ����
---*  makeindex �� ��Ʒmakeindex
---@param makeindex int
---@nodiscard
function lib996:getnamebymakeindex(makeindex) end

---���ݼ���id��ȡ��������
---*  id �� ����id
---@param id int
---@nodiscard
function lib996:getskillname(id) end

---���ݼ������ƻ�ȡ����id
---*  name �� ����name
---@param name str
---@nodiscard
function lib996:getskillindex(name) end

---����ɱ����ɫ 
---* aactor �� �ܺ��߶���
---* babtor �� ���ֶ��� ��nilΪϵͳɱ��
---@param aactor object
---@param babtor object
---@return bool |true�����ɹ�|false����ʧ��
---@nodiscard
function lib996:kill(aactor,babtor) end

---��ȡ��ɫ���������ȴʱ��
---* id �� ����id
---@param id int
---@return int |�ɹ�����ʣ��CDʱ��-��λ����|ʧ�ܡ���-1
---@nodiscard
function lib996:getskilldefaultcd(id) end

---�ж������Ƿ���ָ��������
---* isx �� �ж϶���x����
---* isy �� �ж϶���y����
---* rx �� �������ĵ�x����
---* ry �� �������ĵ�y����
---* radius �� ����뾶
---@param isx int
---@param isy int
---@param rx int
---@param ry int
---@param radius int
---@return boolean |true������������|false��������
---@nodiscard
function lib996:isinregion(isx,isy,rx,ry,radius) end

---��ȡ��ͼ�Ϲ��������
---* mapid �� ��ͼid
---* monid �� ����id
---* ignbb �� �Ƿ���Ա��� true:���� false:������
---@param mapid int
---@param monid int
---@param ignbb bool
---@return int |�ɹ�������������|ʧ�ܡ���-1
---@nodiscard
function lib996:getmoncount(mapid,monid,ignbb) end

---��ȡ��ͼ����ҵ�����
---* mapid �� ��ͼid
---* igndied �� �Ƿ����������ɫ true:���� false:������
---@param mapid int
---@param igndied bool
---@return int |�ɹ������������|ʧ�ܡ���-1
---@nodiscardfalse����
function lib996:getplaycount(mapid,igndied) end

---��ȡ�л�id 
---* guiname �� �л���
---@param guiname str
---@return int |�ɹ������л�id|ʧ�ܡ���-1
---@nodiscard
function lib996:getguildid(guiname) end

---��ȡ�л����� 
---* guiid �� �л�id
---@param guiid int
---@return int |�ɹ������л�����|ʧ�ܡ���nil
---@nodiscard
function lib996:getguildname(guiid) end

---�����л��ϵ 
---* aguiid �� A�л�id
---* bguiid �� B�л�id
---* opt �� �л��� 0����ͨ��1���жԣ�2������
---@param aguiid int
---@param bguiid int
---@param opt str
---@return boolean |true�����ɹ�|false����ʧ��
---@nodiscard
function lib996:setguildrelation(aguiid,bguiid,opt) end

---��ȡ�����л�֮��Ĺ�ϵ 
---* aguiid �� A�л�����
---* bguiid �� B�л�����
---@param aguiid int
---@param bguiid int
---@return int |�ɹ������л��ϵ|ʧ�ܡ���-1
---@nodiscard
function lib996:getguildrelation(aguiid,bguiid) end

---�ж��л��Ƿ���� 
---* guiname �� �л���
---@param guiname str
---@return boolean |true��������|false����������
---@nodiscard
function lib996:hasguild(guiname) end

---�ж�ĳ������Ƿ��ڸ��л��� 
---* actor �� ��Ҷ���
---* guiid �� �л�id
---@param actor object
---@param guiid str
---@return boolean |true��������|false����������
---@nodiscard
function lib996:isinguild(actor,guiid) end

---�����л��Ա���л��е�ְλ 
---* actor �� ��Ҷ���
---* pos �� ���л��е�ְλ 0���᳤��1�����᳤��2����ν3��3����ν4��4��ν5
---@param actor object
---@param pos int
---@return boolean |true�������óɹ�|false��������ʧ��
---@nodiscard
function lib996:setplayguildlevel(actor,pos) end

---��ȡ�л��Ա���л��е�ְλ 
---* actor �� ��Ҷ���
---@param actor object
---@return int |�ɹ��������ص�ǰְλ|ʧ�ܡ���-1
---@nodiscard
function lib996:getplayguildlevel(actor) end
 
---��ӳƺ�ʱ����   
---*  actor �� ��Ҷ���
---*  id �� �ƺ�id
---@param actor object
---@param id int
---@nodiscard
function on_add_title(actor,id) end


---ɾ���ƺ�ʱ����    
---*  actor �� ��Ҷ���
---*  id �� �ƺ�id
---@param actor object
---@param id int
---@nodiscard
function on_del_title(actor,id) end

---�����ҳƺ�   
---*  actor �� ��Ҷ���
---*  id �� �ƺ�id
---@param actor object
---@param id int
---@return bool |true�����ɹ�|false����ʧ��
---@nodiscard
function lib996:addtitle(actor,id) end

---ɾ����ҳƺ�   
---*  actor �� ��Ҷ���
---*  id �� �ƺ�id
---@param actor object
---@param id int
---@return bool |true�����ɹ�|false����ʧ��
---@nodiscard
function lib996:deltitle(actor,id) end

---������ҵ�ǰչʾ�ƺ�   
---*  actor �� ��Ҷ���
---*  id �� �ƺ�id
---@param actor object
---@param id int
---@return bool |true�����ɹ�|false����ʧ��
---@nodiscard
function lib996:setcurtitle(actor,id) end

---��ȡ��ҵ�ǰչʾ�ƺ�   
---*  actor �� ��Ҷ���
---@param actor object
---@return int |�ɹ��������سƺ�id|ʧ�ܡ�������-1
---@nodiscard
function lib996:getcurtitle(actor) end

---ж����ҵ�ǰչʾ�ƺ�   
---*  actor �� ��Ҷ���
---*  id �� �ƺ�id
---@param actor object
---@param id int
---@return bool |true�����ɹ�|false����ʧ��
---@nodiscard
function lib996:discurtitle(actor,id) end


---��ȡ������гƺ�   
---*  actor �� ��Ҷ���
---@param actor object
---@return table |�ɹ������ƺ�id��|ʧ�ܡ�������nil
---@nodiscard
function lib996:getalltitle(actor) end

---��ҷż���ʱ����
---* actor �� �ͷ���
---* role �� �ܺ��ߣ�������ʱΪ�գ�
---* skillid �� ����id
---* skillname �� ��������
---@param actor object
---@param role object
---@param skillid int
---@param skillname str
---@nodiscard
function on_spell(actor,role,skillid,skillname) end


---��ҷż���ǰ����
---* actor �� �ͷ���
---* role �� �ܺ��ߣ�������ʱΪ�գ�
---* skillid �� ����id
---* skillname �� ��������
---@param actor object
---@param role object
---@param skillid int
---@param skillname str
---@return bool |true���������ͷ�|false����ֹ�ͷ�
---@nodiscard
function on_spell_pre(actor,role,skillid,skillname) end

---��ȡ��ǰ�����
---@return str ���ص�ǰ�����
---@nodiscard
function getm2version() end

---��ȡ��Ϸid
---@return int ������Ϸid
---@nodiscard
function getgameid() end

---��ȡ������id
---@return int ���ط�����id
---@nodiscard
function getserverid() end

---����HTTPGet
---* url �� ���ӵ�ַ
---* strfun �� �ص�����
---@param url str
---@param strfun func
---@nodiscard
function lib996:httprequestget(url,strfun) end

---����HTTPPost
---* url �� ���ӵ�ַ
---* strfun �� �ص�����
---* suffix �� ������Ϣ
---* head �� ����ͷ
---@param url str
---@param strfun func
---@param suffix str
---@param head json�ַ�����ʽ
---@nodiscard
function lib996:httprequestpost(url,strfun,suffix,head) end

---�ж϶����ܷ��ܲ�
---* actor �� ����
---@param actor object
---@nodiscard
function lib996:isrun(actor) end

---�ж϶����ܷ���·
---* actor �� ����
---@param actor object
---@nodiscard
function lib996:iswalk(actor) end

---�ж��߼����Ƿ�Ϊ��
---* mapid �� ��ͼID
---* x �� x����
---* y �� y����
---@param mapid object
---@param x int
---@param y int
---@nodiscard
---@return ���ͣ�bool true��Ϊ�� false����Ϊ��
function lib996:isempty(mapid, x, y) end

---���ý�ɫ���������ȴʱ��
---* actor �� ��Ҷ���
---* id �� ����id
---* time �� cdʱ�䣨���룩
---@param actor object
---@param id int
---@param time int
---@nodiscard
function lib996:setskillmaxcd(actor,id,time) end

---��ȡ��ɫ����ʣ����ȴʱ��
---* actor �� ��Ҷ���
---* id �� ����id
---@param actor object
---@param id int
---@nodiscard
---@return ���ͣ�int �ɹ���ʣ��CDʱ��-��λ���룬ʧ�ܣ�-1
function lib996:getskillcd(actor,id) end

---���ý�ɫ����ʣ����ȴʱ��
---* actor �� ��Ҷ���
---* id �� ����id
---* time �� cdʱ�䣨���룩0������ˢ��
---@param actor object
---@param id int
---@param time int
---@nodiscard
function lib996:setskillcd(actor,id,time) end

---��̯�۳���Ʒʱ����
---* actor �� ̯��
---* buyer �� ����
---* makeinde ���۳���ƷΨһid
---* ItemId �� �۳���Ʒid
---* moneyid �� ����id
---* moneynum �� ��������
---@param actor object
---@param buyer object
---@param makeinde int
---@param ItemId int
---@param moneyid int
---@param moneynum int
---@nodiscard
function on_stall_item(actor,buyer,makeinde,ItemId,moneyid,moneynum) end

---����ɳ�Ϳ˵�ӵ�����л�
---* guiid �� �л�id
---@param guiid str
---@nodiscard
function lib996:setcastleownguild(guiid) end

---��ȡɳ�Ϳ˵�ӵ�����л�
---@nodiscard
---@return str |�ɹ���������ӵ�����л�����|ʧ�ܡ���nil
function lib996:getcastleownguild() end

---�жϹ���ս�Ƿ���
---@nodiscard
---@return bool |true������ʼ|false����δ��ʼ
function lib996:iscastlewar() end

---��ȡ����ʱ��
---@nodiscard
---@return str |�ɹ�����������ʱռ����л�����|ʧ�ܡ���nil
function lib996:castlestart() end

---buff����Ѫ���ı�ʱ
---* actor �� ����
---* buffID �� buffid
---* buffGroup buff��
---* HP �� hp
---* BUFFhost �� �ͷ���
---@param actor object
---@param buffID int
---@param buffGroup int
---@param HP int
---@param BUFFhost object
---@nodiscard
---@return ���ͣ�int hp
function bufftriggerhpchange(actor,buffID,buffGroup,HP,BUFFhost) end

---����ʱ
---* attacks �� ����
---* roles �� buffid
---* skillid buff��
---@param attacks object
---@param roles int
---@param skillid int
---@nodiscard
function attack(attacks,roles,skillid) end

--��ȡ�ֿ�ʣ��ո���
---* actor �� ����
---@param actor object
---@nodiscard
---@return int |�ո���|ʧ���򷵻�-1
function lib996:getsblank(actor) end

---��ȡ��Ҳֿ�ָ����Ʒ������
---* actor �� ����
---* itemname �� ��Ʒ����
---* itype �� ������ 0���󶨣�1�ǰ󶨣�2��/�ǰ�
---@param actor object
---@param itemname str
---@param itype int
---@return int |ָ����Ʒ������|ʧ���򷵻�-1
---@nodiscard
function lib996:sitemcount(actor,itemname,itype) end

---��ȡ��Ҳֿ���������
---* actor �� ����
---@param actor object
---@nodiscard
---@return int |�ֿ���������|ʧ���򷵻�-1
function lib996:getssize(actor) end

---ɾ����Ҳֿ�ָ����Ʒ
---* actor �� ����
---* itemname �� ��Ʒ����
---* qty �� ����
---@param actor object
---@param itemname str
---@param qty int
---@return bool |true�����ɹ�|false����ʧ��
---@nodiscard
function lib996:delsitems(actor,itemname,qty) end

---����Ψһid������Ҳֿ���Ʒ
---* actor �� ����
---* makeid �� Ψһid
---* count �� ������Ʒ�۳�����������˲�����Ĭ��ȫ���۳������ɵ�����Ʒȫ���۳�
---@param actor object
---@param makeid int
---@param count int
---@return bool |true�����ɹ�|false����ʧ��
---@nodiscard
function lib996:dessitems(actor,makeid,count) end

---��ȡbuff���
---* buffid �� buffid
---@param buffid int
---@return ���ͣ�int ���
---@nodiscard
function lib996:getbuffgroup(buffid) end

---��ȡbuff����ʱ��
---* buffid �� buffid
---@param buffid int
---@return ���ͣ�int ʱ��
---@nodiscard
function lib996:getbufftemtime(buffid) end

---��ȡbuff��������
---* buffid �� buffid
---@param buffid int
---@return ���ͣ�table
---@nodiscard
function lib996:getbufftemattr(buffid) end

---�ж϶����Ƿ�ɱ�����
---* actor �� ������
---* role �� ��������
---@param actor object
---@param role object
---@return ���ͣ�bool | true���� | false������
---@nodiscard
function lib996:canattack(actor,role) end





return lib996












