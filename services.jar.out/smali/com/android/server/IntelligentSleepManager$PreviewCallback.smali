.class Lcom/android/server/IntelligentSleepManager$PreviewCallback;
.super Ljava/lang/Object;
.source "IntelligentSleepManager.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/IntelligentSleepManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreviewCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/IntelligentSleepManager;


# direct methods
.method private constructor <init>(Lcom/android/server/IntelligentSleepManager;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/server/IntelligentSleepManager$PreviewCallback;->this$0:Lcom/android/server/IntelligentSleepManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/IntelligentSleepManager;Lcom/android/server/IntelligentSleepManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/server/IntelligentSleepManager$PreviewCallback;-><init>(Lcom/android/server/IntelligentSleepManager;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 6
    .parameter "data"
    .parameter "camera"

    .prologue
    .line 45
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/IntelligentSleepManager$PreviewCallback;->this$0:Lcom/android/server/IntelligentSleepManager;

    #getter for: Lcom/android/server/IntelligentSleepManager;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/IntelligentSleepManager;->access$100(Lcom/android/server/IntelligentSleepManager;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "onPreviewFrame"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object v3, p0, Lcom/android/server/IntelligentSleepManager$PreviewCallback;->this$0:Lcom/android/server/IntelligentSleepManager;

    #getter for: Lcom/android/server/IntelligentSleepManager;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/IntelligentSleepManager;->access$100(Lcom/android/server/IntelligentSleepManager;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 62
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 53
    :cond_1
    if-eqz p2, :cond_0

    .line 54
    :try_start_1
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 55
    .local v1, parameters:Landroid/hardware/Camera$Parameters;
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 56
    .local v2, size:Landroid/hardware/Camera$Size;
    iget-object v3, p0, Lcom/android/server/IntelligentSleepManager$PreviewCallback;->this$0:Lcom/android/server/IntelligentSleepManager;

    #getter for: Lcom/android/server/IntelligentSleepManager;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/IntelligentSleepManager;->access$100(Lcom/android/server/IntelligentSleepManager;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "size:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v3, p0, Lcom/android/server/IntelligentSleepManager$PreviewCallback;->this$0:Lcom/android/server/IntelligentSleepManager;

    iget v4, v2, Landroid/hardware/Camera$Size;->width:I

    iget v5, v2, Landroid/hardware/Camera$Size;->height:I

    #calls: Lcom/android/server/IntelligentSleepManager;->eyeDected([BII)V
    invoke-static {v3, p1, v4, v5}, Lcom/android/server/IntelligentSleepManager;->access$200(Lcom/android/server/IntelligentSleepManager;[BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 59
    .end local v1           #parameters:Landroid/hardware/Camera$Parameters;
    .end local v2           #size:Landroid/hardware/Camera$Size;
    :catch_0
    move-exception v0

    .line 60
    .local v0, ex:Ljava/lang/Exception;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/IntelligentSleepManager$PreviewCallback;->this$0:Lcom/android/server/IntelligentSleepManager;

    #getter for: Lcom/android/server/IntelligentSleepManager;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/IntelligentSleepManager;->access$100(Lcom/android/server/IntelligentSleepManager;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "eye dected failed"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 45
    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method
