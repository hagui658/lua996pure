MathHurt = {}

local attr_num_1,attr_num_2,attr_num_3
local attr_num_4,attr_num_5,attr_num_6

--����������--role���ܻ��� hp��û�з���ʱΪ0  ������Ѫ ������Ѫ
local function on_ref_att(attr_btab,hp,attack)
    if isHasAttr(attr_btab,37) then return end
    if isHasAttr(attr_btab,38) then return end

    attr_num_1,attr_num_2,attr_num_3 = attr_btab[37],attr_btab[38],attr_btab[39]
    attr_num_4,attr_num_5 = 0,0

    if attr_num_3 == 0 then
        attr_num_5 = 1
    else
        if math.random(1,10000) <= attr_num_3 then
            attr_num_5 = 1
        end
    end

    if attr_num_5 == 1 then
        if attr_num_1 > 0 then
            attr_num_4 = attr_num_1
        end
        if attr_num_2 > 0 then
            attr_num_4 = attr_num_4 - ((attr_num_2*hp*0.0001)//1)
        end
        lib996:humanhp(attack,"-",attr_num_4,1)
    end
end

--ħ����������--role���ܻ���
local function on_ref_mag(attr_btab,hp,attack)
    if isHasAttr(attr_btab,40) then return end
    if isHasAttr(attr_btab,41) then return end

    local ref = attr_btab[40]
    local bref = attr_btab[41]
    local pref = attr_btab[42]

    local cc = 0
    local bu = 0

    if pref == 0 then
        bu = 1
    else
        if math.random(1,10000) <= pref then
            bu = 1
        end
    end

    if bu == 1 then
        if ref > 0 then
            cc = ref
        end
        if bref > 0 then
            cc = cc - ((bref*hp*0.0001)//1)
        end
        lib996:humanhp(attack,"-",cc,1)
    end
end

--�����˺���������--role���ܻ��� hp��û�з���ʱΪ0  ������Ѫ ������Ѫ
local function on_rebound_hurt(attr_btab,hp,attack)
    if isHasAttr(attr_btab,221) then return end
    attr_num_1 = hp - ((attr_btab[221]*hp*0.0001)//1)
    lib996:humanhp(attack,"-",attr_num_1,1)
end

--������������--
local function on_imm_att(attr_btab,hp)
    if isHasAttr(attr_btab,31) then return hp end
    if isHasAttr(attr_btab,32) then return hp end
    if isHasAttr(attr_btab,33) then return hp end
    local imm = attr_btab[31]               --���˹̶�ֵ
    local bimm = attr_btab[32]              --���˰ٷֱ�
    local pimm = attr_btab[33]              --���˼��� 0ʱ��100% ����
    local cc = 0                            --����˶����˺�
    local bu = 0                            --�Ƿ������˼���

    if pimm == 0 then
        bu = 1
    else
        if math.random(1,10000) <= pimm then
            bu = 1
        end
    end

    if bu == 1 then     --���˼���
        if imm > 0 then
            cc = imm
        end
        if bimm > 0 then
            cc = cc - ((bimm*hp*0.0001)//1)
        end
        hp = hp + cc
    end
    return hp
end

--ħ����������--
local function on_imm_mag(attr_btab,hp)
    if isHasAttr(attr_btab,34) then return hp end
    if isHasAttr(attr_btab,35) then return hp end
    if isHasAttr(attr_btab,36) then return hp end

    local imm = attr_btab[34]               --���˹̶�ֵ
    local bimm = attr_btab[35]              --���˰ٷֱ�
    local pimm = attr_btab[36]              --���˼��� 0ʱ��100% ����

    local cc = 0                            --����˶����˺�
    local bu = 0                            --�Ƿ������˼���

    if pimm == 0 then
        bu = 1
    else
        if math.random(1,10000) <= pimm then
            bu = 1
        end
    end

    if bu == 1 then     --���˼���
        if imm > 0 then
            cc = imm
        end
        if bimm > 0 then
            cc = cc - ((bimm*hp*0.0001)//1)
        end
        hp = hp + cc
    end
    return hp
end

--�����˺���������--
local function on_skill_reduce(attr_btab,hp,skillid)
    local skill_var = 0

    if skillid == 26 then
        skill_var = attr_btab[216]  --�һ����
    elseif skillid == 12 then
        skill_var = attr_btab[217]  --��ɱ����
    elseif skillid == 7 then
        skill_var = attr_btab[218]  --��ɱ����
    end

    if skill_var > 0 then
        if math.random(1,10000) <= skill_var then
            hp = hp - ((skill_var*hp*0.0001)//1)
        end
    end

    return hp
end

--���ӹ����˺�����
local function on_dcr(attr_atab,hp)
    if isHasAttr(attr_atab,219) then return hp end
    if not attr_atab[219] or attr_atab[219] <= 0 then return hp end
    hp = hp + ((attr_atab[219]*hp*0.0001)//1)
    return hp
end

--������
local function on_block(attr_btab,hp)
    if isHasAttr(attr_btab,211) then return hp end
    if isHasAttr(attr_btab,213) then return hp end
    if math.random(1,10000) <= attr_btab[213] then
        hp = hp - hp * attr_btab[211] * 0.0001
    end
    return hp
end

--����һ������
local function on_critical(attr_atab,hp)
    if isHasAttr(attr_atab,200) then return hp end
    if math.random(1,10000) <= attr_atab[200] then
        hp = hp * 10
    end
    return hp
end

--��������
local function on_frozen(attr_atab,attack,role)
    if isHasAttr(attr_atab,207) then return end
    if math.random(1,10000) <= attr_atab[207] then
        lib996:addbuff(role,10006)
    end
end

--���ع���
local toxinattack_random = {140,130,120,110,100,90,85,80,75,70,65,60,55,50,45,40,35,30,25,20}
local function on_toxinattack(attr_atab,attack,role)
    if isHasAttr(attr_atab,206) then return end
    attr_num_1 = math.floor(attr_atab[206] / 100)
    if toxinattack_random[attr_num_1] then
        if math.random(1,toxinattack_random[attr_num_1]) == toxinattack_random[attr_num_1] then
            lib996:addbuff(role,0)
            lib996:addbuff(role,1)
        end
    end
end

--��ʥһ������
local function on_holyattack(attr_atab,hp)
    if isHasAttr(attr_atab,205) then return hp end
    if math.random(1,10000) <= attr_atab[205] then
        hp = hp*3
    end
    return hp
end

--���Է�������
local function on_def(attr_btab,hp)
    if isHasAttr(attr_btab,203) then return end
    if math.random(1,10000) <= attr_btab[203] then
        hp = -1
    end
    return hp
end

--��Ѫ����--
local function on_suck_hp(attr_atab,hp,attack)
    if isHasAttr(attr_atab,49) then return end
    if isHasAttr(attr_atab,50) then return end

    local suck = attr_atab[49]
    local bsuck = attr_atab[50]
    local psuck = attr_atab[51]

    local cc = 0
    local bu = 0

    if psuck == 0 then
        bu = 1
    else
        if math.random(1,10000) <= psuck then
            bu = 1
        end
    end

    if bu == 1 then
        if suck > 0 then
            cc = suck
        end
        if bsuck > 0 then
            cc = cc - ((bsuck*hp*0.0001)//1)
        end
        lib996:humanhp(attack,"+",cc,4)
    end
end

--��������--
local function on_suck_mp(attr_atab,hp,attack,role)
    if isHasAttr(attr_atab,52) then return end
    if isHasAttr(attr_atab,53) then return end

    local suck = attr_atab[52]
    local bsuck = attr_atab[53]
    local psuck = attr_atab[54]

    local cc = 0
    local bu = 0

    if psuck == 0 then
        bu = 1
    else
        if math.random(1,10000) <= psuck then
            bu = 1
        end
    end

    if bu == 1 then
        if suck > 0 then
            cc = suck
        end
        if bsuck > 0 then
            cc = cc - ((bsuck*hp*0.0001)//1)
        end
        lib996:humanmp(role,"-",cc)
        lib996:humanmp(attack,"+",cc)
    end
end

--�и����
local function on_cut_mon(attr_atab,role)
    if isHasAttr(attr_atab,215) then return  end
    lib996:humanhp(role,"-",attr_atab[215],70)
end

--�и�����
local function on_cut_role(attr_atab,role)
    if isHasAttr(attr_atab,214) then return end
    lib996:humanhp(role,"-",attr_atab[214],71)
end

---------------------------------------�����������¼�������---------------------------------------
function MathHurt.onHurtPre(attack,role,cfg,hurtPredatas)

    --�����ܻ�
    if cfg.strRole_attr then
        --�����˺����� ���� �ܻ��� ����
        if cfg.hurttype == 0 then
            on_ref_att(cfg.strRole_attr,cfg.hp,attack)
            cfg.hp = on_imm_att(cfg.strRole_attr,cfg.hp)
        else
            on_ref_mag(cfg.strRole_attr,cfg.hp,attack)
            cfg.hp = on_imm_mag(cfg.strRole_attr,cfg.hp)
        end

        on_rebound_hurt(cfg.strRole_attr,cfg.hp,attack)           --�����˺�����

        cfg.hp = on_skill_reduce(cfg.strRole_attr,cfg.hp,cfg.skillid)      --�����˺�����

        --���� �ܻ��� ��
        cfg.hp = on_block(cfg.strRole_attr,cfg.hp)
    end


    --���﹥��
    if cfg.strAttacker_attr then
        --���ӹ����˺�
        cfg.hp = on_dcr(cfg.strAttacker_attr,cfg.hp)
        -----����һ��
        cfg.hp = on_critical(cfg.strAttacker_attr,cfg.hp)
        -----��ʥһ��
        cfg.hp = on_holyattack(cfg.strAttacker_attr,cfg.hp)
        -----��������
        on_frozen(cfg.strAttacker_attr,attack,role)
        -----���ع���
        on_toxinattack(cfg.strAttacker_attr,attack,role)

        -- ������������
        if cfg.strRole_attr then
            cfg.hp = on_def(cfg.strRole_attr,cfg.hp)            --���Է���
            on_cut_role(cfg.strAttacker_attr,role)   --�и�����
        end

        on_suck_hp(cfg.strAttacker_attr,cfg.hp,attack)        --���� �첽���� ��֤�����������
        on_suck_mp(cfg.strAttacker_attr,cfg.hp,attack,role)        --���� �첽���� ��֤�����������

        -- ������������
        if not cfg.strRole_attr then
            --cfg.hp = on_soul(cfg.strAttacker_attr,cfg.hp)             --�ɻ� ������������Ѫ
            on_cut_mon(cfg.strAttacker_attr,role)      --�и����
        end
    end

    --����ʱ����,�����ܻ� 
    if not cfg.strAttacker_attr and cfg.strRole_attr then
    end

    table.insert(hurtPredatas,{cfg.hp,"=",1,"MathHurt"})
end
GameEvent.add(EventCfg.onHurtPre, MathHurt.onHurtPre, MathHurt, 1)

return MathHurt