if not ConstCfg.DEBUG then return end

--���
function usercmd10001(actor)
    if lib996:getgmlevel(actor) ~= 10 then return end
    lib996:changemoney(actor, 1, "=", 0, "", true)
end
function usercmd10002(actor)
    if lib996:getgmlevel(actor) ~= 10 then return end
    lib996:changemoney(actor, 1, "+", 100000000, "", true)
end

--Ԫ��
function usercmd10003(actor)
    if lib996:getgmlevel(actor) ~= 10 then return end
    lib996:changemoney(actor, 2, "=", 0, "", true)
end
function usercmd10004(actor)
    if lib996:getgmlevel(actor) ~= 10 then return end
    lib996:changemoney(actor, 2, "+", 100000000, "", true)
end

--���
function usercmd10005(actor)
    if lib996:getgmlevel(actor) ~= 10 then return end
    lib996:changemoney(actor, 7, "=", 0, "", true)
end
function usercmd10006(actor)
    if lib996:getgmlevel(actor) ~= 10 then return end
    lib996:changemoney(actor, 7, "+", 100000000, "", true)
end

--��Ԫ��
function usercmd10007(actor)
    if lib996:getgmlevel(actor) ~= 10 then return end
    lib996:changemoney(actor, 4, "=", 0, "", true)
end
function usercmd10008(actor)
    if lib996:getgmlevel(actor) ~= 10 then return end
    lib996:changemoney(actor, 4, "+", 100000000, "", true)
end

--�����ս
function usercmd10009(actor)
    if getgmlevel(actor) ~= 10 then return end
    Playyydz.custom_open(actor)
end
function usercmd10010(actor)
    if getgmlevel(actor) ~= 10 then return end
    Playyydz.custom_close(actor)
end

--���Ҷ�
function usercmd10011(actor)
    if getgmlevel(actor) ~= 10 then return end
    Playdld.custom_open(actor)
end
function usercmd10012(actor)
    if getgmlevel(actor) ~= 10 then return end
    Playdld.custom_close(actor)
end

--�������
function usercmd10100(actor, tasktype)
    if getgmlevel(actor) ~= 10 then return end
    local tasktype = tonumber(tasktype)
    if not tasktype then return end
    Task.rwwc(actor, tasktype)
end
--�������2
function usercmd10101(actor, taskid)
    if getgmlevel(actor) ~= 10 then return end
    taskid = tonumber(taskid)
    if not taskid then return end
    Task.finish(actor, taskid)
end
--������ȡ
function usercmd10102(actor, taskid)
    if getgmlevel(actor) ~= 10 then return end
    taskid = tonumber(taskid)
    if not taskid then return end
    Task.receive(actor, taskid)
end
--����ɾ��
function usercmd10103(actor, taskid)
    if getgmlevel(actor) ~= 10 then return end
    taskid = tonumber(taskid)
    if not taskid then return end
    Task.delete(actor, taskid)
end

--Ӣ�۵ȼ�
function usercmd10200(actor,level)
    level = tonumber(level)
    if lib996:getgmlevel(actor) ~= 10 then return end
    local hero = lib996:gethero(actor)
    if hero == "0" then
        lib996:sendmsg(actor, 1, '{"Msg":"<font color=\'#ff0000\'>��Ӣ������</font>","Type":9}')
        return
    end
    if level and level > 0 then
        lib996:setlevel(hero,"+", level)
    else
        lib996:setlevel(hero,"-", lib996:getlevel(hero) - 1)
    end
end

--Ӣ��ת��+1
function usercmd10201(actor)
    if lib996:getgmlevel(actor) ~= 10 then return end
    local hero = lib996:gethero(actor)
    if hero == "0" then
        lib996:sendmsg(actor, 1, '{"Msg":"<font color=\'#ff0000\'>��Ӣ������</font>","Type":9}')
        return
    end
    local hero_relevel = lib996:getint(0,actor,VarCfg.Hero_renew_level) + 1
    lib996:setint(0,actor,VarCfg.Hero_renew_level,hero_relevel)
    lib996:setrelevel(hero,hero_relevel)
    lib996:sendmsg(actor, 1, '{"Msg":"<font color=\'#00FF7F\'>�����ٻ����������</font>","Type":9}')
end
--Ӣ��ת��=0
function usercmd10202(actor)
    if lib996:getgmlevel(actor) ~= 10 then return end
    local hero = lib996:gethero(actor)
    if hero == "0" then
        lib996:sendmsg(actor, 1, '{"Msg":"<font color=\'#ff0000\'>��Ӣ������</font>","Type":9}')
        return
    end
    local hero_relevel = lib996:getint(0,actor,VarCfg.Hero_renew_level) + 1
    lib996:setint(0,actor,VarCfg.Hero_renew_level,hero_relevel)
    lib996:setrelevel(hero,hero_relevel)
    lib996:sendmsg(actor, 1, '{"Msg":"<font color=\'#00FF7F\'>�����ٻ����������</font>","Type":9}')
