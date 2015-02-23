.class Landroid/oppoutils/OppoUtils$1;
.super Landroid/content/BroadcastReceiver;
.source "OppoUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/oppoutils/OppoUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/oppoutils/OppoUtils;


# direct methods
.method constructor <init>(Landroid/oppoutils/OppoUtils;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Landroid/oppoutils/OppoUtils$1;->this$0:Landroid/oppoutils/OppoUtils;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 100
    .local v3, pm:Landroid/content/pm/PackageManager;
    if-nez v3, :cond_1

    .line 101
    invoke-static {}, Landroid/oppoutils/OppoUtils;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not ready or has been crashed !"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "oppo.specialaction.CMCC_ON"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 105
    invoke-static {}, Landroid/oppoutils/OppoUtils;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "oppo.specialaction.CMCC_ON msg received"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const-string/jumbo v4, "persist.oppo.cmccversion"

    invoke-static {v4, v6}, Landroid/oppoutils/OppoUtils;->SetSystemPropertiesStringInt(Ljava/lang/String;I)I

    .line 108
    invoke-static {}, Landroid/oppoutils/OppoUtils;->access$100()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_1

    .line 113
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "oppo.intent.action.ADDAPP_TO_VISTORMODE_OR_PRIVACYZONE"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 114
    .local v1, in:Landroid/content/Intent;
    const-string v4, "addflag"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 115
    const-string/jumbo v4, "pkgnames"

    invoke-static {}, Landroid/oppoutils/OppoUtils;->access$100()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 116
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 118
    invoke-static {}, Landroid/oppoutils/OppoUtils;->access$200()Ljava/util/ArrayList;

    move-result-object v4

    #calls: Landroid/oppoutils/OppoUtils;->hideProcessList(Ljava/util/ArrayList;)I
    invoke-static {v4}, Landroid/oppoutils/OppoUtils;->access$300(Ljava/util/ArrayList;)I

    goto :goto_0

    .line 119
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #in:Landroid/content/Intent;
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "oppo.specialaction.CMCC_OFF"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 120
    invoke-static {}, Landroid/oppoutils/OppoUtils;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "oppo.specialaction.CMCC_OFF msg received"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const-string/jumbo v4, "persist.oppo.cmccversion"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/oppoutils/OppoUtils;->SetSystemPropertiesStringInt(Ljava/lang/String;I)I

    .line 123
    invoke-static {}, Landroid/oppoutils/OppoUtils;->access$100()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 126
    .local v2, packageName:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "oppo.intent.action.ADDAPP_TO_VISTORMODE_OR_PRIVACYZONE"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 127
    .restart local v1       #in:Landroid/content/Intent;
    const-string v4, "addflag"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 128
    const-string/jumbo v4, "packagename"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2

    .line 131
    .end local v1           #in:Landroid/content/Intent;
    .end local v2           #packageName:Ljava/lang/String;
    :cond_4
    invoke-static {}, Landroid/oppoutils/OppoUtils;->access$400()Ljava/util/ArrayList;

    move-result-object v4

    #calls: Landroid/oppoutils/OppoUtils;->unhideProcessList(Ljava/util/ArrayList;)I
    invoke-static {v4}, Landroid/oppoutils/OppoUtils;->access$500(Ljava/util/ArrayList;)I

    goto/16 :goto_0

    .line 133
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 134
    const-string/jumbo v4, "persist.oppo.cmccversion"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v6, :cond_0

    .line 135
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "oppo.intent.action.ADDAPP_TO_VISTORMODE_OR_PRIVACYZONE"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 136
    .restart local v1       #in:Landroid/content/Intent;
    const-string v4, "addflag"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 137
    const-string/jumbo v4, "pkgnames"

    invoke-static {}, Landroid/oppoutils/OppoUtils;->access$100()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 138
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
