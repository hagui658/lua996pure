EventCfg = {}

--�����¼�
EventCfg.goSystemStart              = "goSystemStart"                   --������������
EventCfg.onNewHuman                 = "onNewHuman"                      --�½�ɫ��һ�ε�¼    (������actor)
EventCfg.onLogin                    = "onLogin"                         --��¼    (������actor)
EventCfg.onLoginAttr                = "onLoginAttr"                     --��¼��������    (������actor, ��¼��������)
EventCfg.onLoginEnd                 = "onLoginEnd"                      --��¼���    (������actor, ��¼ͬ������)
EventCfg.onKillMon                  = "onKillMon"                       --�����ͼɱ��    (������actor, �����������, ��������idx)
EventCfg.onkillplay                 = "onkillplay"                      --�����ͼɱ��
EventCfg.onPlayLevelUp              = "onPlayLevelUp"                   --�������    (������actor, ��ǰ�ȼ�, ֮ǰ�ȼ�)
EventCfg.onTakeOnEx                 = "onTakeOnEx"                      --��װ��
EventCfg.onTakeOffEx                = "onTakeOffEx"                     --��װ��
EventCfg.onAddBag                   = "onAddBag"                        --��Ʒ������
EventCfg.onExitGame                 = "onExitGame"                      --С�˻������Ϸ
EventCfg.onTriggerChat              = "onTriggerChat"                   --������������Ϣ
EventCfg.onClicknpc                 = "onClicknpc"                      --���ĳNPC
EventCfg.onRechargeBefore           = "onRechargeBefore"                --��ֵǰ����,�޸�ʵ����(������actor, ��ֵrmb���, ��ƷID��������, ����ID)
EventCfg.onRecharge                 = "onRecharge"                      --��ֵ     (������actor, ��ֵrmb���, ��ƷID��������, ����ID)
EventCfg.goEnterMap                 = "goEnterMap"                      --�����ͼ
EventCfg.goSwitchMap                = "goSwitchMap"                     --�л���ͼ
EventCfg.onPostDie                  = "onPostDie"                       --��ɫ�����󴥷�    (������actor����ɱ�߶���,hiterɱ���߶���)
EventCfg.onRevival                  = "onRevival"                       --��ɫ����֮�󴥷�    (������actor)
EventCfg.onMove                     = "onMove"                          --�ƶ����� (������actor, 0��/1��)
EventCfg.onLoserCar                 = "onLoserCar"                      --��ʧ�ڳ�����    (������actor, �ڳ�����, �ڳ�idx)
EventCfg.onKillCar                  = "onKillCar"                       --��ɱ�ڳ�����    (������actor, �ڳ�����, �ڳ�idx)
EventCfg.goCastlewarStart           = "gocastlewarstart"                --���ǿ�ʼʱ����
EventCfg.goCastlewarEnd             = "goCastlewarend"                  --���ǽ���ʱ����
EventCfg.onHeroLoginAttr            = "onHeroLoginAttr"                 --Ӣ�۵�¼��������      (������actor, hero, Ӣ�۵�½��������)
EventCfg.onHerologinEnd             = "onHerologinEnd"                  --Ӣ�۵�¼���          (������actor, hero)
EventCfg.onFashionUpdata            = "onFashionUpdata"                 --װ����´���          (������actor, ���¶�������[1���/2Ӣ��],idx(��Ӧװ������.lua),value(1����/2����))
EventCfg.onHeroCreateEnd            = "onHeroCreateEnd"                 --Ӣ�۴�����ɴ���      (������actor)
EventCfg.onHeroCreateEnd            = "onHeroCreateEnd"                 --Ӣ�۴�����ɴ���      (������actor)
EventCfg.onHurtPre                  = "onHurtPre"                       --�˺�����              (������actor)
EventCfg.onKillPets                 = "onKillPets"                      --������������          (������actor)
EventCfg.onAttack                   = "onAttack"                        --��������              (������actor)
EventCfg.OnMondropitemex            = "OnMondropitemex"                 --���������Ʒǰ����     (������actor)


--��Ϸ�¼�
EventCfg.goZSLevelChange            = "goZSLevelChange"                 --ת���ȼ������仯 (������actor, ��ǰת���ȼ��� ֮ǰ��ת���ȼ�)
EventCfg.goBeforedawn               = "goBeforedawn"                    --�����˽ű�ÿ���賿����  (������actor, �賿ͬ������)
EventCfg.roBeforedawn               = "roBeforedawn"                    --�����˽ű�ÿ���賿���� (�ѿ�������)
EventCfg.goDailyUpdate              = "goDailyUpdate"                   --ÿ�ո���(�賿��ÿ�յ�һ�ε�¼)(������actor, �Ƿ�ÿ�յ�һ�ε�¼, ͬ������)
EventCfg.goCheckModule              = "goCheckModule"                   --����Ƿ���ģ��ﵽ����Ҫ��
EventCfg.goOpenModule               = "goOpenModule"                    --ĳģ��ﵽ����Ҫ��(������actor, ģ��ID)
EventCfg.goPickUpItemEx             = "goPickUpItemEx"                  --ʰȡ��Ʒ�󴥷�(������actor, item��--�ȴ�֧��num)
    
return EventCfg