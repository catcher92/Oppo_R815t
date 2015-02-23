.class Lcom/oppo/kinect/GestureManager$1;
.super Ljava/lang/Object;
.source "GestureManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/kinect/GestureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/kinect/GestureManager;


# direct methods
.method constructor <init>(Lcom/oppo/kinect/GestureManager;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/oppo/kinect/GestureManager$1;->this$0:Lcom/oppo/kinect/GestureManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "name"
    .parameter "service"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/oppo/kinect/GestureManager$1;->this$0:Lcom/oppo/kinect/GestureManager;

    #getter for: Lcom/oppo/kinect/GestureManager;->Mutex:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/oppo/kinect/GestureManager;->access$000(Lcom/oppo/kinect/GestureManager;)Ljava/lang/Integer;

    move-result-object v1

    monitor-enter v1

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/oppo/kinect/GestureManager$1;->this$0:Lcom/oppo/kinect/GestureManager;

    invoke-static {p2}, Lcom/oppo/kinect/IOppoKinectService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oppo/kinect/IOppoKinectService;

    move-result-object v2

    #setter for: Lcom/oppo/kinect/GestureManager;->mService:Lcom/oppo/kinect/IOppoKinectService;
    invoke-static {v0, v2}, Lcom/oppo/kinect/GestureManager;->access$102(Lcom/oppo/kinect/GestureManager;Lcom/oppo/kinect/IOppoKinectService;)Lcom/oppo/kinect/IOppoKinectService;

    .line 54
    iget-object v0, p0, Lcom/oppo/kinect/GestureManager$1;->this$0:Lcom/oppo/kinect/GestureManager;

    #getter for: Lcom/oppo/kinect/GestureManager;->Mutex:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/oppo/kinect/GestureManager;->access$000(Lcom/oppo/kinect/GestureManager;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 55
    monitor-exit v1

    .line 56
    return-void

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 6
    .parameter "name"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/oppo/kinect/GestureManager$1;->this$0:Lcom/oppo/kinect/GestureManager;

    #getter for: Lcom/oppo/kinect/GestureManager;->Mutex:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/oppo/kinect/GestureManager;->access$000(Lcom/oppo/kinect/GestureManager;)Ljava/lang/Integer;

    move-result-object v1

    monitor-enter v1

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/oppo/kinect/GestureManager$1;->this$0:Lcom/oppo/kinect/GestureManager;

    const/4 v2, 0x0

    #setter for: Lcom/oppo/kinect/GestureManager;->mService:Lcom/oppo/kinect/IOppoKinectService;
    invoke-static {v0, v2}, Lcom/oppo/kinect/GestureManager;->access$102(Lcom/oppo/kinect/GestureManager;Lcom/oppo/kinect/IOppoKinectService;)Lcom/oppo/kinect/IOppoKinectService;

    .line 63
    iget-object v0, p0, Lcom/oppo/kinect/GestureManager$1;->this$0:Lcom/oppo/kinect/GestureManager;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/oppo/kinect/GestureManager;->sendMsg(IIILjava/lang/Object;)V

    .line 64
    monitor-exit v1

    .line 65
    return-void

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
