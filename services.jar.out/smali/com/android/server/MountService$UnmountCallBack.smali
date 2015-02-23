.class Lcom/android/server/MountService$UnmountCallBack;
.super Ljava/lang/Object;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UnmountCallBack"
.end annotation


# instance fields
.field final force:Z

.field final path:Ljava/lang/String;

.field final removeEncryption:Z

.field retries:I

.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Ljava/lang/String;ZZ)V
    .locals 1
    .parameter
    .parameter "path"
    .parameter "force"
    .parameter "removeEncryption"

    .prologue
    .line 436
    iput-object p1, p0, Lcom/android/server/MountService$UnmountCallBack;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 437
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/MountService$UnmountCallBack;->retries:I

    .line 438
    iput-object p2, p0, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    .line 439
    iput-boolean p3, p0, Lcom/android/server/MountService$UnmountCallBack;->force:Z

    .line 440
    iput-boolean p4, p0, Lcom/android/server/MountService$UnmountCallBack;->removeEncryption:Z

    .line 441
    return-void
.end method


# virtual methods
.method handleFinished()V
    .locals 4

    .prologue
    .line 444
    const-string v0, "MountService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unmounting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iget-object v0, p0, Lcom/android/server/MountService$UnmountCallBack;->this$0:Lcom/android/server/MountService;

    invoke-virtual {v0}, Lcom/android/server/MountService;->isSDExist()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    sget-object v1, Lcom/oppo/os/OppoEnvironment;->PARENT_STORAGE_DIRECTORY:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 463
    iget-object v0, p0, Lcom/android/server/MountService$UnmountCallBack;->this$0:Lcom/android/server/MountService;

    iget-boolean v1, p0, Lcom/android/server/MountService$UnmountCallBack;->removeEncryption:Z

    #calls: Lcom/android/server/MountService;->unMountAll(Z)I
    invoke-static {v0, v1}, Lcom/android/server/MountService;->access$100(Lcom/android/server/MountService;Z)I

    .line 478
    :cond_0
    :goto_0
    return-void

    .line 467
    :cond_1
    iget-object v0, p0, Lcom/android/server/MountService$UnmountCallBack;->this$0:Lcom/android/server/MountService;

    iget-object v1, p0, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/android/server/MountService$UnmountCallBack;->removeEncryption:Z

    #calls: Lcom/android/server/MountService;->doUnmountVolume(Ljava/lang/String;ZZ)I
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/MountService;->access$200(Lcom/android/server/MountService;Ljava/lang/String;ZZ)I

    .line 468
    iget-object v0, p0, Lcom/android/server/MountService$UnmountCallBack;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mUnmountSwap:Z
    invoke-static {v0}, Lcom/android/server/MountService;->access$300(Lcom/android/server/MountService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/android/server/MountService$UnmountCallBack;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->updateSDExist()Z
    invoke-static {v0}, Lcom/android/server/MountService;->access$400(Lcom/android/server/MountService;)Z

    .line 470
    iget-object v0, p0, Lcom/android/server/MountService$UnmountCallBack;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->doSDSwapVolumeUpdate()V
    invoke-static {v0}, Lcom/android/server/MountService;->access$500(Lcom/android/server/MountService;)V

    .line 471
    iget-object v0, p0, Lcom/android/server/MountService$UnmountCallBack;->this$0:Lcom/android/server/MountService;

    const/4 v1, 0x0

    #setter for: Lcom/android/server/MountService;->mUnmountSwap:Z
    invoke-static {v0, v1}, Lcom/android/server/MountService;->access$302(Lcom/android/server/MountService;Z)Z

    .line 472
    iget-object v0, p0, Lcom/android/server/MountService$UnmountCallBack;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->updateDefaultpath()V
    invoke-static {v0}, Lcom/android/server/MountService;->access$600(Lcom/android/server/MountService;)V

    .line 473
    iget-object v0, p0, Lcom/android/server/MountService$UnmountCallBack;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->sendSDSwapIntent()V
    invoke-static {v0}, Lcom/android/server/MountService;->access$700(Lcom/android/server/MountService;)V

    goto :goto_0
.end method
