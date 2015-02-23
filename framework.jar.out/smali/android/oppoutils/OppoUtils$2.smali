.class Landroid/oppoutils/OppoUtils$2;
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
    .line 146
    iput-object p1, p0, Landroid/oppoutils/OppoUtils$2;->this$0:Landroid/oppoutils/OppoUtils;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    .line 149
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "RUTILS_RECEIVER_CHMOD"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 150
    invoke-static {}, Landroid/oppoutils/OppoUtils;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "RUTILS_RECEIVER_CHMOD msg received"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 153
    .local v0, bundle:Landroid/os/Bundle;
    const-string v5, "file_path"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 154
    .local v4, strFilePath:Ljava/lang/String;
    if-nez v4, :cond_1

    .line 155
    invoke-static {}, Landroid/oppoutils/OppoUtils;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not existed !"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v4           #strFilePath:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 158
    .restart local v0       #bundle:Landroid/os/Bundle;
    .restart local v4       #strFilePath:Ljava/lang/String;
    :cond_1
    const/16 v5, 0x1ff

    invoke-static {v4, v5}, Landroid/oppoutils/OppoUtils;->NativeChmod(Ljava/lang/String;I)I

    goto :goto_0

    .line 159
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v4           #strFilePath:Ljava/lang/String;
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.action.AMS_SYSTEM_READY"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 160
    invoke-static {}, Landroid/oppoutils/OppoUtils;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.action.AMS_SYSTEM_READY msg received"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 162
    .local v3, pm:Landroid/content/pm/PackageManager;
    if-nez v3, :cond_3

    .line 163
    invoke-static {}, Landroid/oppoutils/OppoUtils;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not ready or has been crashed !"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 166
    :cond_3
    const-string/jumbo v5, "persist.oppo.cmccversion"

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v7, :cond_0

    .line 167
    invoke-static {}, Landroid/oppoutils/OppoUtils;->access$100()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 170
    .local v2, packageName:Ljava/lang/String;
    invoke-static {}, Landroid/oppoutils/OppoUtils;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " \'s loginmode is setted "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
