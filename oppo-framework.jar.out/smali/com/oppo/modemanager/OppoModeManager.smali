.class public Lcom/oppo/modemanager/OppoModeManager;
.super Ljava/lang/Object;
.source "OppoModeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/modemanager/OppoModeManager$OppoModeSwitchReceiver;
    }
.end annotation


# static fields
.field public static final ACTION_BOOT_COMPLETED:Ljava/lang/String; = "android.intent.action.BOOT_COMPLETED"

.field public static final ACTION_EXTRA_STRING:Ljava/lang/String; = "mode_extra"

.field public static final ACTION_NEARME_MARKET_SHOW:Ljava/lang/String; = "android.intent.action.NEARME_MARKET_SHOW"

.field public static final ACTION_OPPO_MODE_SWITCH:Ljava/lang/String; = "android.intent.action.OPPO_MODE_SWITCH"

.field public static final ACTION_OTHER_APP_SHOW:Ljava/lang/String; = "android.intent.action.OTHER_APP_SHOW"

.field public static final CMCC_FEATRUE:Ljava/lang/String; = "oppo.cmcc.test"

.field public static final MODE_CHANGE:Ljava/lang/String; = "mode_change"

.field static final TAG:Ljava/lang/String; = "OppoModeManager"

.field private static mOppoModeManager:Lcom/oppo/modemanager/OppoModeManager;

.field public static userId:I


# instance fields
.field private mCmccMode:Lcom/oppo/modemanager/CmccMode;

.field private mContext:Landroid/content/Context;

.field private mCurrentMode:I

.field private mOppoModeSwitchReceiver:Lcom/oppo/modemanager/OppoModeManager$OppoModeSwitchReceiver;

.field private mPm:Landroid/content/pm/IPackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput v0, Lcom/oppo/modemanager/OppoModeManager;->userId:I

    .line 55
    const/4 v0, 0x0

    sput-object v0, Lcom/oppo/modemanager/OppoModeManager;->mOppoModeManager:Lcom/oppo/modemanager/OppoModeManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object v1, p0, Lcom/oppo/modemanager/OppoModeManager;->mContext:Landroid/content/Context;

    .line 53
    new-instance v0, Lcom/oppo/modemanager/CmccMode;

    invoke-direct {v0}, Lcom/oppo/modemanager/CmccMode;-><init>()V

    iput-object v0, p0, Lcom/oppo/modemanager/OppoModeManager;->mCmccMode:Lcom/oppo/modemanager/CmccMode;

    .line 54
    new-instance v0, Lcom/oppo/modemanager/OppoModeManager$OppoModeSwitchReceiver;

    invoke-direct {v0, p0, v1}, Lcom/oppo/modemanager/OppoModeManager$OppoModeSwitchReceiver;-><init>(Lcom/oppo/modemanager/OppoModeManager;Lcom/oppo/modemanager/OppoModeManager$1;)V

    iput-object v0, p0, Lcom/oppo/modemanager/OppoModeManager;->mOppoModeSwitchReceiver:Lcom/oppo/modemanager/OppoModeManager$OppoModeSwitchReceiver;

    .line 65
    iput-object p1, p0, Lcom/oppo/modemanager/OppoModeManager;->mContext:Landroid/content/Context;

    .line 66
    iget-object v0, p0, Lcom/oppo/modemanager/OppoModeManager;->mCmccMode:Lcom/oppo/modemanager/CmccMode;

    invoke-virtual {v0}, Lcom/oppo/modemanager/CmccMode;->init()V

    .line 67
    invoke-direct {p0}, Lcom/oppo/modemanager/OppoModeManager;->init()V

    .line 68
    return-void
.end method