end

--����ת��+1
function usercmd10013(actor)
    if lib996:getgmlevel(actor) ~= 10 then return end
    local zslevel = lib996:getbaseinfo(actor, 39)
    local next_zslevel = zslevel + 1
    --lib996:setbaseinfo(actor, 39, next_zslevel)  --ת������
    lib996:setrelevel(actor,next_zslevel)
    GameEvent.push(EventCfg.goZSLevelChange, actor, next_zslevel, zslevel)
end

--����ת��=0
function usercmd10014(actor)
    if lib996:getgmlevel(actor) ~= 10 then return end
    local zslevel = lib996:getbaseinfo(actor, 39)
    local next_zslevel = 0
    --lib996:setbaseinfo(actor, 39, next_zslevel)  --ת������
    lib996:setrelevel(actor,next_zslevel)
    GameEvent.push(EventCfg.goZSLevelChange, actor, next_zslevel, zslevel)
end

--ȫ�����
function usercmd10015(actor)
    if lib996:getgmlevel(actor) ~= 10 then return end
    local _mapID = lib996:getbaseinfo(actor, 3)
    local x,y = lib996:getbaseinfo(actor, 4),lib996:getbaseinfo(actor, 5)
    local object = lib996:getobjectinmap(_mapID,x,y,10,2)
    if #object > 0 then
        for i, mon in ipairs(object) do
            lib996:killmonbyobj(actor,mon,true,true,true)
        end
    end
end

--��ӵ���
function usercmd10016(actor, itemName,itemNum)
    if lib996:getgmlevel(actor) ~= 10 then return end
    local Name = tonumber(itemName)
    if type(Name) == "number" then
        itemName = lib996:getstditeminfo(Name,1)
    end
    itemNum = tonumber(itemNum) or 1

    -- print("�޸ĺ�,������")
    lib996:giveitem(actor,itemName,itemNum)
end

--���Գ�ֵ
function usercmd10020(actor,num,moneyid)
    if lib996:getgmlevel(actor) ~= 10 then return end
    num = tonumber(num)
    moneyid = tonumber(moneyid) or ConstCfg.money.lf
    if not num then return end
    recharge(actor, num, moneyid,moneyid)
end

 --����ÿ��/������һ��
function usercmd10104(actor)
    if lib996:getgmlevel(actor) ~= 10 then return end
    lib996:setstr(0,actor, VarCfg.T_daily_date, "")
    lib996:sendmsg(actor, 1, '{"Msg":"<font color=\'#ff0000\'>gmִ�гɹ�,����ÿ��/������һ��</font>","Type":9}')
    GameEvent.push(EventCfg.onLoginEnd, actor)
end

--�������л���������
function usercmd10105(actor)
    if lib996:getgmlevel(actor) ~= 10 then return end
    lib996:addattacksabakall()
    lib996:release_print("gmִ�гɹ�")
end
--�����Ʒ
function usercmd10106(actor)
    if lib996:getgmlevel(actor) ~= 10 then return end
    local tab_name = {}
    local tab_num = {}
    local item_tab = lib996:getbagitems(actor)   --��ȡ����������Ʒ����
    for i=1,#item_tab do
        local item = item_tab[i]
        local id = lib996:getiteminfo(actor, item, 2)  --��ȡ������Ʒid
        local name = lib996:getstditeminfo(id,1)          --��ȡ������Ʒname
        local item_mun = lib996:getiteminfo(actor, item, 5)  --��ȡ�ѵ�
        if item_mun == 0 then   --�ѵ�Ϊ0 Ϊ���ѵ� ����Ϊ1
            item_mun = 1
        end
        table.insert(tab_name,name)
        table.insert(tab_num,item_mun)
    end
    for j=1,#tab_name do
        lib996:takeitem(actor,tab_name[j],tab_num[j])
    end
end
--��ѯ��������Ʒ
function usercmd10107(actor)
    local tab_name = {}
    local tab_num = {}
    local tab_idx = {}
    local tab_id = {}
    local tab_item = {}
    
    local item_tab = lib996:getbagitems(actor)
    for i=1,#item_tab do
        local item = item_tab[i]
        local idx = lib996:getiteminfo(actor, item, 2)  --��ȡ������Ʒ���
        local id = lib996:getiteminfo(actor, item, 1)  --��ȡ������ƷΨһid
        local name = lib996:getstditeminfo(idx,1)          --��ȡ������Ʒname
        local item_mun = lib996:getiteminfo(actor, item, 5)  --��ȡ�ѵ�
        if item_mun == 0 then   --�ѵ�Ϊ0 Ϊ���ѵ� ����Ϊ1
            item_mun = 1
        end
        
        table.insert(tab_name,name)
        table.insert(tab_num,item_mun)
        table.insert(tab_idx,idx)
        table.insert(tab_id,id)
        table.insert(tab_item,item)
    end
    for j=1,#tab_name do
        lib996:release_print(" ��ƷID:"..tab_idx[j].."������:"..tab_name[j].."������:"..tab_num[j].."������:"..tab_item[j].."��ΨһID:"..tab_id[j])
    end 
