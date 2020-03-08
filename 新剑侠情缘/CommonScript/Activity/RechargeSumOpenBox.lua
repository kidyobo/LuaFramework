if MODULE_GAMECLIENT then
	Activity.RechargeSumOpenBox = Activity.RechargeSumOpenBox or {}
end
local tbAct = MODULE_GAMESERVER and Activity:GetClass("RechargeSumOpenBox") or Activity.RechargeSumOpenBox

tbAct.JOIN_LEVEL = 20

tbAct.MAIL_TITLE  = "早春福禄宝箱"; --邮件标题
tbAct.MAIL_TEXT = [[
		小楼一夜听春雨，深巷明朝卖杏花。值此佳期，特赠大侠福禄宝箱，内含[FFFE0D]6层超值元宝奖励[-]。开启[FFFE0D]全部六层宝箱更可获得称号奖励[-]。大侠可通过[FFFE0D]充值[-]获得对应钥匙，开启宝箱，领取对应奖励：
		6元——第一层钥匙
		30元——第二层钥匙
		98元——第三层钥匙
		198元——第四层钥匙
		328元——第五层钥匙
		648元——第六层钥匙
		大侠请注意，每一档充值只能获得对应的[FFFE0D]一把钥匙[-]，获得对应层数奖励，奖励无法重复领取。而且[FFFE0D]未领取第一层奖励将无法直接领取第二层奖励[-]，以此类推。
		注：由于充值存在延迟，请大侠等待[FFFE0D]充值到账后[-]再继续充值，避免由于延迟无法获得宝箱钥匙。
		]];

tbAct.tbRechargeGetKeyItem = { --每档充值给的道具, 从小往大
	[1] 	= 9961; --6元对应key 道具id
	[2] 	= 9962;
	[3] 	= 9963;
	[4] 	= 9964;
	[5] 	= 9965;
	[6] 	= 9966;
}
tbAct.nOpenAllBoxRedBagKey = 145; --打开所有箱子对应的红包key
tbAct.szOpenAllNotifyMsg = "「%s」打开了所有层返利宝箱，额外获得了[%s]<%s>[-]！";
tbAct.tbRechargeItemBoxAwardSetting = {
	[9958] = { --箱子的道具id
		{ {"Gold", 128 } }; --箱子第一层奖励
		{ {"Gold", 428 } };
		{ {"Gold", 1280 } };
		{ {"Gold", 2180 } };
		{ {"Gold", 3480 } };
		{ {"Gold", 6680 }, {"item", 10494, 1}};
	};
	[9959] = {
		{ {"Gold", 188 } }; --箱子第一层奖励
		{ {"Gold", 688 } };
		{ {"Gold", 1980 } };
		{ {"Gold", 2880 } };
		{ {"Gold", 4880 } };
		{ {"Gold", 6680 }, {"item", 10494, 1}};
	};
	[9960] = {
		{ {"Gold", 268 } }; --箱子第一层奖励
		{ {"Gold", 1280 } };
		{ {"Gold", 2980 } };
		{ {"Gold", 3980 } };
		{ {"Gold", 6580 } };
		{ {"Gold", 6680 }, {"item", 10494, 1}};
	};
	[10246] = {
		{ {"Gold", 298 } }; --箱子第一层奖励
		{ {"Gold", 1380 } };
		{ {"Gold", 3098 } };
		{ {"Gold", 4098 } };
		{ {"Gold", 6680 } };
		{ {"Gold", 6680 }, {"item", 10494, 1}};
	};
	[10247] = {
		{ {"Gold", 298 } }; --箱子第一层奖励
		{ {"Gold", 1380 } };
		{ {"Gold", 3298 } };
		{ {"Gold", 4598 } };
		{ {"Gold", 6880 } };
		{ {"Gold", 7280 }, {"item", 10494, 1}};
	};
	[10493] = {
		{ {"Gold", 298 } }; --箱子第一层奖励
		{ {"Gold", 1380 } };
		{ {"Gold", 3698 } };
		{ {"Gold", 4998 } };
		{ {"Gold", 7280 } };
		{ {"Gold", 8280 }, {"item", 10494, 1}};
	};
}

tbAct.tbRechargeItemBoxTipSetting = {
	[9958] = { --箱子的道具id
		"6元       128元宝  ";
		"30元     428元宝  ";
		"98元     1280元宝";
		"198元   2180元宝";
		"328元   3480元宝";
		"648元   6680元宝";
	};
	[9959] = {
		"6元       188元宝  ";
		"30元     688元宝  ";
		"98元     1980元宝";
		"198元   2880元宝";
		"328元   4880元宝";
		"648元   6680元宝";	
	};
	[9960] = {
		"6元       268元宝  ";
		"30元     1280元宝";
		"98元     2980元宝";
		"198元   3980元宝";
		"328元   6580元宝";
		"648元   6680元宝";		
	};
	[10246] = {
		"6元       298元宝  ";
		"30元     1380元宝";
		"98元     3098元宝";
		"198元   4098元宝";
		"328元   6680元宝";
		"648元   6680元宝";		
	};
	[10247] = {
		"6元       298元宝  ";
		"30元     1380元宝";
		"98元     3298元宝";
		"198元   4598元宝";
		"328元   6880元宝";
		"648元   7280元宝";		
	};
	[10493] = {
		"6元       298元宝  ";
		"30元     1380元宝";
		"98元     3698元宝";
		"198元   4998元宝";
		"328元   7280元宝";
		"648元   8280元宝";		
	};
};


function tbAct:GetKeyOpenLevel( nItemKey )
	local nGroup ;
	for k,v in pairs(self.tbRechargeGetKeyItem) do
		if nItemKey == v then
			nGroup = k;
		end
	end
	return nGroup
end