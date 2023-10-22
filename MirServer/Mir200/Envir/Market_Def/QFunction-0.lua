-- QF����ļ� ��m2����ʱ��ͻ����
math.randomseed(tostring(os.time()):reverse():sub(1, 7))

function require_ex(module)
    if package.loaded[module] then
        return package.loaded[module]
    end

    for pattern in string.gmatch(package.path, '[^;]+%?[^;]+') do
        local path = string.gsub(pattern, '%?', module)
        local fp = loadfile(path)
        if fp then
            local ret = fp()
            if ret ~= nil then
                package.loaded[module] = ret
            else
                package.loaded[module] = true
            end
            return package.loaded[module]
        end
    end
end

local _,errinfo = pcall(function ()
    require_ex("Envir/Extension/LuaLibrary/string")
    require_ex("Envir/Extension/LuaLibrary/table")
    require_ex("Envir/QuestDiary/config/ConstCfg")
    require_ex("Envir/QuestDiary/config/EventCfg")
    require_ex("Envir/QuestDiary/config/VarCfg")

    require_ex("Envir/QuestDiary/util/GameEvent")
    require_ex("Envir/QuestDiary/game/Global")
    require_ex("Envir/QuestDiary/game/GM")
    require_ex("Envir/QuestDiary/game/ItemUse")
    require_ex("Envir/QuestDiary/game/MathHurt")

    require_ex("Envir/Script/serialize")
    require_ex("Envir/Script/A/init")
    require_ex("Envir/Script/B/init")
    require_ex("Envir/Script/C/init")
    require_ex("Envir/Script/D/init")
    require_ex("Envir/Script/E/init")
    require_ex("Envir/Script/F/init")
end)
if errinfo then lib996:release_print("��ʼ��QFunction-0.lua", errinfo) end

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
---------------------------------QManage.lua------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--��������
function startup()
    lib996:release_print("startup")
    GameEvent.push(EventCfg.goSystemStart, "")
end

--��¼
function login(actor)
    local isnewhuman = lib996:getint(0,actor, "player_login")
    local level = lib996:getbaseinfo(actor, 6)
    lib996:setint(0,actor, VarCfg.N_cur_level, level)
    --��һ�ε�¼
    if isnewhuman ~= 1 then
        lib996:setint(0,actor, "player_login", 1)
        GameEvent.push(EventCfg.onNewHuman, actor)
    end
    --��¼
    GameEvent.push(EventCfg.onLogin, actor)
    --��¼��������
    local loginattrs = {}
    GameEvent.push(EventCfg.onLoginAttr, actor, loginattrs)
    QsQupdateAddr(actor, loginattrs)
    --��¼���
    GameEvent.push(EventCfg.onLoginEnd, actor)

    if lib996:getlevel(actor) < 100 then
        lib996:changeattackmode(actor, ConstCfg.amode.hp) --�޸Ĺ���ģʽΪ��ƽģʽ
    end
end

--��ɫ���ߴ���
function playoffline(actor)
end

--�л��ʼ��
function loadguild(actor)
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
---------------------------------QFunction.lua----------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--�ܲ�
function run(actor)
    GameEvent.push(EventCfg.onMove, actor, 0)
end

--��·
function walk(actor)
    GameEvent.push(EventCfg.onMove, actor, 1)
end

--NPC�������
function clicknpc(actor, npcid)
    GameEvent.push(EventCfg.onClicknpc, actor, npcid)
end

--����
--sMsg      ��������
--chat      ����Ƶ����1;ϵͳ 2;���� 3;˽�� 4;�л� 5;��� 6;���� 7;���磩
--���� true ����������Ϣʧ��
function triggerchat(actor, sMsg, chat)
    GameEvent.push(EventCfg.onTriggerChat, actor, sMsg, chat)
end

--ɾ���ƺŴ���
function on_del_title(actor,id)
end

--����
function playlevelup(actor)
    local before_level = lib996:getint(0,actor, VarCfg.N_cur_level)
    local cur_level = lib996:getbaseinfo(actor, ConstCfg.gbase.level)
    lib996:setint(0,actor, VarCfg.N_cur_level, cur_level)
    lib996:setint(0,actor, VarCfg.N_level_time, os.time())
    lib996:humanhp(actor, "=", lib996:getmaxhp(actor), 2)
    lib996:humanmp(actor, "=", lib996:getmaxmp(actor), 2)
    GameEvent.push(EventCfg.onPlayLevelUp, actor, cur_level, before_level)
