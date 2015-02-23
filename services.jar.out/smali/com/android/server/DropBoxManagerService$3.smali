.class Lcom/android/server/DropBoxManagerService$3;
.super Landroid/os/Handler;
.source "DropBoxManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mRetry:I

.field final synthetic this$0:Lcom/android/server/DropBoxManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/DropBoxManagerService;)V
    .locals 1
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/server/DropBoxManagerService$3;->this$0:Lcom/android/server/DropBoxManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 182
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/DropBoxManagerService$3;->mRetry:I

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 188
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_1

    .line 189
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService$3;->this$0:Lcom/android/server/DropBoxManagerService;

    #getter for: Lcom/android/server/DropBoxManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/DropBoxManagerService;->access$500(Lcom/android/server/DropBoxManagerService;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const-string v3, "android.permission.READ_LOGS"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v3, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService$3;->this$0:Lcom/android/server/DropBoxManagerService;

    iget-object v1, p0, Lcom/android/server/DropBoxManagerService$3;->this$0:Lcom/android/server/DropBoxManagerService;

    #getter for: Lcom/android/server/DropBoxManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/DropBoxManagerService;->access$500(Lcom/android/server/DropBoxManagerService;)Landroid/content/Context;

    move-result-object v1

    #calls: Lcom/android/server/DropBoxManagerService;->setOppoDeviceImeiNO(Landroid/content/Context;)Z
    invoke-static {v0, v1}, Lcom/android/server/DropBoxManagerService;->access$600(Lcom/android/server/DropBoxManagerService;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/server/DropBoxManagerService$3;->mRetry:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/server/DropBoxManagerService$3;->mRetry:I

    if-lez v0, :cond_2

    .line 197
    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x7530

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 201
    :cond_2
    iget v0, p0, Lcom/android/server/DropBoxManagerService$3;->mRetry:I

    if-nez v0, :cond_0

    .line 202
    const-string v0, "sys.usb.config"

    const-string v1, "diag_mdm,adb"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v0, "persist.service.adb.enable"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 205
    const-string v0, "persist.service.adb.enable"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v0, "sys.dial.enable"

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