end
--��ѯ����Զ������ @get ��������������
function usercmd10108(actor,var)
    local value = getplayvar(actor,var)
    lib996:release_print(type(value)..":"..var.." = "..value)
end
--��������Զ������ @set ������ ����ֵ��������
function usercmd10109(actor,var,value)
    setplayvar(actor, "HUMAN",var,value,1)
end
--��ѯȫ���Զ������ @get ��������������
function usercmd10110(actor,var)
    local value = getsysvarex(var)
    lib996:release_print(type(value)..":"..var.." = "..value)
end
--����ȫ�ֶ������ @set ������ ����ֵ��������
function usercmd10111(actor,var,value)
    setsysvarex(var,value, 1)
end

--ˢ��
function usercmd10112(actor, monName,monmNum)
    monmNum = monmNum or 1
    local map = lib996:getbaseinfo(actor, 3)
    local x = lib996:getbaseinfo(actor, 4) + 2
    local y = lib996:getbaseinfo(actor, 5) + 2
    local r = 3
    lib996:genmon(map,x,y,monName,r,monmNum)
end

--GMbox����
function usercmd10113(actor,gs,vartype, str1,str2,str3,str4)
    if str1 ~= "QSQ_var" then
        str1 = tonumber(str1)
    end
    if str4 == "nil" then
        str4 = nil
    end
    if vartype == "int" then
        str4 = tonumber(str4)
        if str4 == nil then
            str4 = 0
        end
    end
    if tonumber(gs) == 2 then   --��ȡ����
        if str1 == "QSQ_var" and str2 == "QSQ_var" then --1 ��2��Ϊ��ʱΪϵͳ����
            local sysvar = ""
            if vartype == "int" then
                sysvar = lib996:getsysint(str3)
            else
                sysvar = lib996:getsysstr(str3)
            end
            local psysvar = lib996:tbl2json(sysvar) or sysvar
            lib996:release_print("ϵͳ���� "..vartype,psysvar)
            lib996:sendmsg(actor, 1, '{"Msg":"<font color=\'#ff0000\'>ϵͳ����'..vartype.." "..psysvar..'</font>","Type":1}')

        end
        if str1 == 0 and str2 == "QSQ_var" then --�ж������� 2Ϊ��ʱ �����Լ�
            local sysvar = ""
            if vartype == "int" then
                sysvar = lib996:getint(str1,actor,str3)
            else
                sysvar = lib996:getstr(str1,actor,str3)
            end
            local psysvar = lib996:tbl2json(sysvar) or sysvar
            lib996:release_print("���˱��� "..vartype.."��",psysvar)
            lib996:sendmsg(actor, 1, '{"Msg":"<font color=\'#ff0000\'>���˱���'..vartype.." "..psysvar..'</font>","Type":1}')
        end
        if str1 ~= "QSQ_var" and str2 ~= "QSQ_var" then --�ж������� 2Ҳ��ָ������ʱ
            local sysvar = ""
            if vartype == "int" then
                sysvar = lib996:getint(str1,str2,str3)
            else
                sysvar = lib996:getstr(str1,str2,str3)
            end
            local psysvar = lib996:tbl2json(sysvar) or sysvar
            lib996:release_print("ָ������ "..vartype.."��",psysvar)
            lib996:sendmsg(actor, 1, '{"Msg":"<font color=\'#ff0000\'>ָ������'..vartype.." "..psysvar..'</font>","Type":1}')
        end
    else        --���ñ���
        if str1 == "QSQ_var" and str2 == "QSQ_var" then
            if vartype == "int" then
                lib996:setsysint(str3,str4)
            else
                lib996:setsysstr(str3,str4)
            end
            lib996:release_print("�޸�ϵͳ���� ���")
        end
        if str1 == 0 and str2 == "QSQ_var" then
            if vartype == "int" then
                lib996:setint(str1,actor,str3,str4)
            else
                lib996:setstr(str1,actor,str3,str4)
            end
            lib996:release_print("�޸ı��˱��� ���")
        end
        if str1 ~= "QSQ_var" and str2 ~= "QSQ_var" then
            if vartype == "int" then
                lib996:setint(str1,str2,str3,str4)
            else
                lib996:setstr(str1,str2,str3,str4)
            end
            lib996:release_print("�޸�ָ������ ���")
        end
    end