end

--��������֮ǰ
function nextdie(actor)
end

--��������
--hiter     ɱ���߶���
function playdie(actor, hiter)
    GameEvent.push(EventCfg.onPostDie, actor, hiter)
end

--ɱ������ʱ����
--actor		��������
--play		��ɱ���
function killplay(actor, play)
    GameEvent.push(EventCfg.onkillplay, actor, play)
end

--���︴��
function revival(actor)
    GameEvent.push(EventCfg.onRevival, actor)
end

--����С�˴���
function playreconnection(actor)
    GameEvent.push(EventCfg.onExitGame, actor)
end

--���������رտͻ��˴���
function playoffline(actor)
    GameEvent.push(EventCfg.onExitGame, actor)
end

--��Ʒ������
function addbag(actor, itemobj)
    if not actor then return end
    GameEvent.push(EventCfg.onAddBag, actor, itemobj)
end

--��ֵ
--gold  ��ֵrmb���
--productid  ��ƷID(ǰ�˵����ֵʱ�򴫵ݵĲ���) --���ò����ɺ���
--moneyid  ��ֵ��û���ID
function recharge(actor, gold, productid, moneyid)
    --�ۼƳ�ֵ
    local bill_num = lib996:getint(0,actor, VarCfg.U_real_recharge)
    lib996:setint(0,actor, VarCfg.U_real_recharge, bill_num + gold)

    --���ճ�ֵ
    local day_bill_num = lib996:getint(0,actor, VarCfg.U_today_real_recharge)
    lib996:setint(0,actor, VarCfg.U_today_real_recharge, day_bill_num + gold)
    lib996:sendmsg(actor, 1, '{"Msg":"<font color=\'#FFFF00\'>��ֵ'..bill_num..'Ԫ,�ۼƳ�ֵ'..lib996:getint(0,actor, VarCfg.U_real_recharge)..'Ԫ</font>","Type":9}')

    GameEvent.push(EventCfg.onRecharge, actor, gold, productid, moneyid)
end

--������װ��
function takeoffex(actor, itemobj, where, itemname, makeid)
    GameEvent.push(EventCfg.onTakeOffEx, actor, itemobj, where, itemname, makeid)
end
--���ﴩװ��
function takeonex(actor, itemobj, where, itemname, makeid)
    GameEvent.push(EventCfg.onTakeOnEx, actor, itemobj, where, itemname, makeid)
end

--��ȡ������Ʒ�󴥷�
function pickupitemex(actor, itemobj)
    GameEvent.push(EventCfg.goPickUpItemEx, actor, itemobj)
end

--�����ͼɱ������
function killmon(actor, monobj)
    local monidx = lib996:getbaseinfo(monobj, ConstCfg.gbase.idx)
    GameEvent.push(EventCfg.onKillMon, actor, monobj, monidx)
end

--��ʧ�ڳ�����
function losercar(actor, monobj)
    local monidx = lib996:getbaseinfo(monobj, ConstCfg.gbase.idx)
    GameEvent.push(EventCfg.onLoserCar, actor, monobj, monidx)
end

--ɱ�ڳ�����
function cardie(actor, monobj)
    local monidx = lib996:getbaseinfo(monobj, ConstCfg.gbase.idx)
    GameEvent.push(EventCfg.onKillCar, actor, monobj, monidx)
end

--�л���ͼ
function entermap(actor)
    local former_mapid = lib996:getstr(0,actor, VarCfg.S_cur_mapid)
    local cur_mapid = lib996:getbaseinfo(actor, ConstCfg.gbase.mapid)
    cur_mapid = tostring(cur_mapid)
    if cur_mapid ~= former_mapid then       --�л��˵�ͼ
        lib996:setstr(0,actor, VarCfg.S_cur_mapid,cur_mapid)
        GameEvent.push(EventCfg.goSwitchMap, actor, cur_mapid, former_mapid)
    else
        GameEvent.push(EventCfg.goEnterMap, actor, cur_mapid)
    end
end

--��̯�۳���Ʒʱ����
function on_stall_item(actor, buyer, makeindex, itemid, moneyid, moneynum)
    local myname = lib996:getname(actor)
    local moneyname = lib996:getstditeminfo(moneyid,1)
    local itemname = lib996:getstditeminfo(itemid,1)
    _Fsendmail(myname, 3, nil, itemname, moneynum, moneyname)
end

