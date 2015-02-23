.class public Landroid/oppoutils/OppoUtils;
.super Ljava/lang/Object;
.source "OppoUtils.java"


# static fields
.field private static final MAX_CPU_BOOST_TIME:I = 0x4c4b40

.field static final START_CPU_BOOST:I = 0x1

.field static final STOP_CPU_BOOST:I = 0x2

.field private static TAG:Ljava/lang/String;

.field private static endTime:J

.field private static mCpuBoostHandler:Landroid/os/Handler;

.field private static mHiddenPidList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mHiddenSysAppArray:[Ljava/lang/String;

.field private static final mHiddenSysAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mHiddenSysProcessArray:[Ljava/lang/String;

.field private static final mHiddenSysProcessList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mSpecialAppArr:[Ljava/lang/String;

.field private static final mSpecialAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mOppoUtilsReceiver:Landroid/content/BroadcastReceiver;

.field mOppoUtilsTmpReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 39
    const-string v0, "RUTILS"

    sput-object v0, Landroid/oppoutils/OppoUtils;->TAG:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/oppoutils/OppoUtils;->mHiddenPidList:Ljava/util/ArrayList;

    .line 41
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.oppo.c2u"

    aput-object v1, v0, v3

    const-string/jumbo v1, "ppo.findmyphone"

    aput-object v1, v0, v4

    const-string v1, "com.oppo.market"

    aput-object v1, v0, v5

    const-string v1, "com.oppo.usercenter"

    aput-object v1, v0, v6

    const-string v1, "com.oppo.tribune"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "po.speechassist"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.nearme.gamecenter"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.nearme.note"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.nearme.sync"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, ".SpeechMediaButtonService"

    aput-object v2, v0, v1

    sput-object v0, Landroid/oppoutils/OppoUtils;->mHiddenSysProcessArray:[Ljava/lang/String;

    .line 54
    const/16 v0, 0x1e

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.nearme.gamecenter"

    aput-object v1, v0, v3

    const-string v1, "com.nearme.note"

    aput-object v1, v0, v4

    const-string v1, "com.nearme.sync"

    aput-object v1, v0, v5

    const-string v1, "com.oppo.usercenter"

    aput-object v1, v0, v6

    const-string v1, "com.oppo.market"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.oppo.c2u"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.oppo.findmyphone"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.oppo.service.account"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.oppo.reader"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.oppo.community"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.oppo.ubeauty"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.oppo.speechassist"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.oppo.weather"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.oppo.tribune"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "com.oppo.weather.locationservice"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "com.iflytek.speechservice"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, ".SpeechMediaButtonService"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "com.tencent.mobileqq"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "com.taobao.taobao"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "com.tenpay.oppo"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "com.qiyi.video"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "com.netease.newsreader.activity"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "com.mt.mtxx.mtxx"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "com.youdao.dict"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "com.baidu.BaiduMap"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "com.baidu.searchbox_oppo"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "com.tmall.wireless"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "com.dianping.v1"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "cn.emoney.level2"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "com.oppo.widget.smallweather"

    aput-object v2, v0, v1

    sput-object v0, Landroid/oppoutils/OppoUtils;->mHiddenSysAppArray:[Ljava/lang/String;

    .line 90
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "com.android.mms"

    aput-object v1, v0, v3

    sput-object v0, Landroid/oppoutils/OppoUtils;->mSpecialAppArr:[Ljava/lang/String;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Landroid/oppoutils/OppoUtils;->mHiddenSysAppArray:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroid/oppoutils/OppoUtils;->mHiddenSysAppList:Ljava/util/ArrayList;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Landroid/oppoutils/OppoUtils;->mSpecialAppArr:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroid/oppoutils/OppoUtils;->mSpecialAppList:Ljava/util/ArrayList;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Landroid/oppoutils/OppoUtils;->mHiddenSysProcessArray:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroid/oppoutils/OppoUtils;->mHiddenSysProcessList:Ljava/util/ArrayList;

    .line 268
    const-wide/16 v0, 0x0

    sput-wide v0, Landroid/oppoutils/OppoUtils;->endTime:J

    .line 296
    const/4 v0, 0x0

    sput-object v0, Landroid/oppoutils/OppoUtils;->mCpuBoostHandler:Landroid/os/Handler;

    .line 298
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 299
    new-instance v0, Landroid/oppoutils/OppoUtils$3;

    invoke-direct {v0}, Landroid/oppoutils/OppoUtils$3;-><init>()V

    sput-object v0, Landroid/oppoutils/OppoUtils;->mCpuBoostHandler:Landroid/os/Handler;

    .line 318
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Landroid/oppoutils/OppoUtils$1;

    invoke-direct {v0, p0}, Landroid/oppoutils/OppoUtils$1;-><init>(Landroid/oppoutils/OppoUtils;)V

    iput-object v0, p0, Landroid/oppoutils/OppoUtils;->mOppoUtilsTmpReceiver:Landroid/content/BroadcastReceiver;

    .line 146
    new-instance v0, Landroid/oppoutils/OppoUtils$2;

    invoke-direct {v0, p0}, Landroid/oppoutils/OppoUtils$2;-><init>(Landroid/oppoutils/OppoUtils;)V

    iput-object v0, p0, Landroid/oppoutils/OppoUtils;->mOppoUtilsReceiver:Landroid/content/BroadcastReceiver;

    .line 182
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v5, Landroid/oppoutils/OppoUtils$1;

    invoke-direct {v5, p0}, Landroid/oppoutils/OppoUtils$1;-><init>(Landroid/oppoutils/OppoUtils;)V

    iput-object v5, p0, Landroid/oppoutils/OppoUtils;->mOppoUtilsTmpReceiver:Landroid/content/BroadcastReceiver;

    .line 146
    new-instance v5, Landroid/oppoutils/OppoUtils$2;

    invoke-direct {v5, p0}, Landroid/oppoutils/OppoUtils$2;-><init>(Landroid/oppoutils/OppoUtils;)V

    iput-object v5, p0, Landroid/oppoutils/OppoUtils;->mOppoUtilsReceiver:Landroid/content/BroadcastReceiver;

    .line 184
    sget-object v5, Landroid/oppoutils/OppoUtils;->TAG:Ljava/lang/String;

    const-string v6, "constructor with args is called"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 186
    .local v3, rutils_filter:Landroid/content/IntentFilter;
    const-string v5, "RUTILS_RECEIVER_CHMOD"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 188
    iget-object v5, p0, Landroid/oppoutils/OppoUtils;->mOppoUtilsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v4

    .line 191
    .local v4, rutils_intent:Landroid/content/Intent;
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 192
    .local v0, cmcc_filter:Landroid/content/IntentFilter;
    const-string/jumbo v5, "oppo.specialaction.CMCC_OFF"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 193
    const-string/jumbo v5, "oppo.specialaction.CMCC_ON"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 194
    const-string v5, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 196
    iget-object v5, p0, Landroid/oppoutils/OppoUtils;->mOppoUtilsTmpReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 199
    .local v1, cmcc_intent:Landroid/content/Intent;
    const-string/jumbo v5, "rutilsdaemon"

    invoke-static {v5}, Landroid/oppoutils/OppoUtils;->GetPidByName(Ljava/lang/String;)I

    move-result v2

    .line 200
    .local v2, pid:I
    const/4 v5, -0x1

    if-ne v2, v5, :cond_1

    .line 201
    sget-object v5, Landroid/oppoutils/OppoUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "process not exist."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    invoke-static {v2}, Landroid/oppoutils/OppoUtils;->HideProcessByPid(I)I

    move-result v5

    if-eqz v5, :cond_0

    .line 203
    sget-object v5, Landroid/oppoutils/OppoUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "process "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " hide failed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static Chmod(Ljava/lang/String;I)I
    .locals 3
    .parameter "path"
    .parameter "mod"

    .prologue
    .line 244
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_0

    .line 245
    sget-object v0, Landroid/oppoutils/OppoUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Permission Denied ~"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const/4 v0, -0x1

    .line 248
    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Landroid/oppoutils/OppoUtils;->NativeChmod(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static Chmod(Ljava/lang/String;ILjava/lang/String;)I
    .locals 3
    .parameter "path"
    .parameter "mod"
    .parameter "packageName"

    .prologue
    .line 253
    sget-object v0, Landroid/oppoutils/OppoUtils;->mSpecialAppList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    sget-object v0, Landroid/oppoutils/OppoUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Permission Denied ~"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const/4 v0, -0x1

    .line 257
    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Landroid/oppoutils/OppoUtils;->NativeChmod(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static CustPartConfigItemClrFlagOps(ZI)I
    .locals 1
    .parameter "read"
    .parameter "source"

    .prologue
    .line 349
    invoke-static {p0, p1}, Landroid/oppoutils/OppoUtils;->NativeCustPartConfigItemClrFlagOps(ZI)I

    move-result v0

    return v0
.end method

.method public static CustPartConfigItemUsbOps(ZII)I
    .locals 1
    .parameter "read"
    .parameter "value"
    .parameter "voter"

    .prologue
    .line 345
    invoke-static {p0, p1, p2}, Landroid/oppoutils/OppoUtils;->NativeCustPartConfigItemUsbOps(ZII)I

    move-result v0

    return v0
.end method

.method public static CustPartCustPartAlsPsCalibratePsSendPulse()[I
    .locals 1

    .prologue
    .line 382
    invoke-static {}, Landroid/oppoutils/OppoUtils;->NativeCustPartCustPartAlsPsCalibratePsSendPulse()[I

    move-result-object v0

    return-object v0
.end method

.method public static CustPartCustPartAlsPsGetPsSwitchStatus()I
    .locals 1

    .prologue
    .line 403
    invoke-static {}, Landroid/oppoutils/OppoUtils;->NativeCustPartCustPartAlsPsGetPsSwitchStatus()I

    move-result v0

    return v0
.end method

.method public static CustPartCustPartAlsPsRecoverPsSendPulse()I
    .locals 1

    .prologue
    .line 387
    invoke-static {}, Landroid/oppoutils/OppoUtils;->NativeCustPartCustPartAlsPsRecoverPsSendPulse()I

    move-result v0

    return v0
.end method

.method public static CustPartCustPartAlsPsRecoverPsSwitch()I
    .locals 1

    .prologue
    .line 399
    invoke-static {}, Landroid/oppoutils/OppoUtils;->NativeCustPartCustPartAlsPsRecoverPsSwitch()I

    move-result v0

    return v0
.end method

.method public static CustPartCustPartAlsPsSetPsSwitch()I
    .locals 1

    .prologue
    .line 394
    invoke-static {}, Landroid/oppoutils/OppoUtils;->NativeCustPartCustPartAlsPsSetPsSwitch()I

    move-result v0

    return v0
.end method

.method public static CustPartCustPartCalibrateGsensorData()[I
    .locals 1

    .prologue
    .line 357
    invoke-static {}, Landroid/oppoutils/OppoUtils;->NativeCustPartCustPartCalibrateGsensorData()[I

    move-result-object v0

    return-object v0
.end method

.method public static CustPartCustPartClearRebootNumber()I
    .locals 1

    .prologue
    .line 372
    invoke-static {}, Landroid/oppoutils/OppoUtils;->NativeCustPartCustPartClearRebootNumber()I

    move-result v0

    return v0
.end method

.method public static CustPartCustPartGetMcpId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 353
    invoke-static {}, Landroid/oppoutils/OppoUtils;->NativeCustPartCustPartGetMcpId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static CustPartCustPartGetRebootNumber()I
    .locals 1

    .prologue
    .line 367
    invoke-static {}, Landroid/oppoutils/OppoUtils;->NativeCustPartCustPartGetRebootNumber()I

    move-result v0

    return v0
.end method

.method public static CustPartCustPartGetRebootReason()I
    .locals 1

    .prologue
    .line 377
    invoke-static {}, Landroid/oppoutils/OppoUtils;->NativeCustPartCustPartGetRebootReason()I

    move-result v0

    return v0
.end method

.method public static CustPartCustPartRecoverGsensorData()I
    .locals 1

    .prologue
    .line 362
    invoke-static {}, Landroid/oppoutils/OppoUtils;->NativeCustPartCustPartRecoverGsensorData()I

    move-result v0

    return v0
.end method

.method public static GetPidByName(Ljava/lang/String;)I
    .locals 1
    .parameter "processName"

    .prologue
    .line 261
    invoke-static {p0}, Landroid/oppoutils/OppoUtils;->NativeGetPidByName(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static HideProcessByPid(I)I
    .locals 1
    .parameter "pid"

    .prologue
    .line 336
    invoke-static {p0}, Landroid/oppoutils/OppoUtils;->NativeHideProcessByPid(I)I

    move-result v0

    return v0
.end method

.method public static native NativeChmod(Ljava/lang/String;I)I
.end method

.method public static native NativeCpuBoost(Z)V
.end method

.method public static native NativeCustPartConfigItemClrFlagOps(ZI)I
.end method

.method public static native NativeCustPartConfigItemUsbOps(ZII)I
.end method

.method public static native NativeCustPartCustPartAlsPsCalibratePsSendPulse()[I
.end method

.method public static native NativeCustPartCustPartAlsPsGetPsSwitchStatus()I
.end method

.method public static native NativeCustPartCustPartAlsPsRecoverPsSendPulse()I
.end method

.method public static native NativeCustPartCustPartAlsPsRecoverPsSwitch()I
.end method

.method public static native NativeCustPartCustPartAlsPsSetPsSwitch()I
.end method

.method public static native NativeCustPartCustPartCalibrateGsensorData()[I
.end method

.method public static native NativeCustPartCustPartClearRebootNumber()I
.end method

.method public static native NativeCustPartCustPartGetMcpId()Ljava/lang/String;
.end method

.method public static native NativeCustPartCustPartGetRebootNumber()I
.end method

.method public static native NativeCustPartCustPartGetRebootReason()I
.end method

.method public static native NativeCustPartCustPartRecoverGsensorData()I
.end method

.method public static native NativeGetPidByName(Ljava/lang/String;)I
.end method

.method public static native NativeHideProcessByPid(I)I
.end method

.method public static native NativeSetSystemProperties(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native NativeUnHideProcessByPid(I)I
.end method

.method public static SetSystemPropertiesString(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 328
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 329
    :cond_0
    const/4 v0, -0x1

    .line 331
    :goto_0
    return v0

    :cond_1
    invoke-static {p0, p1}, Landroid/oppoutils/OppoUtils;->NativeSetSystemProperties(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static SetSystemPropertiesStringInt(Ljava/lang/String;I)I
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 322
    if-nez p0, :cond_0

    .line 323
    const/4 v0, -0x1

    .line 325
    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/oppoutils/OppoUtils;->NativeSetSystemProperties(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static UnHideProcessByPid(I)I
    .locals 1
    .parameter "pid"

    .prologue
    .line 340
    invoke-static {p0}, Landroid/oppoutils/OppoUtils;->NativeUnHideProcessByPid(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Landroid/oppoutils/OppoUtils;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Landroid/oppoutils/OppoUtils;->mHiddenSysAppList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Landroid/oppoutils/OppoUtils;->mHiddenSysProcessList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Ljava/util/ArrayList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    invoke-static {p0}, Landroid/oppoutils/OppoUtils;->hideProcessList(Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Landroid/oppoutils/OppoUtils;->mHiddenPidList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Ljava/util/ArrayList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    invoke-static {p0}, Landroid/oppoutils/OppoUtils;->unhideProcessList(Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method static synthetic access$600()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Landroid/oppoutils/OppoUtils;->mCpuBoostHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700()J
    .locals 2

    .prologue
    .line 37
    sget-wide v0, Landroid/oppoutils/OppoUtils;->endTime:J

    return-wide v0
.end method

.method public static cpuBoost(I)V
    .locals 7
    .parameter "duration"

    .prologue
    const/4 v6, 0x1

    .line 276
    sget-object v4, Landroid/oppoutils/OppoUtils;->mCpuBoostHandler:Landroid/os/Handler;

    if-nez v4, :cond_1

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    if-lez p0, :cond_2

    const v4, 0x4c4b40

    if-le p0, v4, :cond_3

    .line 280
    :cond_2
    sget-object v4, Landroid/oppoutils/OppoUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CPU_BOOST Invalid boost duration: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 284
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 285
    .local v2, now:J
    div-int/lit16 v4, p0, 0x3e8

    int-to-long v4, v4

    add-long v0, v2, v4

    .line 286
    .local v0, newEndtime:J
    sget-wide v4, Landroid/oppoutils/OppoUtils;->endTime:J

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    .line 287
    sput-wide v0, Landroid/oppoutils/OppoUtils;->endTime:J

    .line 289
    sget-object v4, Landroid/oppoutils/OppoUtils;->mCpuBoostHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 290
    sget-object v4, Landroid/oppoutils/OppoUtils;->mCpuBoostHandler:Landroid/os/Handler;

    sget-object v5, Landroid/oppoutils/OppoUtils;->mCpuBoostHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private static hideProcessList(Ljava/util/ArrayList;)I
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 209
    .local p0, processNameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 210
    .local v2, processName:Ljava/lang/String;
    invoke-static {v2}, Landroid/oppoutils/OppoUtils;->GetPidByName(Ljava/lang/String;)I

    move-result v1

    .line 211
    .local v1, pid:I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 212
    sget-object v3, Landroid/oppoutils/OppoUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "process not exist."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 215
    :cond_0
    invoke-static {v1}, Landroid/oppoutils/OppoUtils;->HideProcessByPid(I)I

    move-result v3

    if-nez v3, :cond_1

    .line 216
    sget-object v3, Landroid/oppoutils/OppoUtils;->mHiddenPidList:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 218
    :cond_1
    sget-object v3, Landroid/oppoutils/OppoUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "process "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " hide failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 222
    .end local v1           #pid:I
    .end local v2           #processName:Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    return v3
.end method

.method public static isCmccOperator()Z
    .locals 1

    .prologue
    .line 238
    const/4 v0, 0x1

    return v0
.end method

.method public static isCmccVersion()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 234
    const-string/jumbo v1, "persist.oppo.cmccversion"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static unhideProcessList(Ljava/util/ArrayList;)I
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 225
    .local p0, processIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 226
    .local v1, pid:I
    invoke-static {v1}, Landroid/oppoutils/OppoUtils;->UnHideProcessByPid(I)I

    move-result v2

    if-eqz v2, :cond_0

    .line 227
    sget-object v2, Landroid/oppoutils/OppoUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "process "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " unhide failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 230
    .end local v1           #pid:I
    :cond_1
    const/4 v2, 0x0

    return v2
.end method
