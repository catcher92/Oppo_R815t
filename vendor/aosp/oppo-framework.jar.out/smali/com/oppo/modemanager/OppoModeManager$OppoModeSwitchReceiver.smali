.class Lcom/oppo/modemanager/OppoModeManager$OppoModeSwitchReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OppoModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/modemanager/OppoModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OppoModeSwitchReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/modemanager/OppoModeManager;


# direct methods
.method private constructor <init>(Lcom/oppo/modemanager/OppoModeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/oppo/modemanager/OppoModeManager$OppoModeSwitchReceiver;->this$0:Lcom/oppo/modemanager/OppoModeManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/modemanager/OppoModeManager;Lcom/oppo/modemanager/OppoModeManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/oppo/modemanager/OppoModeManager$OppoModeSwitchReceiver;-><init>(Lcom/oppo/modemanager/OppoModeManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 85
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.OPPO_MODE_SWITCH"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 86
    const-string v1, "OppoModeManager"

    const-string v2, "OppoModeManager.ACTION_OPPO_MODE_SWITCH is receive!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const-string v1, "mode_extra"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, actionExtra:Ljava/lang/String;
    const-string v1, "mode_change"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    const-string v1, "1"

    const-string v2, "persist.oppo.cmccversion"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    iget-object v1, p0, Lcom/oppo/modemanager/OppoModeManager$OppoModeSwitchReceiver;->this$0:Lcom/oppo/modemanager/OppoModeManager;

    #calls: Lcom/oppo/modemanager/OppoModeManager;->changeOppoMode()V
    invoke-static {v1}, Lcom/oppo/modemanager/OppoModeManager;->access$100(Lcom/oppo/modemanager/OppoModeManager;)V

    .line 117
    .end local v0           #actionExtra:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 94
    .restart local v0       #actionExtra:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/oppo/modemanager/OppoModeManager$OppoModeSwitchReceiver;->this$0:Lcom/oppo/modemanager/OppoModeManager;

    #calls: Lcom/oppo/modemanager/OppoModeManager;->changeCmccMode()V
    invoke-static {v1}, Lcom/oppo/modemanager/OppoModeManager;->access$200(Lcom/oppo/modemanager/OppoModeManager;)V

    goto :goto_0

    .line 97
    .end local v0           #actionExtra:Ljava/lang/String;
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.NEARME_MARKET_SHOW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 98
    iget-object v1, p0, Lcom/oppo/modemanager/OppoModeManager$OppoModeSwitchReceiver;->this$0:Lcom/oppo/modemanager/OppoModeManager;

    const-string v2, "com.oppo.market"

    const/4 v3, 0x1

    #calls: Lcom/oppo/modemanager/OppoModeManager;->setAppEnable(Ljava/lang/String;I)V
    invoke-static {v1, v2, v3}, Lcom/oppo/modemanager/OppoModeManager;->access$300(Lcom/oppo/modemanager/OppoModeManager;Ljava/lang/String;I)V

    goto :goto_0

    .line 99
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.OTHER_APP_SHOW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 100
    iget-object v1, p0, Lcom/oppo/modemanager/OppoModeManager$OppoModeSwitchReceiver;->this$0:Lcom/oppo/modemanager/OppoModeManager;

    #calls: Lcom/oppo/modemanager/OppoModeManager;->changeOppoMode()V
    invoke-static {v1}, Lcom/oppo/modemanager/OppoModeManager;->access$100(Lcom/oppo/modemanager/OppoModeManager;)V

    goto :goto_0

    .line 101
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/oppo/modemanager/OppoModeManager$OppoModeSwitchReceiver;->this$0:Lcom/oppo/modemanager/OppoModeManager;

    const/4 v2, 0x0

    #setter for: Lcom/oppo/modemanager/OppoModeManager;->mCurrentMode:I
    invoke-static {v1, v2}, Lcom/oppo/modemanager/OppoModeManager;->access$402(Lcom/oppo/modemanager/OppoModeManager;I)I

    .line 105
    iget-object v1, p0, Lcom/oppo/modemanager/OppoModeManager$OppoModeSwitchReceiver;->this$0:Lcom/oppo/modemanager/OppoModeManager;

    #calls: Lcom/oppo/modemanager/OppoModeManager;->changeCmccMode()V
    invoke-static {v1}, Lcom/oppo/modemanager/OppoModeManager;->access$200(Lcom/oppo/modemanager/OppoModeManager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 107
    :catch_0
    move-exception v1

    goto :goto_0
.end method