--------------------------------------------------------------------------------
----------------------------------����ս����-------------------------------------
--------------------------------------------------------------------------------
--���ǿ�ʼ����
function castlewarstart()
    lib996:sendmsg(nil, 2, '{"Msg":"ɳ�����Ի�ѿ���������","FColor":249,"BColor":0,"Type":5,"Time":3,"SendName":"xxx","SendId":"123","Y":"30"}')
    lib996:sendmsg(nil, 2, '{"Msg":"ɳ�����Ի�ѿ���������","FColor":249,"BColor":0,"Type":5,"Time":3,"SendName":"xxx","SendId":"123","Y":"60"}')
    lib996:sendmsg(nil, 2, '{"Msg":"ɳ�����Ի�ѿ���������","FColor":249,"BColor":0,"Type":5,"Time":3,"SendName":"xxx","SendId":"123","Y":"90"}')
    GameEvent.push(EventCfg.goCastlewarStart)
end

--���ǽ�������
function castlewarend()
    GameEvent.push(EventCfg.goCastlewarEnd)
end

--ռ��ɳ�Ϳ˴���
function getcastle0()
end
--------------------------------------------------------------------------------
----------------------------------Ӣ����ش���-----------------------------------
--------------------------------------------------------------------------------
--Ӣ�۵�½����
function herologin(actor)
    local hero = lib996:gethero(actor)
    -- local hero_name = lib996:getbaseinfo(hero,ConstCfg.gbase.name)
    local isnewhuman = lib996:getint(0,actor, "hero_login")
    if isnewhuman ~= 1 then
        if not lib996:isherorecall(actor) then return end
        local hero_ob = lib996:gethero(actor)
        lib996:humanhp(hero_ob, "=", lib996:getmaxhp(hero_ob))
        lib996:humanmp(hero_ob, "=", lib996:getmaxmp(hero_ob))
        lib996:setint(0,actor, "hero_login", 1)
    end

    --��¼��������
    local loginattrs = {}
    GameEvent.push(EventCfg.onHeroLoginAttr, actor,hero,loginattrs)
    QsQupdateAddr(hero, loginattrs)

    --Ӣ�۵�½
    GameEvent.push(EventCfg.onHerologinEnd, actor,hero)
end

--Ӣ�۴�������
function createherook(actor)
    lib996:recallhero(actor)
    GameEvent.push(EventCfg.onHeroCreateEnd, actor)
end

--Ӣ��ȡ���ɹ�����
function checkusernameok(actor)
    local sex = lib996:getint(0,actor,VarCfg.Hero_Sex)
    local job = lib996:getint(0,actor,VarCfg.Hero_Job)
    local role_name = lib996:getbaseinfo(actor,ConstCfg.gbase.name)
    local hero_name = role_name.."AӢ��"
    lib996:createhero(actor, hero_name, job, sex)
end

--Ӣ��ȡ��ʧ�ܴ���
function checkusernameno(actor,param2)
    lib996:recallhero(actor)
    lib996:sendmsg(actor, ConstCfg.notice.own, '{"Msg":"<font color=\'#ff0000\'>Ӣ�������Ѿ�����</font>","Type":9}')
end
--------------------------------------------------------------------------------
----------------------------------δ�õ��Ĵ���-----------------------------------
--------------------------------------------------------------------------------
--����
function handlerequest(actor, msgid, arg1, arg2, arg3, sMsg)
end

--ÿ���һ�ε�¼
function setday(actor)
end

--��Ҹ�����
function changehumnameok(actor)
end

--ˢ��֪ͨ
function makemonnotice(mon)
end

--�뿪��ͼ
function leavemap(actor)
end

--��ȡ����ʱ����
function gainexp()
end

--�½�����ʱ����
function picktask()
end

--����仯ʱ
function changetask()
end

--����ɾ��ʱ
function deletetask()
end

--���񱻵��ʱ
function clicknewtask(actor,id)
end

--���Ҹı䴥��
function moneychangeex(...)
end

--����ʱ
function attack(attacks,roles,skillid)
    -- GameEvent.push(EventCfg.onAttack,attacks,roles,skillid)
end

--�ܻ���
function struck()
end

--����ǰ����
function on_take_on_pre(...)
    return true
end

--�����󴥷�
function on_take_on(...)
end

--���buff����
function addbuffafter(actor,buffid,time)
end

--ɾ��buff����
function delbuffafter(actor,buffid,time)
end

--��װ��ǰ����
function takeonbeforeex(actor,item)
end