.method static synthetic access$100(Lcom/oppo/modemanager/OppoModeManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/oppo/modemanager/OppoModeManager;->changeOppoMode()V

    return-void
.end method

.method static synthetic access$200(Lcom/oppo/modemanager/OppoModeManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/oppo/modemanager/OppoModeManager;->changeCmccMode()V

    return-void
.end method

.method static synthetic access$300(Lcom/oppo/modemanager/OppoModeManager;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/oppo/modemanager/OppoModeManager;->setAppEnable(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$402(Lcom/oppo/modemanager/OppoModeManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput p1, p0, Lcom/oppo/modemanager/OppoModeManager;->mCurrentMode:I

    return p1
.end method

.method static synthetic access$500(Lcom/oppo/modemanager/OppoModeManager;)Lcom/oppo/modemanager/CmccMode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/oppo/modemanager/OppoModeManager;->mCmccMode:Lcom/oppo/modemanager/CmccMode;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oppo/modemanager/OppoModeManager;Ljava/util/ArrayList;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/oppo/modemanager/OppoModeManager;->setAppListEnabledSetting(Ljava/util/ArrayList;Z)V

    return-void
.end method

.method private changeCmccMode()V
    .locals 3

    .prologue
    .line 136
    iget v0, p0, Lcom/oppo/modemanager/OppoModeManager;->mCurrentMode:I

    if-nez v0, :cond_0

    .line 137
    const/4 v0, 0x1

    iput v0, p0, Lcom/oppo/modemanager/OppoModeManager;->mCurrentMode:I

    .line 138
    const-string v0, "OppoModeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeCmccMode mCurrentMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oppo/modemanager/OppoModeManager;->mCurrentMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const-string v0, "persist.oppo.cmccversion"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-direct {p0}, Lcom/oppo/modemanager/OppoModeManager;->setModeDisable()V

    .line 142
    :cond_0
    return-void
.end method

.method private changeOppoMode()V
    .locals 3

    .prologue
    .line 124
    const/4 v0, 0x1

    iget v1, p0, Lcom/oppo/modemanager/OppoModeManager;->mCurrentMode:I

    if-ne v0, v1, :cond_0

    .line 125
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/modemanager/OppoModeManager;->mCurrentMode:I

    .line 126
    const-string v0, "OppoModeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeOppoMode mCurrentMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oppo/modemanager/OppoModeManager;->mCurrentMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const-string v0, "persist.oppo.cmccversion"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-direct {p0}, Lcom/oppo/modemanager/OppoModeManager;->setModeEnable()V

    .line 130
    :cond_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/oppo/modemanager/OppoModeManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 58
    sget-object v0, Lcom/oppo/modemanager/OppoModeManager;->mOppoModeManager:Lcom/oppo/modemanager/OppoModeManager;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/oppo/modemanager/OppoModeManager;

    invoke-direct {v0, p0}, Lcom/oppo/modemanager/OppoModeManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oppo/modemanager/OppoModeManager;->mOppoModeManager:Lcom/oppo/modemanager/OppoModeManager;

    .line 61
    :cond_0
    sget-object v0, Lcom/oppo/modemanager/OppoModeManager;->mOppoModeManager:Lcom/oppo/modemanager/OppoModeManager;

    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 71
    const-string v1, "persist.oppo.cmccversion"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/oppo/modemanager/OppoModeManager;->mCurrentMode:I

    .line 72
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/modemanager/OppoModeManager;->mPm:Landroid/content/pm/IPackageManager;

    .line 73
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 74
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.OPPO_MODE_SWITCH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    const-string v1, "android.intent.action.NEARME_MARKET_SHOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    const-string v1, "android.intent.action.OTHER_APP_SHOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 77
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    iget-object v1, p0, Lcom/oppo/modemanager/OppoModeManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oppo/modemanager/OppoModeManager;->mOppoModeSwitchReceiver:Lcom/oppo/modemanager/OppoModeManager$OppoModeSwitchReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 79
    return-void
.end method

.method public static isCmccVersion()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 240
    const-string v1, "persist.oppo.cmccversion"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setAppDisable(Ljava/lang/String;I)V
    .locals 4
    .parameter "pkgName"
    .parameter "state"

    .prologue
    .line 195
    :try_start_0
    iget-object v1, p0, Lcom/oppo/modemanager/OppoModeManager;->mPm:Landroid/content/pm/IPackageManager;

    const/4 v2, 0x0

    sget v3, Lcom/oppo/modemanager/OppoModeManager;->userId:I

    invoke-interface {v1, p1, p2, v2, v3}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :goto_0
    return-void

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "OppoModeManager"

    const-string v2, "Error: Could not access the Package Manager.  Is the system running?"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setAppEnable(Ljava/lang/String;I)V
    .locals 4
    .parameter "pkgName"
    .parameter "state"

    .prologue
    .line 208
    :try_start_0
    iget-object v1, p0, Lcom/oppo/modemanager/OppoModeManager;->mPm:Landroid/content/pm/IPackageManager;

    const/4 v2, 0x0

    sget v3, Lcom/oppo/modemanager/OppoModeManager;->userId:I

    invoke-interface {v1, p1, p2, v2, v3}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :goto_0
    return-void

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "TAG"

    const-string v2, "Error: Could not access the Package Manager.  Is the system running?"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setAppListEnabledSetting(Ljava/util/ArrayList;Z)V
    .locals 7
    .parameter
    .parameter "enabled"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 221
    .local p1, pkgList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 237
    :cond_0
    return-void

    .line 225
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 226
    .local v3, pkgName:Ljava/lang/String;
    const/4 v2, 0x0

    .line 228
    .local v2, pkgInfo:Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v4, p0, Lcom/oppo/modemanager/OppoModeManager;->mPm:Landroid/content/pm/IPackageManager;

    const/4 v5, 0x0

    sget v6, Lcom/oppo/modemanager/OppoModeManager;->userId:I

    invoke-interface {v4, v3, v5, v6}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 233
    :goto_1
    if-eqz v2, :cond_2

    .line 234
    invoke-virtual {p0, v3, p2}, Lcom/oppo/modemanager/OppoModeManager;->setAppEnabledSetting(Ljava/lang/String;Z)V

    goto :goto_0

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, e:Landroid/os/RemoteException;
    const/4 v2, 0x0

    .line 231
    const-string v4, "TAG"

    const-string v5, "Error: Could not access the Package Manager.  Is the system running?"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setModeDisable()V
    .locals 2

    .prologue
    .line 164
    new-instance v0, Lcom/oppo/modemanager/OppoModeManager$1;

    const-string v1, "Mode"

    invoke-direct {v0, p0, v1}, Lcom/oppo/modemanager/OppoModeManager$1;-><init>(Lcom/oppo/modemanager/OppoModeManager;Ljava/lang/String;)V

    .line 170
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 171
    return-void
.end method

.method private setModeEnable()V
    .locals 2

    .prologue
    .line 179
    new-instance v0, Lcom/oppo/modemanager/OppoModeManager$2;

    const-string v1, "Mode"

    invoke-direct {v0, p0, v1}, Lcom/oppo/modemanager/OppoModeManager$2;-><init>(Lcom/oppo/modemanager/OppoModeManager;Ljava/lang/String;)V

    .line 185
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 186
    return-void
.end method


# virtual methods
.method public setAppEnabledSetting(Ljava/lang/String;Z)V
    .locals 1
    .parameter "pkgName"
    .parameter "enabled"

    .prologue
    .line 151
    if-eqz p2, :cond_0

    .line 152
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/oppo/modemanager/OppoModeManager;->setAppEnable(Ljava/lang/String;I)V

    .line 156
    :goto_0
    return-void

    .line 154
    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/oppo/modemanager/OppoModeManager;->setAppDisable(Ljava/lang/String;I)V

    goto :goto_0
.end method
