# LLM与Minecraft的适配器

本项目提供了两个适配LLM与MC的接口：Start、Step。
主要使用Mineflayer库与MCServer通信，同时向LLM提供API接口。

# Start接口

Start接口负责创建MC中BOT角色，初始化BOT的位置、物品等，并加载Mineflayer插件，加载环境观察插件。
硬重启与软重启有少量区别。硬重启包括重新更换装备等。

加载的插件包括：
> (pathfinder);
> (tool);
> (collectBlock);
> (pvp);
> (minecraftHawkEye);

加载的观察数据能力有：
>  OnChat,
>  OnError,
>  Voxels,
>  Status,
>  Inventory,
>  OnSave,
>  Chests,
>  BlockRecords,
>  Skills

返回观察值。

# Step接口

在Step过程中，进行移动计算，即调用路径寻找库进行人物移动。

将接口传来的函数与代码进行eval运算，期间错误自处理，eval结束自处理禁用。

处理物品：桌子、箱子、铁锹等。

返回观察值。

# Stop接口

关闭bot。

# Pause接口

执行暂停命令。