--�Զ�Ѱ·ֹͣʱ����
function findpathstop(...)
end

--�Զ�Ѱ·��ʼʱ����
function findpathbegin(...)
end

--�Զ�Ѱ·����ʱ
function findpathend()
end

--��������
function on_level_up()
end

--���������Ʒǰ����
function mondropitemex(actor,DropItem,mon,x,y)
    GameEvent.push(EventCfg.OnMondropitemex,actor,DropItem,mon,x,y)
    return true
end

--������������
function selfkillslave(actor,mon)
    GameEvent.push(EventCfg.onKillPets,actor,mon)
end

function dropuseitemsbefore()
end
function dropbagitemsbefore()
end
function shenlong(...)
end
function scatterbagitems(...)
end
function onkillmob(...)
end
function herolevelup(...)
end
function pickupitemfrontex(...)
end
function takeoffbeforeex(...)
end
function stopautoplaygame(...)
end
function herodie(...)
end
function herotakeonbeforeex(...)
end
function addherobag(...)
end
function dropheroitemex(...)
end
function groupitemonex(...)
end
function slavebb()
end
function on_spell_pre()
end
function startautoplaygame(...)
end
--------------------------------------------------------------------------------
----------------------------------�˺�����---------------------------------------
--------------------------------------------------------------------------------

--���Ա仯
function sendability(actor)
    ----lua ���Ա�
    addatt(actor)
    ----end
end

----lua ���Ա�
local play_attr = {}
local attr_tab
function addatt(actor)
    attr_tab = nil
    if lib996:isplayer(actor) then
        attr_tab = lib996:attrtab(actor)
        play_attr[actor] = attr_tab or {}
    end
    return attr_tab
end

local function on_burst(attr_atab,ack)                      --��������--attack�ǹ�����
    if isHasAttr(attr_atab,29) then return ack end
    if math.random(1,10000) <= attr_atab[29] then           --�����Ƿ񱩻�
        ack = ack + (ack*(1+(attr_atab[30] *0.0001)))//1
    end
    return ack
end

local function on_burst_btab(attr_btab,role)    --��������
    if isHasAttr(attr_btab,212) then return true end
    if math.random(1,10000) <= attr_btab[212] then
        return false
    else
        return true
    end
end

local function on_def_add(attr_btab,def)    --�����ӳ�����
    if isHasAttr(attr_btab,208) then return def end
    return def + def * attr_btab[208] * 0.0001
end

