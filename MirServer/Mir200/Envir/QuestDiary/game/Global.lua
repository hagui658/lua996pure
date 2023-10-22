Global = {}

function beforedawn()
    local t = lib996:getplayerlst()
    for _,actor in ipairs(t) do
        Global.dailyupdate(actor)
    end
    local openday = lib996:grobalinfo(1)
    GameEvent.push(EventCfg.RoBeforedawn, openday)
end

-------------------------------�߼�����---------------------------------------
--ÿ�ո���
function Global.dailyupdate(actor, islogin)
    local before_date = lib996:getstr(0,actor, VarCfg.T_daily_date)
    local cur_date = os.date("%Y%m%d") --��ǰ������
    if cur_date ~= before_date then
        lib996:setint(0,actor, VarCfg.U_today_real_recharge, 0)
        lib996:setstr(0,actor, VarCfg.T_daily_date, cur_date)  --����һ����µ�ǰ������
        GameEvent.push(EventCfg.goDailyUpdate, actor, islogin)
    end
end
-------------------------------�¼�---------------------------------------
--��¼��ɴ���
function Global.LoginEnd(actor)
    Global.dailyupdate(actor, true)
end

--ÿ���賿����
function Global.Beforedawn(actor)
    Global.dailyupdate(actor, false)
end

--������������
function Global.goSystemStart()
    lib996:addscheduled(600, "�賿����", 1, "00:00:00", "beforedawn", "")
end

--��ɫ�״ε�½
function Global.onNewHuman(actor)
    --�������κ�
    lib996:setsndaitembox(actor,1)
    --���ñ�����
    lib996:setbagcount(actor, ConstCfg.bagcellnum)

    --�ֿ����
    lib996:changestorage(actor, ConstCfg.warehousecellnum)

    --���ε�½��Ӽ���
    for _, skill in ipairs(ConstCfg.first_login_addskill) do
        lib996:addskill(actor, skill[1], skill[2])
    end

    --���ε�½���װ��
    local sex = lib996:getbaseinfo(actor, ConstCfg.gbase.sex) + 1
    for pos, var in pairs(ConstCfg.first_login_giveonequip) do
        lib996:giveonitem(actor, pos, var[sex], 1, 63)
    end

    --���ù�ͷ
    lib996:setbaseinfo(actor,ConstCfg.gbase.hair,0)

    --��Ѫ����
    lib996:humanhp(actor,"=",lib996:getmaxhp(actor),2)
    lib996:humanmp(actor,"=",lib996:getmaxmp(actor),2)

    --���ε�½��ת��ͼ
    -- lib996:mapmove(actor, "3",333,333,5)
end

-------------------------------�����¼�---------------------------------------
GameEvent.add(EventCfg.onLoginEnd, Global.LoginEnd, Global, 1)
GameEvent.add(EventCfg.onNewHuman, Global.onNewHuman, Global, 1)
GameEvent.add(EventCfg.goBeforedawn, Global.Beforedawn, Global, 1)
GameEvent.add(EventCfg.goSystemStart, Global.goSystemStart, Global, 1)

return Global