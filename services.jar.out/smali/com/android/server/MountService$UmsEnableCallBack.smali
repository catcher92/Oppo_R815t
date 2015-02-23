.class Lcom/android/server/MountService$UmsEnableCallBack;
.super Lcom/android/server/MountService$UnmountCallBack;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UmsEnableCallBack"
.end annotation


# instance fields
.field final method:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter "path"
    .parameter "method"
    .parameter "force"

    .prologue
    .line 484
    iput-object p1, p0, Lcom/android/server/MountService$UmsEnableCallBack;->this$0:Lcom/android/server/MountService;

    .line 485
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p4, v0}, Lcom/android/server/MountService$UnmountCallBack;-><init>(Lcom/android/server/MountService;Ljava/lang/String;ZZ)V

    .line 486
    iput-object p3, p0, Lcom/android/server/MountService$UmsEnableCallBack;->method:Ljava/lang/String;

    .line 487
    return-void
.end method


# virtual methods
.method handleFinished()V
    .locals 3

    .prologue
    .line 520
    invoke-static {}, Lcom/android/server/MountService;->access$800()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 521
    :try_start_0
    invoke-super {p0}, Lcom/android/server/MountService$UnmountCallBack;->handleFinished()V

    .line 524
    iget-object v0, p0, Lcom/android/server/MountService$UmsEnableCallBack;->this$0:Lcom/android/server/MountService;

    const/4 v2, 0x1

    #calls: Lcom/android/server/MountService;->shareUnshareAllVolume(Z)V
    invoke-static {v0, v2}, Lcom/android/server/MountService;->access$900(Lcom/android/server/MountService;Z)V

    .line 536
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 539
    iget-object v0, p0, Lcom/android/server/MountService$UmsEnableCallBack;->this$0:Lcom/android/server/MountService;

    invoke-static {v0}, Lcom/android/server/MountService;->access$1010(Lcom/android/server/MountService;)I

    .line 540
    iget-object v0, p0, Lcom/android/server/MountService$UmsEnableCallBack;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mUMSCount:I
    invoke-static {v0}, Lcom/android/server/MountService;->access$1000(Lcom/android/server/MountService;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 541
    new-instance v0, Lcom/android/server/MountService$UmsEnableCallBack$1;

    invoke-direct {v0, p0}, Lcom/android/server/MountService$UmsEnableCallBack$1;-><init>(Lcom/android/server/MountService$UmsEnableCallBack;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 547
    iget-object v0, p0, Lcom/android/server/MountService$UmsEnableCallBack;->this$0:Lcom/android/server/MountService;

    const/4 v1, 0x0

    #setter for: Lcom/android/server/MountService;->mUnmountPrimary:Z
    invoke-static {v0, v1}, Lcom/android/server/MountService;->access$1202(Lcom/android/server/MountService;Z)Z

    .line 549
    :cond_0
    return-void

    .line 536
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
