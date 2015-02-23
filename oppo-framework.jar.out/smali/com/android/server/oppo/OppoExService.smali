.class public final Lcom/android/server/oppo/OppoExService;
.super Landroid/os/IOppoExService$Stub;
.source "OppoExService.java"


# annotations
.annotation build Landroid/annotation/OppoHook;
    level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_CLASS:Landroid/annotation/OppoHook$OppoHookType;
    note = "Jun.Zhang@Plf.Framework add oppo ex service, three pointers move shot screen"
    property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/oppo/OppoExService$OppoExInputCallBack;,
        Lcom/android/server/oppo/OppoExService$OppoExInputEventReceiver;
    }
.end annotation


# static fields
.field private static final DEFAULT_VIBRATE_PATTERN:[J = null

.field private static final OPPO_EX_CHANNEL_NAME:Ljava/lang/String; = "OppoExInputReceiver"

.field private static final OPPO_EX_DEBUGGABLE:Ljava/lang/String; = "persist.sys.ex.service"

.field private static final TAG:Ljava/lang/String; = "OppoExService"


# instance fields
.field private mContext:Landroid/content/Context;

.field mExInputChannel:Landroid/view/InputChannel;

.field mExInputEventReceiver:Lcom/android/server/oppo/OppoExService$OppoExInputEventReceiver;

.field private mH:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private final mInputCallBacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/oppo/OppoExService$OppoExInputCallBack;",
            ">;"
        }
    .end annotation
.end field