local function on_ignore_def(attr_atab,def)    -- ��͸ ����Ŀ���������--
    local penetrate = attr_atab[204]    --��͸
    local imm = attr_atab[220]
    local breakdef = attr_atab[210]  --�Ʒ��ֿ�

    if penetrate and penetrate > 0 then
        if math.random(1,10000) <= penetrate then
            return 0
        end
    end

    if not imm or imm == 0 then return def end

    if breakdef and breakdef > 0 then
        if math.random(1,10000) <= breakdef then
            return def
        end 
    end

    def = def - ((imm * 0.0001 * def) // 1)
    def = def < 0 and 0 or def

    return def
end

local function on_ign_att(attr_atab,def)    --����͸����--
    if isHasAttr(attr_atab,43) then return def end
    if isHasAttr(attr_atab,44) then return def end
    if isHasAttr(attr_atab,210) then return def end

    local imm  = attr_atab[43]
    local bimm = attr_atab[44]
    local pimm = attr_atab[45]
    local breakdef = attr_atab[210]  --�Ʒ��ֿ�

    if breakdef and breakdef > 0 then
        if math.random(1,10000) <= breakdef then
            return def
        end
    end

    local cc = 0
    local bu = 0

    if pimm == 0 then
        bu = 1
    else
        if math.random(1,10000) <= pimm then
            bu = 1
        end
    end

    if bu == 1 then     --����ֵ���Ϊ0 ��Ļ�������
        if imm > 0 then
            cc = imm
        end
        if bimm > 0 then
            cc = cc + ((bimm*def*0.0001)//1)
        end
        def = def - cc
        if def < 0 then
            def = 0
        end
    end
    return def
end


local function on_ign_mag(attr_atab,def)    --ħ����͸����--
    if isHasAttr(attr_atab,46) then return def end
    if isHasAttr(attr_atab,47) then return def end

    local imm  = attr_atab[46]
    local bimm = attr_atab[47]
    local pimm = attr_atab[48]
    local breakdef = attr_atab[210]  --�Ʒ��ֿ�

    if breakdef and breakdef > 0 then
        if math.random(1,10000) <= breakdef then
            return def
        end
    end

    local cc = 0
    local bu = 0

    if pimm == 0 then
        bu = 1
    else
        if math.random(1,10000) <= pimm then
            bu = 1
        end
    end

    if bu == 1 then     --����ֵ���Ϊ0
        if imm > 0 then
            cc = imm
        end
        if bimm > 0 then
            cc = cc + ((bimm*def*0.0001)//1)
        end
        def = def - cc
        if def < 0 then
            def = 0
        end
    end
    return def
end

local info_cfg = {
    strAttacker_attr    =   "",             --���������Ա�,nilΪ����
    strRole_attr        =   "",             --�ܻ������Ա�,nilΪ����
    skillid             =   0,              --����id
    hurttype            =   0,              --�˺�����0�������˺���1��ħ���˺�
    hp                  =   0,              --qf�ɷ���Ϣǰ�Ѽ����hpֵ
}

--����ǰ���� ��Ȼ5.3֧��˫���� ���� ��Ҫ���̫��̬�� ��ֵ�ᱬ�� 
--�ô�����ս���л�ܸ�Ƶ�ʵĴ��� �����Զ���ʱ ��ע��Ч������ ���������ظ����ýӿ�
function on_hurt_pre(attack,role,ack,def,skillid,hurttype)
    -- print("role",type(role),role)
    -- print(attack,role,ack,def,skillid,hurttype)

    local attr_atab = play_attr[attack] or addatt(attack) --�ж��Ƿ������Ի���
    local attr_btab = play_attr[role] or addatt(role)

    local hp = 0                                -- ����Ϊ��Ѫ ����Ϊ��Ѫ

    if attr_btab then
        def = on_def_add(attr_btab,def)         --�����ӳ�
    end

    if attr_atab then                           --���﹥��
        if hurttype == 0 then                   --�����˺����� ���㴩͸
            def = on_ign_att(attr_atab,def)
        else
            def = on_ign_mag(attr_atab,def)
        end

        def = on_ignore_def(attr_atab,def)      --��͸ ����Ŀ�����

        local is_burst = true
        if attr_btab then
            is_burst = on_burst_btab(attr_btab,role)    --���� ���ͱ��������� 
        end
        if is_burst then
            ack = on_burst(attr_atab,ack)               --����������  
        end
    end

    hp = def - ack                          --���ݹ�����������˺�

    info_cfg.strAttacker_attr    =   attr_atab              --���������Ա�,nilΪ����
    info_cfg.strRole_attr        =   attr_btab              --�ܻ������Ա�,nilΪ����
    info_cfg.skillid             =   skillid                --����id
    info_cfg.hurttype            =   hurttype               --�˺�����0�������˺���1��ħ���˺�
    info_cfg.hp                  =   hp                     --qf���Ѽ����hpֵ

    --{�޸��˺�ֵ,�����(+-*/=),���ȼ�,˵��}
    local hurtPredatas = {}
    GameEvent.push(EventCfg.onHurtPre, attack,role,info_cfg,hurtPredatas)

    -- lib996:scriptlog("onHurtPre�ɷ�����,���������˺�����"..serialize(hurtPredatas),0)
    if #hurtPredatas > 1 then
        table.sort(hurtPredatas,function (a, b)
            return a[3] < b[3]
        end)
    end
    for _, data in ipairs(hurtPredatas) do
        if data[2] == "+" then
            hp = hp + data[1]
        elseif data[2] == "-" then
            hp = hp - data[1]
        elseif data[2] == "*" then
            hp = hp * data[1]
        elseif data[2] == "/" then
            hp = hp / data[1]
        elseif data[2] == "=" then
            hp = data[1]
        end
    end
    return hp
end

--------------------------------------------------------------------------------
----------------------------------���˶�ʱ��-------------------------------------
--------------------------------------------------------------------------------
--���˶�ʱ����ʾ
-- function ontimer100(actor)
--     callfileex("Envir/Script/A/���Ա�:role_ontimer",actor)
-- end
--------------------------------------------------------------------------------
----------------------------------ϵͳ��ʱ��-------------------------------------
--------------------------------------------------------------------------------
--ϵͳ��ʱ����ʾ
-- function ontimerex100()
--     callfileex("Envir/Script/A/���Ա�:system_ontimer")
-- end