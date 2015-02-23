.class public Lcom/oppo/kinect/GestureManager;
.super Ljava/lang/Object;
.source "GestureManager.java"


# static fields
.field public static final ACTION_BRINGTOEAR:I = 0x4

.field public static final ACTION_LEAN:I = 0x2

.field public static final ACTION_OVERLAP:I = 0x1

.field public static final ACTION_PICKUP:I = 0x5

.field public static final ACTION_REMIND:I = 0x6

.field public static final ACTION_STATIC:I = 0x3

.field public static final ACTION_TURN:I = 0x0

.field public static final BroadCastName:[Ljava/lang/String; = null

.field private static final MSG_CONNECTSERVICE:I = 0x0

.field private static final MSG_DISABLE:I = 0x2

.field private static final MSG_ENABLE:I = 0x1

.field private static final MSG_SETPARAMETER:I = 0x3

.field private static mGestureManager:Lcom/oppo/kinect/GestureManager;


# instance fields
.field private Mutex:Ljava/lang/Integer;

.field private connection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mService:Lcom/oppo/kinect/IOppoKinectService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.oppo.kinect.ACTION_TURN"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.oppo.kinect.ACTION_OVERLAP"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.oppo.kinect.ACTION_LEAN"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.oppo.kinect.ACTION_STATIC"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.oppo.kinect.ACTION_BRINGTOEAR"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.oppo.kinect.ACTION_PICKUP"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.oppo.kinect.ACTION_REMIND"

    aput-object v2, v0, v1

    sput-object v0, Lcom/oppo/kinect/GestureManager;->BroadCastName:[Ljava/lang/String;

    .line 68
    const/4 v0, 0x0

    sput-object v0, Lcom/oppo/kinect/GestureManager;->mGestureManager:Lcom/oppo/kinect/GestureManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v2, p0, Lcom/oppo/kinect/GestureManager;->mContext:Landroid/content/Context;

    .line 43
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/kinect/GestureManager;->Mutex:Ljava/lang/Integer;

    .line 44
    iput-object v2, p0, Lcom/oppo/kinect/GestureManager;->mService:Lcom/oppo/kinect/IOppoKinectService;

    .line 45
    iput-object v2, p0, Lcom/oppo/kinect/GestureManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 46
    iput-object v2, p0, Lcom/oppo/kinect/GestureManager;->mHandler:Landroid/os/Handler;

    .line 48
    new-instance v0, Lcom/oppo/kinect/GestureManager$1;

    invoke-direct {v0, p0}, Lcom/oppo/kinect/GestureManager$1;-><init>(Lcom/oppo/kinect/GestureManager;)V

    iput-object v0, p0, Lcom/oppo/kinect/GestureManager;->connection:Landroid/content/ServiceConnection;

    .line 71
    iput-object p1, p0, Lcom/oppo/kinect/GestureManager;->mContext:Landroid/content/Context;

    .line 72
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "GestureManager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oppo/kinect/GestureManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 73
    iget-object v0, p0, Lcom/oppo/kinect/GestureManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 74
    iget-object v0, p0, Lcom/oppo/kinect/GestureManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oppo/kinect/GestureManager;->initHandler(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/kinect/GestureManager;->mHandler:Landroid/os/Handler;

    .line 75
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v3, v3, v2}, Lcom/oppo/kinect/GestureManager;->sendMsg(IIILjava/lang/Object;)V

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/oppo/kinect/GestureManager;)Ljava/lang/Integer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/oppo/kinect/GestureManager;->Mutex:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oppo/kinect/GestureManager;)Lcom/oppo/kinect/IOppoKinectService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/oppo/kinect/GestureManager;->mService:Lcom/oppo/kinect/IOppoKinectService;

    return-object v0
.end method

.method static synthetic access$102(Lcom/oppo/kinect/GestureManager;Lcom/oppo/kinect/IOppoKinectService;)Lcom/oppo/kinect/IOppoKinectService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    iput-object p1, p0, Lcom/oppo/kinect/GestureManager;->mService:Lcom/oppo/kinect/IOppoKinectService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/oppo/kinect/GestureManager;)Landroid/content/ServiceConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/oppo/kinect/GestureManager;->connection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oppo/kinect/GestureManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/oppo/kinect/GestureManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/oppo/kinect/GestureManager;
    .locals 2
    .parameter "context"

    .prologue
    .line 79
    const-class v1, Lcom/oppo/kinect/GestureManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/oppo/kinect/GestureManager;->mGestureManager:Lcom/oppo/kinect/GestureManager;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lcom/oppo/kinect/GestureManager;

    invoke-direct {v0, p0}, Lcom/oppo/kinect/GestureManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oppo/kinect/GestureManager;->mGestureManager:Lcom/oppo/kinect/GestureManager;

    .line 82
    :cond_0
    sget-object v0, Lcom/oppo/kinect/GestureManager;->mGestureManager:Lcom/oppo/kinect/GestureManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 1
    .parameter "looper"

    .prologue
    .line 119
    new-instance v0, Lcom/oppo/kinect/GestureManager$2;

    invoke-direct {v0, p0, p1}, Lcom/oppo/kinect/GestureManager$2;-><init>(Lcom/oppo/kinect/GestureManager;Landroid/os/Looper;)V

    .line 192
    .local v0, handler:Landroid/os/Handler;
    return-object v0
.end method


# virtual methods
.method public disable(Lcom/oppo/kinect/GestureStateCallback;I)V
    .locals 2
    .parameter "cb"
    .parameter "gesture"

    .prologue
    .line 99
    if-eqz p1, :cond_0

    .line 100
    const/4 v0, 0x2

    const/4 v1, -0x1

    invoke-virtual {p0, v0, p2, v1, p1}, Lcom/oppo/kinect/GestureManager;->sendMsg(IIILjava/lang/Object;)V

    .line 102
    :cond_0
    return-void
.end method

.method public enable(Lcom/oppo/kinect/GestureStateCallback;I)V
    .locals 2
    .parameter "cb"
    .parameter "gesture"

    .prologue
    .line 93
    if-eqz p1, :cond_0

    .line 94
    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, p2, v1, p1}, Lcom/oppo/kinect/GestureManager;->sendMsg(IIILjava/lang/Object;)V

    .line 96
    :cond_0
    return-void
.end method

.method public getBroadcastName(I)Ljava/lang/String;
    .locals 1
    .parameter "gesture"

    .prologue
    .line 86
    if-ltz p1, :cond_0

    sget-object v0, Lcom/oppo/kinect/GestureManager;->BroadCastName:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 87
    sget-object v0, Lcom/oppo/kinect/GestureManager;->BroadCastName:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 89
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendMsg(IIILjava/lang/Object;)V
    .locals 2
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 113
    iget-object v1, p0, Lcom/oppo/kinect/GestureManager;->mHandler:Landroid/os/Handler;

    invoke-static {v1, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 114
    .local v0, message:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 115
    return-void
.end method

.method public setparameter(I[F)V
    .locals 2
    .parameter "gesture"
    .parameter "parameter"

    .prologue
    .line 109
    const/4 v0, 0x3

    const/4 v1, -0x1

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/oppo/kinect/GestureManager;->sendMsg(IIILjava/lang/Object;)V

    .line 110
    return-void
.end method

.method public unbindService()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/oppo/kinect/GestureManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oppo/kinect/GestureManager;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 106
    return-void
.end method
