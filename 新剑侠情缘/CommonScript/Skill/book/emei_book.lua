
local tb    = {
    book_em_ldlh = --天舞宝轮
    { 
		--add_hitskill1={312,326,{{1,1},{10,10}}},
		add_hitskill2={313,327,{{1,1},{10,10}}},
		userdesc_101={{{1,50},{10,100}},{{1,15*1},{10,15*3}}},		--负面状态的描述，真实效果查看下面子技能
		skill_statetime={{{1,-1},{10,-1}}},	
    },
    book_em_ldlh_child2 = --天舞宝轮_子2   概率，技能ID，技能等级
    { 
		skill_randskill1={{{1,50},{10,50}},336,{{1,1},{10,10}}},	
		skill_randskill2={{{1,50},{10,50}},337,{{1,1},{10,10}}},	
		skill_randskill3={{{1,50},{10,50}},338,{{1,1},{10,10}}},	
		skill_randskill4={{{1,50},{10,50}},339,{{1,1},{10,10}}},	
		skill_randskill5={{{1,50},{10,50}},340,{{1,1},{10,10}}},	
    },
 
    book_em_ldlh_xr = --天舞宝轮_虚弱
    { 
		state_weak_attack={{{1,10},{10,55},{15,65},{20,85}},{{1,15*1},{10,15*1.5},{15,15*2},{20,15*3}}},
    },
    book_em_ldlh_hl = --天舞宝轮_混乱
    { 
		state_confuse_attack={{{1,10},{10,55},{15,65},{20,85}},{{1,15*1},{10,15*1.5},{15,15*1.5},{20,15*2.5}}},
    },
    book_em_ldlh_cm = --天舞宝轮_沉默
    { 
		state_silence_attack={{{1,10},{10,55},{15,65},{20,85}},{{1,15*1},{10,15*1.5},{15,15*1.5},{20,15*3}}},
    },
    book_em_ldlh_ch = --天舞宝轮_迟缓
    { 
		state_slowall_attack={{{1,10},{10,55},{15,65},{20,85}},{{1,15*1},{10,15*1.5},{15,15*2},{20,15*3}}},
    },
    book_em_ldlh_bd = --天舞宝轮_冰冻
    { 
		state_freeze_attack={{{1,10},{10,55},{15,65},{20,85}},{{1,15*1},{10,15*1.5},{15,15*2},{20,15*2.5}}},
    },
    book_em_qxps = --慈航普度
    { 
		addstartskill={306,316,{{1,1},{10,10}}},
		userdesc_000={316},
		skill_statetime={{{1,-1},{10,-1}}},		
    },
    book_em_qxps_child2 = --慈航普度_子2
    { 
		ignore_series_state={},		
		skill_statetime={{{1,15*5},{10,15*10}}},
    },
    book_em_xbwx = --白露凝霜
    { 
		add_hitskill1={308,321,{{1,1},{10,10}}},
		userdesc_000={321},
		skill_statetime={{{1,-1},{10,-1}}},	
    },
    book_em_xbwx_child = --白露凝霜_子
    { 
		attack_usebasedamage_p={{{1,20},{10,40}}},
		attack_waterdamage_v={
			[1]={{1,100*1},{10,300*1}},
			[3]={{1,100*1},{10,300*1}}
			},
		state_slowall_attack={{{1,10},{10,80}},{{1,15*1},{10,15*2}}},	
    },
	
    book_em_mid_ldlh = --中级天舞宝轮
    { 
		add_hitskill2={313,368,{{1,1},{10,10},{20,20}}},
		userdesc_101={{{1,50},{10,100},{20,100}},{{1,15*1},{10,15*3},{20,15*3}}},					--负面状态的描述，真实效果查看下面子技能
		deccdtime={312,{{1,0},{10,0},{11,15*1},{15,15*5}}},											--减天舞宝轮CD时间
		skill_statetime={{{1,-1},{10,-1}}},	
    },
    book_em_mid_ldlh_child = --天舞宝轮_子2   概率，技能ID，技能等级
    { 
		skill_randskill1={{{1,50},{10,50},{20,50}},336,{{1,1},{10,10},{20,20}}},	
		skill_randskill2={{{1,50},{10,50},{20,50}},337,{{1,1},{10,10},{20,20}}},	
		skill_randskill3={{{1,50},{10,50},{20,50}},338,{{1,1},{10,10},{20,20}}},	
		skill_randskill4={{{1,50},{10,50},{20,50}},339,{{1,1},{10,10},{20,20}}},	
		skill_randskill5={{{1,50},{10,50},{20,50}},340,{{1,1},{10,10},{20,20}}},	
    },
    book_em_mid_qxps = --中级慈航普度
    { 
		addstartskill={306,371,{{1,1},{10,10},{20,20}}},
		userdesc_000={371},
		deccdtime={306,{{1,0},{10,0},{11,15*1},{15,15*4}}},										--减慈航普度CD时间
		skill_statetime={{{1,-1},{10,-1}}},		
    },
    book_em_mid_qxps_child2 = --中级慈航普度_子2
    { 
		ignore_series_state={},		
		skill_statetime={{{1,15*5},{10,15*10},{15,15*12}}},
    },
	
    book_em_mid_xbwx = --中级白露凝霜
    { 
		add_hitskill1={308,373,{{1,1},{10,10},{20,20}}},
		add_usebasedmg_p1={308,{{1,0},{10,0},{11,10},{15,50}}},					--增加白露凝霜攻击力
		--userdesc_101={308,{{1,0},{10,0},{11,10},{15,50}}},						--描述用：增加白露凝霜攻击力		
		userdesc_000={373},
		skill_statetime={{{1,-1},{10,-1},{20,-1}}},	
    },
    book_em_mid_xbwx_child = --中级白露凝霜_子
    { 
		attack_usebasedamage_p={{{1,20},{10,40},{15,60}}},
		attack_waterdamage_v={
			[1]={{1,100*1},{10,300*1},{15,600*1}},
			[3]={{1,100*1},{10,300*1},{15,600*1}}
			},
		state_slowall_attack={{{1,10},{10,80},{15,85}},{{1,15*1},{10,15*2},{15,15*2}}},	
    },
    book_em_high_ldlh = --高级天舞宝轮
    { 
		add_hitskill2={313,377,{{1,1},{10,10},{15,15},{20,20}}},
		userdesc_101={{{1,50},{10,100},{20,100}},{{1,15*1},{10,15*3},{20,15*3}}},					--负面状态的描述，真实效果查看下面子技能
		deccdtime={312,{{1,0},{10,0},{11,15*1},{15,15*5},{16,15*5},{20,15*6}}},						--减天舞宝轮CD时间
		userdesc_000={377},
		skill_statetime={{{1,-1},{10,-1}}},	
    },
    book_em_high_ldlh_child = --高级天舞宝轮_子   概率，技能ID，技能等级
    { 
		skill_randskill1={{{1,50},{10,50},{15,50},{16,50},{20,50}},336,{{1,1},{10,10},{15,15},{16,20},{20,20}}},	
		skill_randskill2={{{1,50},{10,50},{15,50},{16,50},{20,50}},337,{{1,1},{10,10},{15,15},{16,20},{20,20}}},	
		skill_randskill3={{{1,50},{10,50},{15,50},{16,50},{20,50}},338,{{1,1},{10,10},{15,15},{16,20},{20,20}}},	
		skill_randskill4={{{1,50},{10,50},{15,50},{16,50},{20,50}},339,{{1,1},{10,10},{15,15},{16,20},{20,20}}},	
		skill_randskill5={{{1,50},{10,50},{15,50},{16,50},{20,50}},340,{{1,1},{10,10},{15,15},{16,20},{20,20}}},	
		defense_p={{{1,0},{15,0},{16,-50},{20,-120}}},
		skill_statetime={{{1,15*5},{15,15*5},{20,15*5}}},
    },
    book_em_high_qxps = --高级慈航普度
    { 
		addstartskill={306,379,{{1,1},{10,10},{15,15},{20,20}}},
		addstartskill2={379,380,{{1,1},{10,10},{15,15},{20,20}}},
		userdesc_000={380,379},
		deccdtime={306,{{1,0},{10,0},{11,15*1},{15,15*4},{20,15*4}}},						--减慈航普度CD时间
		skill_statetime={{{1,-1},{10,-1}}},		
    },
    book_em_high_qxps_child1 = --高级慈航普度_子2
    { 
		ignore_series_state={},	
		skill_statetime={{{1,15*5},{10,15*10},{15,15*12},{20,15*14}}},
    },
    book_em_high_qxps_child2 = --高级慈航普度_子2
    {
	 	dir_recover_life_pp={{{1,0},{15,0},{16,160},{20,800}},1},	--增加慈航普度回复效果	,瞬回数值略微降低,
    },
    book_em_high_xbwx = --高级白露凝霜
    { 
		add_hitskill1={308,382,{{1,1},{10,10},{20,20}}},
		add_usebasedmg_p1={308,{{1,0},{10,0},{11,10},{15,50},{20,50}}},					--增加白露凝霜攻击力
		add_deadlystrike_p1={308,{{1,0},{15,0},{16,2},{20,10}}},						--增加会心点数
		userdesc_000={382},
		skill_statetime={{{1,-1},{10,-1},{20,-1}}},	
    },
    book_em_high_xbwx_child = --高级白露凝霜_子
    { 
		attack_usebasedamage_p={{{1,20},{10,40},{15,60},{20,70}}},
		attack_waterdamage_v={
			[1]={{1,100*1},{10,300*1},{15,600*1},{20,800*1}},
			[3]={{1,100*1},{10,300*1},{15,600*1},{20,800*1}}
			},
		state_slowall_attack={{{1,10},{10,80},{15,85},{20,90}},{{1,15*1},{10,15*2},{15,15*2},{20,15*2.5}}},	
    },
}

FightSkill:AddMagicData(tb)