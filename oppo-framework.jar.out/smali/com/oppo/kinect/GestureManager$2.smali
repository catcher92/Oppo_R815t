.class Lcom/oppo/kinect/GestureManager$2;
.super Landroid/os/Handler;
.source "GestureManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/kinect/GestureManager;->initHandler(Landroid/os/Looper;)Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/kinect/GestureManager;


# direct methods
.method constructor <init>(Lcom/oppo/kinect/GestureManager;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/oppo/kinect/GestureManager$2;->this$0:Lcom/oppo/kinect/GestureManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 123
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 189
    :goto_0
    return-void

    .line 125
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/oppo/kinect/IOppoKinectService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 126
    .local v1, service:Landroid/content/Intent;
    iget-object v2, p0, Lcom/oppo/kinect/GestureManager$2;->this$0:Lcom/oppo/kinect/GestureManager;

    #getter for: Lcom/oppo/kinect/GestureManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/oppo/kinect/GestureManager;->access$300(Lcom/oppo/kinect/GestureManager;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/kinect/GestureManager$2;->this$0:Lcom/oppo/kinect/GestureManager;

    #getter for: Lcom/oppo/kinect/GestureManager;->connection:Landroid/content/ServiceConnection;
    invoke-static {v3}, Lcom/oppo/kinect/GestureManager;->access$200(Lcom/oppo/kinect/GestureManager;)Landroid/content/ServiceConnection;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0

    .line 130
    .end local v1           #service:Landroid/content/Intent;
    :pswitch_1
    iget-object v2, p0, Lcom/oppo/kinect/GestureManager$2;->this$0:Lcom/oppo/kinect/GestureManager;

    #getter for: Lcom/oppo/kinect/GestureManager;->Mutex:Ljava/lang/Integer;
    invoke-static {v2}, Lcom/oppo/kinect/GestureManager;->access$000(Lcom/oppo/kinect/GestureManager;)Ljava/lang/Integer;

    move-result-object v3

    monitor-enter v3

    .line 131
    :goto_1
    :try_start_0
    iget-object v2, p0, Lcom/oppo/kinect/GestureManager$2;->this$0:Lcom/oppo/kinect/GestureManager;

    #getter for: Lcom/oppo/kinect/GestureManager;->mService:Lcom/oppo/kinect/IOppoKinectService;
    invoke-static {v2}, Lcom/oppo/kinect/GestureManager;->access$100(Lcom/oppo/kinect/GestureManager;)Lcom/oppo/kinect/IOppoKinectService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-nez v2, :cond_0

    .line 133
    :try_start_1
    iget-object v2, p0, Lcom/oppo/kinect/GestureManager$2;->this$0:Lcom/oppo/kinect/GestureManager;

    #getter for: Lcom/oppo/kinect/GestureManager;->Mutex:Ljava/lang/Integer;
    invoke-static {v2}, Lcom/oppo/kinect/GestureManager;->access$000(Lcom/oppo/kinect/GestureManager;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 134
    :catch_0
    move-exception v0

    .line 136
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 147
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 140
    :cond_0
    :try_start_3
    iget-object v2, p0, Lcom/oppo/kinect/GestureManager$2;->this$0:Lcom/oppo/kinect/GestureManager;

    #getter for: Lcom/oppo/kinect/GestureManager;->mService:Lcom/oppo/kinect/IOppoKinectService;
    invoke-static {v2}, Lcom/oppo/kinect/GestureManager;->access$100(Lcom/oppo/kinect/GestureManager;)Lcom/oppo/kinect/IOppoKinectService;

    move-result-object v4

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/oppo/kinect/GestureStateCallback;

    iget-object v2, v2, Lcom/oppo/kinect/GestureStateCallback;->mCallback:Lcom/oppo/kinect/IRemoteServiceCallback;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v4, v2, v5}, Lcom/oppo/kinect/IOppoKinectService;->enable(Lcom/oppo/kinect/IRemoteServiceCallback;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 141
    :try_start_4
    monitor-exit v3

    goto :goto_0

    .line 142
    :catch_1
    move-exception v0

    .line 144
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 145
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 150
    .end local v0           #e:Landroid/os/RemoteException;
    :pswitch_2
    iget-object v2, p0, Lcom/oppo/kinect/GestureManager$2;->this$0:Lcom/oppo/kinect/GestureManager;

    #getter for: Lcom/oppo/kinect/GestureManager;->Mutex:Ljava/lang/Integer;
    invoke-static {v2}, Lcom/oppo/kinect/GestureManager;->access$000(Lcom/oppo/kinect/GestureManager;)Ljava/lang/Integer;

    move-result-object v3

    monitor-enter v3

    .line 151
    :goto_2
    :try_start_5
    iget-object v2, p0, Lcom/oppo/kinect/GestureManager$2;->this$0:Lcom/oppo/kinect/GestureManager;

    #getter for: Lcom/oppo/kinect/GestureManager;->mService:Lcom/oppo/kinect/IOppoKinectService;
    invoke-static {v2}, Lcom/oppo/kinect/GestureManager;->access$100(Lcom/oppo/kinect/GestureManager;)Lcom/oppo/kinect/IOppoKinectService;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v2

    if-nez v2, :cond_1

    .line 153
    :try_start_6
    iget-object v2, p0, Lcom/oppo/kinect/GestureManager$2;->this$0:Lcom/oppo/kinect/GestureManager;

    #getter for: Lcom/oppo/kinect/GestureManager;->Mutex:Ljava/lang/Integer;
    invoke-static {v2}, Lcom/oppo/kinect/GestureManager;->access$000(Lcom/oppo/kinect/GestureManager;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    .line 154
    :catch_2
    move-exception v0

    .line 156
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 167
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v2

    .line 160
    :cond_1
    :try_start_8
    iget-object v2, p0, Lcom/oppo/kinect/GestureManager$2;->this$0:Lcom/oppo/kinect/GestureManager;

    #getter for: Lcom/oppo/kinect/GestureManager;->mService:Lcom/oppo/kinect/IOppoKinectService;
    invoke-static {v2}, Lcom/oppo/kinect/GestureManager;->access$100(Lcom/oppo/kinect/GestureManager;)Lcom/oppo/kinect/IOppoKinectService;

    move-result-object v4

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/oppo/kinect/GestureStateCallback;

    iget-object v2, v2, Lcom/oppo/kinect/GestureStateCallback;->mCallback:Lcom/oppo/kinect/IRemoteServiceCallback;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v4, v2, v5}, Lcom/oppo/kinect/IOppoKinectService;->disable(Lcom/oppo/kinect/IRemoteServiceCallback;I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_3

    .line 161
    :try_start_9
    monitor-exit v3

    goto/16 :goto_0

    .line 162
    :catch_3
    move-exception v0

    .line 164
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 165
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_0

    .line 170
    .end local v0           #e:Landroid/os/RemoteException;
    :pswitch_3
    iget-object v2, p0, Lcom/oppo/kinect/GestureManager$2;->this$0:Lcom/oppo/kinect/GestureManager;

    #getter for: Lcom/oppo/kinect/GestureManager;->Mutex:Ljava/lang/Integer;
    invoke-static {v2}, Lcom/oppo/kinect/GestureManager;->access$000(Lcom/oppo/kinect/GestureManager;)Ljava/lang/Integer;

    move-result-object v3

    monitor-enter v3

    .line 171
    :goto_3
    :try_start_a
    iget-object v2, p0, Lcom/oppo/kinect/GestureManager$2;->this$0:Lcom/oppo/kinect/GestureManager;

    #getter for: Lcom/oppo/kinect/GestureManager;->mService:Lcom/oppo/kinect/IOppoKinectService;
    invoke-static {v2}, Lcom/oppo/kinect/GestureManager;->access$100(Lcom/oppo/kinect/GestureManager;)Lcom/oppo/kinect/IOppoKinectService;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move-result-object v2

    if-nez v2, :cond_2

    .line 173
    :try_start_b
    iget-object v2, p0, Lcom/oppo/kinect/GestureManager$2;->this$0:Lcom/oppo/kinect/GestureManager;

    #getter for: Lcom/oppo/kinect/GestureManager;->Mutex:Ljava/lang/Integer;
    invoke-static {v2}, Lcom/oppo/kinect/GestureManager;->access$000(Lcom/oppo/kinect/GestureManager;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_4

    goto :goto_3

    .line 174
    :catch_4
    move-exception v0

    .line 176
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_c
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 187
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_2
    move-exception v2

    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    throw v2

    .line 180
    :cond_2
    :try_start_d
    iget-object v2, p0, Lcom/oppo/kinect/GestureManager$2;->this$0:Lcom/oppo/kinect/GestureManager;

    #getter for: Lcom/oppo/kinect/GestureManager;->mService:Lcom/oppo/kinect/IOppoKinectService;
    invoke-static {v2}, Lcom/oppo/kinect/GestureManager;->access$100(Lcom/oppo/kinect/GestureManager;)Lcom/oppo/kinect/IOppoKinectService;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [F

    check-cast v2, [F

    invoke-interface {v4, v5, v2}, Lcom/oppo/kinect/IOppoKinectService;->setparameter(I[F)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_5

    .line 181
    :try_start_e
    monitor-exit v3

    goto/16 :goto_0

    .line 182
    :catch_5
    move-exception v0

    .line 184
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 185
    monitor-exit v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    goto/16 :goto_0

    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
