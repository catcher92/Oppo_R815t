.class Lcom/android/server/power/PowerManagerService$SmartStayManager;
.super Lcom/android/server/IntelligentSleepManager;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmartStayManager"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 2928
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$SmartStayManager;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 2929
    invoke-direct {p0, p2}, Lcom/android/server/IntelligentSleepManager;-><init>(Landroid/content/Context;)V

    .line 2930
    return-void
.end method


# virtual methods
.method protected eyeDectedResultCallBack()V
    .locals 3

    .prologue
    .line 2934
    const-string v1, "PowerManagerService"

    const-string v2, "eyeDectedResultCallBack"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2936
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$SmartStayManager;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$2700(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2937
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$SmartStayManager;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$2700(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2938
    return-void
.end method