end

--����
function usercmd10114(actor, way,_skillid)
    if type(way) == "nil" then
        return
    end
    if way == "3" then --ɾ�����м���
        lib996:clearskill(actor)  
        lib996:release_print("ɾ���ɹ�")      
        return
    end

    local skillid = tonumber(_skillid)
    if not skillid then
        skillid = lib996:getskillindex(_skillid) --���ݼ������ƻ�ȡ����id -1
        if skillid == -1 then
            lib996:release_print("��������ȷ�ļ���id�������֣�")
            return
        end
    end
    local skillname = lib996:getskillname(skillid) --���ݼ���id��ȡ�������� 0
    if skillname == "0" then
        lib996:release_print("��������ȷ�ļ���id�������֣�")
        return
    end

    if way == "1" then -- ɾ������   
        local test = lib996:getskillinfo(actor, skillid, 1)
        if test then
            lib996:delskill(actor, skillid)
            lib996:release_print("ɾ����" .. skillname .. "���ɹ���")
        end
    elseif way == "2" then --��Ӽ���
        local test = lib996:getskillinfo(actor, skillid, 1)
        if test then
            lib996:release_print("���С�".. skillname .."����")
            return
        end
        lib996:addskill(actor, skillid, 0)
        lib996:release_print("��ӡ�" .. skillname .. "���ɹ���")
    end
end
    --buff
function usercmd10115(actor,itype,name,buffid)
    -- print(itype, name, buffid)
    buffid = tonumber(buffid)
    local play = ""
    if name == "nil" then
        play = actor
    else
        play = lib996:getplayerbyname(name)
    end

    if itype == "1" then
        if lib996:hasbuff(play,buffid) then 
            lib996:delbuff(play,buffid)
            lib996:sendmsg(actor, 1, '{"Msg":"<font color=\'#ff0000\'>ɾ���ɹ�</font>","Type":1}')
        else
            lib996:sendmsg(actor, 1, '{"Msg":"<font color=\'#ff0000\'>ɾ��ʧ�ܣ�Ŀ��û�и�buff</font>","Type":1}')
        end
    elseif itype == "2" then
        lib996:addbuff(play,buffid)
        lib996:sendmsg(actor, 1, '{"Msg":"<font color=\'#ff0000\'>�����ɹ���ע�⣺��������ӳɹ���</font>","Type":1}')
    elseif itype == "3" then
        local tab_buff = lib996:getallbuffid(play)
        for i=1,#tab_buff do 
            lib996:delbuff(play,tab_buff[i])
        end
        lib996:sendmsg(actor, 1, '{"Msg":"<font color=\'#ff0000\'>ɾ���ɹ�</font>","Type":1}')
    elseif itype == "4" then
        local tab_buff = lib996:getallbuffid(play)
        lib996:sendmsg(actor, 1, '{"Msg":"<font color=\'#FFA500\'>--------------��ѯ��ʼ---------------</font>","Type":1}')
        for i=1,#tab_buff do 
            local d = lib996:getbuffinfo(play,tab_buff[i],1)
            local time = lib996:getbuffinfo(play,tab_buff[i],2)

            lib996:sendmsg(actor, 1, '{"Msg":"<font color=\'#FFA500\'>ID:'..tab_buff[i]..'</font>","Type":1}')
            lib996:sendmsg(actor, 1, '{"Msg":"<font color=\'#FFA500\'>����:'..d..'</font>","Type":1}')
            lib996:sendmsg(actor, 1, '{"Msg":"<font color=\'#FFA500\'>ʱ��:'..time..'</font>","Type":1}')
            lib996:sendmsg(actor, 1, '{"Msg":"<font color=\'#FFA500\'>---------------------------------------</font>","Type":1}')
        end
    end
end

--����
function usercmd10116(actor, itype, attrid, attrvalue)
    -- print(lib996:attr(actor,1))
    if attrid then
        attrid = tonumber(attrid)
    end
    if attrvalue then
        attrvalue = tonumber(attrvalue)
    end

    if itype == "1" then --�޸�����
        if attrid then
            local attr = lib996:attr(actor,attrid)
            if attr then
                lib996:changehumnewvalue(actor,attrid,attrvalue,99999999)
                lib996:sendmsg(actor, 1, '{"Msg":"<font color=\'#ff0000\'>�޸ĳɹ�</font>","Type":1}')
            else
                lib996:sendmsg(actor, 1, '{"Msg":"<font color=\'#ff0000\'>�޸�ʧ�ܣ����Բ�����</font>","Type":1}')
            end
        else
            lib996:sendmsg(actor, 1, '{"Msg":"<font color=\'#ff0000\'>����������id</font>","Type":1}')
        end
    end
end