.field mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/oppo/OppoExService;->DEFAULT_VIBRATE_PATTERN:[J

    return-void

    nop

    :array_0
    .array-data 0x8
        0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .locals 2
    .parameter "context"
    .parameter "windowManager"

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Landroid/os/IOppoExService$Stub;-><init>()V

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/oppo/OppoExService;->mH:Landroid/os/Handler;

    .line 56
    iput-object v1, p0, Lcom/android/server/oppo/OppoExService;->mExInputChannel:Landroid/view/InputChannel;

    .line 57
    iput-object v1, p0, Lcom/android/server/oppo/OppoExService;->mExInputEventReceiver:Lcom/android/server/oppo/OppoExService$OppoExInputEventReceiver;

    .line 58
    iput-object v1, p0, Lcom/android/server/oppo/OppoExService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/oppo/OppoExService;->mInputCallBacks:Ljava/util/ArrayList;

    .line 63
    iput-object p1, p0, Lcom/android/server/oppo/OppoExService;->mContext:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcom/android/server/oppo/OppoExService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 66
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "OppoExService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/oppo/OppoExService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 67
    iget-object v0, p0, Lcom/android/server/oppo/OppoExService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 68
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/oppo/OppoExService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/server/oppo/OppoExService;->mInputCallBacks:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public disableInputReceiver()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 132
    iget-object v0, p0, Lcom/android/server/oppo/OppoExService;->mExInputEventReceiver:Lcom/android/server/oppo/OppoExService$OppoExInputEventReceiver;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/server/oppo/OppoExService;->mExInputEventReceiver:Lcom/android/server/oppo/OppoExService$OppoExInputEventReceiver;

    invoke-virtual {v0}, Landroid/view/InputEventReceiver;->dispose()V

    .line 134
    iput-object v1, p0, Lcom/android/server/oppo/OppoExService;->mExInputEventReceiver:Lcom/android/server/oppo/OppoExService$OppoExInputEventReceiver;

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/android/server/oppo/OppoExService;->mExInputChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/android/server/oppo/OppoExService;->mExInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 139
    iput-object v1, p0, Lcom/android/server/oppo/OppoExService;->mExInputChannel:Landroid/view/InputChannel;

    .line 141
    :cond_1
    return-void
.end method

.method public enableInputReceiver()V
    .locals 3

    .prologue
    .line 120
    const-string v0, "1"

    const-string v1, "persist.sys.ex.service"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    const-string v0, "OppoExService"

    const-string v1, "OppoExService  enableInputReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/server/oppo/OppoExService;->mExInputEventReceiver:Lcom/android/server/oppo/OppoExService$OppoExInputEventReceiver;

    if-nez v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/android/server/oppo/OppoExService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const-string v1, "OppoExInputReceiver"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oppo/OppoExService;->mExInputChannel:Landroid/view/InputChannel;

    .line 126
    new-instance v0, Lcom/android/server/oppo/OppoExService$OppoExInputEventReceiver;

    iget-object v1, p0, Lcom/android/server/oppo/OppoExService;->mExInputChannel:Landroid/view/InputChannel;

    iget-object v2, p0, Lcom/android/server/oppo/OppoExService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/oppo/OppoExService$OppoExInputEventReceiver;-><init>(Lcom/android/server/oppo/OppoExService;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/oppo/OppoExService;->mExInputEventReceiver:Lcom/android/server/oppo/OppoExService$OppoExInputEventReceiver;

    .line 129
    :cond_1
    return-void
.end method

.method public registerInputEvent(Landroid/os/IOppoExInputCallBack;)Z
    .locals 10
    .parameter "callBackAdd"

    .prologue
    const/4 v6, 0x0

    .line 71
    const-string v7, "1"

    const-string v8, "persist.sys.ex.service"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 72
    const-string v7, "OppoExService"

    const-string v8, " OppoExService  registerInputEvent"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_0
    const/4 v4, 0x1

    .line 75
    .local v4, result:Z
    iget-object v7, p0, Lcom/android/server/oppo/OppoExService;->mInputCallBacks:Ljava/util/ArrayList;

    monitor-enter v7

    .line 76
    :try_start_0
    iget-object v8, p0, Lcom/android/server/oppo/OppoExService;->mInputCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 77
    .local v5, size:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v5, :cond_2

    .line 78
    iget-object v8, p0, Lcom/android/server/oppo/OppoExService;->mInputCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/oppo/OppoExService$OppoExInputCallBack;

    .line 79
    .local v0, callBackInfo:Lcom/android/server/oppo/OppoExService$OppoExInputCallBack;
    #getter for: Lcom/android/server/oppo/OppoExService$OppoExInputCallBack;->mCallBack:Landroid/os/IOppoExInputCallBack;
    invoke-static {v0}, Lcom/android/server/oppo/OppoExService$OppoExInputCallBack;->access$000(Lcom/android/server/oppo/OppoExService$OppoExInputCallBack;)Landroid/os/IOppoExInputCallBack;

    move-result-object v8

    if-ne v8, p1, :cond_1

    .line 80
    const-string v8, "OppoExService"

    const-string v9, " already exist!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    monitor-exit v7

    move v4, v6

    .line 98
    .end local v0           #callBackInfo:Lcom/android/server/oppo/OppoExService$OppoExInputCallBack;
    .end local v4           #result:Z
    :goto_1
    return v4

    .line 77
    .restart local v0       #callBackInfo:Lcom/android/server/oppo/OppoExService$OppoExInputCallBack;
    .restart local v4       #result:Z
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 85
    .end local v0           #callBackInfo:Lcom/android/server/oppo/OppoExService$OppoExInputCallBack;
    :cond_2
    new-instance v1, Lcom/android/server/oppo/OppoExService$OppoExInputCallBack;

    invoke-direct {v1, p0, p1}, Lcom/android/server/oppo/OppoExService$OppoExInputCallBack;-><init>(Lcom/android/server/oppo/OppoExService;Landroid/os/IOppoExInputCallBack;)V

    .line 86
    .local v1, callNewBackInfo:Lcom/android/server/oppo/OppoExService$OppoExInputCallBack;
    iget-object v8, p0, Lcom/android/server/oppo/OppoExService;->mInputCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    :try_start_1
    invoke-interface {p1}, Landroid/os/IOppoExInputCallBack;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v1, v9}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 93
    :try_start_2
    iget-object v6, p0, Lcom/android/server/oppo/OppoExService;->mInputCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 95
    invoke-virtual {p0}, Lcom/android/server/oppo/OppoExService;->enableInputReceiver()V

    .line 97
    :cond_3
    monitor-exit v7

    goto :goto_1

    .end local v1           #callNewBackInfo:Lcom/android/server/oppo/OppoExService$OppoExInputCallBack;
    .end local v3           #i:I
    .end local v5           #size:I
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 89
    .restart local v1       #callNewBackInfo:Lcom/android/server/oppo/OppoExService$OppoExInputCallBack;
    .restart local v3       #i:I
    .restart local v5       #size:I
    :catch_0
    move-exception v2

    .line 90
    .local v2, e:Landroid/os/RemoteException;
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v4, v6

    goto :goto_1
.end method

.method public unregisterInputEvent(Landroid/os/IOppoExInputCallBack;)V
    .locals 6
    .parameter "callBackRemove"

    .prologue
    .line 102
    iget-object v4, p0, Lcom/android/server/oppo/OppoExService;->mInputCallBacks:Ljava/util/ArrayList;

    monitor-enter v4

    .line 103
    :try_start_0
    iget-object v3, p0, Lcom/android/server/oppo/OppoExService;->mInputCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 104
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 105
    iget-object v3, p0, Lcom/android/server/oppo/OppoExService;->mInputCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/oppo/OppoExService$OppoExInputCallBack;

    .line 106
    .local v0, callBackInfo:Lcom/android/server/oppo/OppoExService$OppoExInputCallBack;
    #getter for: Lcom/android/server/oppo/OppoExService$OppoExInputCallBack;->mCallBack:Landroid/os/IOppoExInputCallBack;
    invoke-static {v0}, Lcom/android/server/oppo/OppoExService$OppoExInputCallBack;->access$000(Lcom/android/server/oppo/OppoExService$OppoExInputCallBack;)Landroid/os/IOppoExInputCallBack;

    move-result-object v3

    if-ne v3, p1, :cond_2

    .line 107
    iget-object v3, p0, Lcom/android/server/oppo/OppoExService;->mInputCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 108
    invoke-interface {p1}, Landroid/os/IOppoExInputCallBack;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v5, 0x0

    invoke-interface {v3, v0, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 112
    .end local v0           #callBackInfo:Lcom/android/server/oppo/OppoExService$OppoExInputCallBack;
    :cond_0
    iget-object v3, p0, Lcom/android/server/oppo/OppoExService;->mInputCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 114
    invoke-virtual {p0}, Lcom/android/server/oppo/OppoExService;->disableInputReceiver()V

    .line 116
    :cond_1
    monitor-exit v4

    .line 117
    return-void

    .line 104
    .restart local v0       #callBackInfo:Lcom/android/server/oppo/OppoExService$OppoExInputCallBack;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    .end local v0           #callBackInfo:Lcom/android/server/oppo/OppoExService$OppoExInputCallBack;
    .end local v1           #i:I
    .end local v2           #size:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
