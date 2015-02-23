.class Lcom/android/server/MountService$ShutdownCallBack;
.super Lcom/android/server/MountService$UnmountCallBack;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ShutdownCallBack"
.end annotation


# instance fields
.field observer:Landroid/os/storage/IMountShutdownObserver;

.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Ljava/lang/String;Landroid/os/storage/IMountShutdownObserver;)V
    .locals 2
    .parameter
    .parameter "path"
    .parameter "observer"

    .prologue
    .line 554
    iput-object p1, p0, Lcom/android/server/MountService$ShutdownCallBack;->this$0:Lcom/android/server/MountService;

    .line 555
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/MountService$UnmountCallBack;-><init>(Lcom/android/server/MountService;Ljava/lang/String;ZZ)V

    .line 556
    iput-object p3, p0, Lcom/android/server/MountService$ShutdownCallBack;->observer:Landroid/os/storage/IMountShutdownObserver;

    .line 557
    return-void
.end method


# virtual methods
.method handleFinished()V
    .locals 6

    .prologue
    .line 567
    const/4 v1, 0x0

    .line 568
    .local v1, ret:I
    iget-object v2, p0, Lcom/android/server/MountService$ShutdownCallBack;->this$0:Lcom/android/server/MountService;

    invoke-virtual {v2}, Lcom/android/server/MountService;->isSDExist()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/MountService$ShutdownCallBack;->path:Ljava/lang/String;

    sget-object v3, Lcom/oppo/os/OppoEnvironment;->PARENT_STORAGE_DIRECTORY:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 572
    iget-object v2, p0, Lcom/android/server/MountService$ShutdownCallBack;->this$0:Lcom/android/server/MountService;

    iget-boolean v3, p0, Lcom/android/server/MountService$ShutdownCallBack;->removeEncryption:Z

    #calls: Lcom/android/server/MountService;->unMountAll(Z)I
    invoke-static {v2, v3}, Lcom/android/server/MountService;->access$100(Lcom/android/server/MountService;Z)I

    move-result v1

    .line 578
    :goto_0
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ShutdownCallBack ret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    iget-object v2, p0, Lcom/android/server/MountService$ShutdownCallBack;->this$0:Lcom/android/server/MountService;

    iget-object v3, p0, Lcom/android/server/MountService$ShutdownCallBack;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mShutdownRet:I
    invoke-static {v3}, Lcom/android/server/MountService;->access$1300(Lcom/android/server/MountService;)I

    move-result v3

    or-int/2addr v3, v1

    #setter for: Lcom/android/server/MountService;->mShutdownRet:I
    invoke-static {v2, v3}, Lcom/android/server/MountService;->access$1302(Lcom/android/server/MountService;I)I

    .line 581
    iget-object v2, p0, Lcom/android/server/MountService$ShutdownCallBack;->this$0:Lcom/android/server/MountService;

    invoke-static {v2}, Lcom/android/server/MountService;->access$1410(Lcom/android/server/MountService;)I

    .line 582
    iget-object v2, p0, Lcom/android/server/MountService$ShutdownCallBack;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mShutdownCount:I
    invoke-static {v2}, Lcom/android/server/MountService;->access$1400(Lcom/android/server/MountService;)I

    move-result v2

    if-gtz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/MountService$ShutdownCallBack;->observer:Landroid/os/storage/IMountShutdownObserver;

    if-eqz v2, :cond_0

    .line 584
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService$ShutdownCallBack;->this$0:Lcom/android/server/MountService;

    const/4 v3, 0x0

    #setter for: Lcom/android/server/MountService;->mShutdownSD:Z
    invoke-static {v2, v3}, Lcom/android/server/MountService;->access$1502(Lcom/android/server/MountService;Z)Z

    .line 585
    iget-object v2, p0, Lcom/android/server/MountService$ShutdownCallBack;->this$0:Lcom/android/server/MountService;

    const/4 v3, 0x0

    #setter for: Lcom/android/server/MountService;->mUnmountPrimary:Z
    invoke-static {v2, v3}, Lcom/android/server/MountService;->access$1202(Lcom/android/server/MountService;Z)Z

    .line 586
    iget-object v2, p0, Lcom/android/server/MountService$ShutdownCallBack;->observer:Landroid/os/storage/IMountShutdownObserver;

    iget-object v3, p0, Lcom/android/server/MountService$ShutdownCallBack;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mShutdownRet:I
    invoke-static {v3}, Lcom/android/server/MountService;->access$1300(Lcom/android/server/MountService;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/os/storage/IMountShutdownObserver;->onShutDownComplete(I)V

    .line 587
    iget-object v2, p0, Lcom/android/server/MountService$ShutdownCallBack;->this$0:Lcom/android/server/MountService;

    const/4 v3, 0x0

    #setter for: Lcom/android/server/MountService;->mShutdownRet:I
    invoke-static {v2, v3}, Lcom/android/server/MountService;->access$1302(Lcom/android/server/MountService;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 592
    :cond_0
    :goto_1
    return-void

    .line 576
    :cond_1
    iget-object v2, p0, Lcom/android/server/MountService$ShutdownCallBack;->this$0:Lcom/android/server/MountService;

    iget-object v3, p0, Lcom/android/server/MountService$ShutdownCallBack;->path:Ljava/lang/String;

    const/4 v4, 0x1

    iget-boolean v5, p0, Lcom/android/server/MountService$ShutdownCallBack;->removeEncryption:Z

    #calls: Lcom/android/server/MountService;->doUnmountVolume(Ljava/lang/String;ZZ)I
    invoke-static {v2, v3, v4, v5}, Lcom/android/server/MountService;->access$200(Lcom/android/server/MountService;Ljava/lang/String;ZZ)I

    move-result v1

    goto :goto_0

    .line 588
    :catch_0
    move-exception v0

    .line 589
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "MountService"

    const-string v3, "RemoteException when shutting down"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
