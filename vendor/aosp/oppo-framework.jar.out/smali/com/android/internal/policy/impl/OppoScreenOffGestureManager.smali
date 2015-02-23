.class public Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;
.super Ljava/lang/Object;
.source "OppoScreenOffGestureManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/OppoScreenOffGestureManager$AnimationEndListener;,
        Lcom/android/internal/policy/impl/OppoScreenOffGestureManager$AnimationHandler;,
        Lcom/android/internal/policy/impl/OppoScreenOffGestureManager$AnimDataInfo;
    }
.end annotation


# static fields
.field private static final EXTRA_DATA_CAMERA:Ljava/lang/String; = "comeFrom"

.field private static final EXTRA_DATA_CAMERA_VALUE:Ljava/lang/String; = "mFromScreenGesture"

.field private static final EXTRA_DATA_GESTRUE:Ljava/lang/String; = "IsScreenoffGesture"

.field private static final EXTRA_DATA_SECURE_LOCK:Ljava/lang/String; = "IsSecureLock"

.field private static final INTENT_CAMERA:Ljava/lang/String; = "comeFromScreenTouch"

.field private static final MSG_DISPATCH_MEDIA_KEY_WITH_WAKE_LOCK:I = 0x3

.field private static final MSG_GESTURE_DESTROY_ANIMATION:I = 0x7d1

.field private static final MSG_GESTURE_HIDE_BLACK_BG:I = 0x7d4

.field private static final MSG_GESTURE_SHOW_ANIMATION:I = 0x7d0

.field private static final MSG_GESTURE_SHOW_BLACK_BG:I = 0x7d3

.field private static final MSG_GESTURE_WAKE_LOCK:I = 0x7d2

.field private static final NOTIFY_FACE_UNLOCK:Ljava/lang/String; = "oppo.intent.action.NOTIFY_FACE_UNLOCK"

.field private static final START_CAMERA:Ljava/lang/String; = "com.oppo.action.CAMERA"

.field private static final START_FLASHLIGHT:Ljava/lang/String; = "oppo.intent.action.START_LOCK_FLASHLIGHT"

.field private static TAG:Ljava/lang/String; = null

.field private static final WAIT_TIME_ANIM:I = 0x64

.field private static final WAIT_TIME_ANIM_CAMERA:I = 0x320

.field private static final WAIT_TIME_ANIM_FLASHLIGHT:I = 0x64

.field private static final WAIT_TIME_CPU_LOCK:I = 0x3e8

.field private static final WAIT_TIME_RELEASE_LOCK:I = 0x64


# instance fields
.field listener:Landroid/telephony/PhoneStateListener;

.field private mAnimCpuLock:Landroid/os/PowerManager$WakeLock;

.field private mAnimHandler:Landroid/os/Handler;

.field private mAnimWakeLock:Landroid/os/PowerManager$WakeLock;

.field mAnimWakeLockRunnable:Ljava/lang/Runnable;

.field private mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsInOffHook:Z

.field private mIsPhoneShow:Z

.field private mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mScreenOffBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mSmartWakeBlackView:Lcom/android/internal/policy/impl/OppoSmartWakeView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-string v0, "OppoScreenOffGestureManager"

    sput-object v0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;Landroid/os/PowerManager$WakeLock;)V
    .locals 5
    .parameter "context"
    .parameter "handler"
    .parameter "keyguardMediator"
    .parameter "broadcastWakeLock"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object v2, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mContext:Landroid/content/Context;

    .line 58
    iput-object v2, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mHandler:Landroid/os/Handler;

    .line 59
    iput-object v2, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mAnimHandler:Landroid/os/Handler;

    .line 60
    iput-object v2, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    .line 61
    iput-object v2, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 76
    iput-object v2, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mSmartWakeBlackView:Lcom/android/internal/policy/impl/OppoSmartWakeView;

    .line 77
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mIsPhoneShow:Z

    .line 78
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mIsInOffHook:Z

    .line 375
    new-instance v2, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager$1;-><init>(Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mAnimWakeLockRunnable:Ljava/lang/Runnable;

    .line 401
    new-instance v2, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager$2;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager$2;-><init>(Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mScreenOffBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 408
    new-instance v2, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager$3;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager$3;-><init>(Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->listener:Landroid/telephony/PhoneStateListener;

    .line 88
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mContext:Landroid/content/Context;

    .line 89
    iput-object p2, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mHandler:Landroid/os/Handler;

    .line 90
    iput-object p3, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    .line 91
    iput-object p4, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 93
    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mPowerManager:Landroid/os/PowerManager;

    .line 94
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mPowerManager:Landroid/os/PowerManager;

    const v3, 0x1000000a

    const-string v4, "OppoScreenOffGestureManager.mAnimWakeLock"

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mAnimWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 96
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mPowerManager:Landroid/os/PowerManager;

    const/4 v3, 0x1

    const-string v4, "OppoScreenOffGestureManager.mAnimCpuLock"

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mAnimCpuLock:Landroid/os/PowerManager$WakeLock;

    .line 99
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "OppoScreenOffGestureManager"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 100
    .local v1, thread:Landroid/os/HandlerThread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 101
    new-instance v2, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager$AnimationHandler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager$AnimationHandler;-><init>(Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mAnimHandler:Landroid/os/Handler;

    .line 103
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mScreenOffBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 105
    const-string v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 106
    .local v0, telephoneManager:Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->listener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x20

    invoke-virtual {v0, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 107
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;)Lcom/android/internal/policy/impl/OppoSmartWakeView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mSmartWakeBlackView:Lcom/android/internal/policy/impl/OppoSmartWakeView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;Lcom/android/internal/policy/impl/OppoSmartWakeView;)Lcom/android/internal/policy/impl/OppoSmartWakeView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mSmartWakeBlackView:Lcom/android/internal/policy/impl/OppoSmartWakeView;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mAnimWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mIsPhoneShow:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mIsPhoneShow:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;)Landroid/os/PowerManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mAnimHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mIsInOffHook:Z

    return p1
.end method

.method private offsetKey(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .locals 13
    .parameter "event"
    .parameter "keyCode"

    .prologue
    .line 289
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v8

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v9

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v10

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v11

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v12

    move v5, p2

    invoke-static/range {v0 .. v12}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v0

    return-object v0
.end method

.method private openScreenOffApp(Ljava/lang/String;)V
    .locals 4
    .parameter "strAppIntent"

    .prologue
    .line 248
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 249
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 250
    const/high16 v2, 0x80

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 251
    const-string v2, "IsScreenoffGesture"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 252
    const-string v2, "IsSecureLock"

    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->isSecure()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 253
    const-string v2, "com.oppo.action.CAMERA"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 254
    const-string v2, "comeFrom"

    const-string v3, "mFromScreenGesture"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    new-instance v1, Landroid/content/Intent;

    const-string v2, "comeFromScreenTouch"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 257
    .local v1, intentEx:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 259
    .end local v1           #intentEx:Landroid/content/Intent;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_1

    .line 262
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->sendBroadcastToFaceUnlock(Landroid/content/Context;)V

    .line 264
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 266
    :cond_1
    return-void
.end method

.method private sendBroadcastToFaceUnlock(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 271
    if-eqz p1, :cond_0

    .line 273
    new-instance v0, Landroid/content/Intent;

    const-string v1, "oppo.intent.action.NOTIFY_FACE_UNLOCK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 274
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "IsScreenoffGesture"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 275
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 277
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private sendMediaKey(Landroid/view/KeyEvent;I)V
    .locals 4
    .parameter "event"
    .parameter "keyCode"

    .prologue
    .line 281
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 282
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->offsetKey(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 284
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 285
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 286
    return-void
.end method

.method private sendStartAnim(III)V
    .locals 4
    .parameter "nMode"
    .parameter "nDelayedTime"
    .parameter "nWaitAnimTime"

    .prologue
    const/16 v3, 0x7d0

    .line 346
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mAnimHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 347
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mAnimHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mAnimHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager$AnimDataInfo;

    invoke-direct {v2, p0, p1}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager$AnimDataInfo;-><init>(Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;I)V

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 350
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mAnimHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mAnimWakeLockRunnable:Ljava/lang/Runnable;

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 351
    return-void
.end method


# virtual methods
.method dealScreenOffGesture(Landroid/view/KeyEvent;IZ)I
    .locals 9
    .parameter "event"
    .parameter "policyFlags"
    .parameter "isScreenOn"

    .prologue
    const/16 v8, 0x57

    const/16 v7, 0x55

    const/4 v3, 0x1

    const/16 v6, 0x64

    const/4 v4, 0x0

    .line 110
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 111
    .local v1, keyCode:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_0

    move v0, v3

    .line 112
    .local v0, down:Z
    :goto_0
    const v5, -0x40000001

    and-int/2addr p2, v5

    .line 113
    if-eqz p3, :cond_1

    .line 114
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->sendMessageHideBlackBg()V

    move v2, p2

    .line 207
    .end local p2
    .local v2, policyFlags:I
    :goto_1
    return v2

    .end local v0           #down:Z
    .end local v2           #policyFlags:I
    .restart local p2
    :cond_0
    move v0, v4

    .line 111
    goto :goto_0

    .line 118
    .restart local v0       #down:Z
    :cond_1
    if-eqz v0, :cond_4

    .line 119
    packed-switch v1, :pswitch_data_0

    :goto_2
    move v2, p2

    .line 207
    .end local p2
    .restart local v2       #policyFlags:I
    goto :goto_1

    .line 121
    .end local v2           #policyFlags:I
    .restart local p2
    :pswitch_0
    sget-object v3, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->TAG:Ljava/lang/String;

    const-string v4, "Press down F3 key"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->sendMessageHideBlackBg()V

    goto :goto_2

    .line 126
    :pswitch_1
    sget-object v5, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->TAG:Ljava/lang/String;

    const-string v6, "Press down F4 key"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const/16 v5, 0x320

    invoke-direct {p0, v3, v4, v5}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->sendStartAnim(III)V

    .line 128
    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mAnimCpuLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 129
    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->dismiss()V

    .line 130
    const-string v3, "com.oppo.action.CAMERA"

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->openScreenOffApp(Ljava/lang/String;)V

    goto :goto_2

    .line 134
    :pswitch_2
    sget-object v3, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->TAG:Ljava/lang/String;

    const-string v5, "Press down F5 key"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const/4 v3, 0x2

    invoke-direct {p0, v3, v4, v6}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->sendStartAnim(III)V

    .line 136
    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mAnimCpuLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 137
    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->dismiss()V

    .line 138
    const-string v3, "oppo.intent.action.START_LOCK_FLASHLIGHT"

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->openScreenOffApp(Ljava/lang/String;)V

    goto :goto_2

    .line 142
    :pswitch_3
    sget-object v3, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->TAG:Ljava/lang/String;

    const-string v5, "Press down F6 key"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const/4 v3, 0x6

    invoke-direct {p0, v3, v4, v6}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->sendStartAnim(III)V

    .line 144
    invoke-direct {p0, p1, v7}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->sendMediaKey(Landroid/view/KeyEvent;I)V

    goto :goto_2

    .line 148
    :pswitch_4
    sget-object v3, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->TAG:Ljava/lang/String;

    const-string v5, "Press down F7 key"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->isMusicActive()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 150
    const/4 v3, 0x4

    invoke-direct {p0, v3, v4, v6}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->sendStartAnim(III)V

    .line 151
    const/16 v3, 0x58

    invoke-direct {p0, p1, v3}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->sendMediaKey(Landroid/view/KeyEvent;I)V

    goto :goto_2

    .line 153
    :cond_2
    and-int/lit8 p2, p2, -0x2

    .line 154
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->sendMessageHideBlackBg()V

    goto :goto_2

    .line 159
    :pswitch_5
    sget-object v3, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->TAG:Ljava/lang/String;

    const-string v5, "Press down F8 key"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->isMusicActive()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 161
    const/4 v3, 0x5

    invoke-direct {p0, v3, v4, v6}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->sendStartAnim(III)V

    .line 162
    invoke-direct {p0, p1, v8}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->sendMediaKey(Landroid/view/KeyEvent;I)V

    goto/16 :goto_2

    .line 164
    :cond_3
    and-int/lit8 p2, p2, -0x2

    .line 165
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->sendMessageHideBlackBg()V

    goto/16 :goto_2

    .line 173
    :cond_4
    packed-switch v1, :pswitch_data_1

    goto/16 :goto_2

    .line 175
    :pswitch_6
    sget-object v3, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->TAG:Ljava/lang/String;

    const-string v4, "Press up F3 key"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 179
    :pswitch_7
    sget-object v3, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->TAG:Ljava/lang/String;

    const-string v4, "Press up F4 key"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 183
    :pswitch_8
    sget-object v3, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->TAG:Ljava/lang/String;

    const-string v4, "Press up F5 key"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 187
    :pswitch_9
    sget-object v3, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->TAG:Ljava/lang/String;

    const-string v4, "Press up F6 key"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-direct {p0, p1, v7}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->sendMediaKey(Landroid/view/KeyEvent;I)V

    goto/16 :goto_2

    .line 193
    :pswitch_a
    sget-object v3, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->TAG:Ljava/lang/String;

    const-string v4, "Press up F7 key"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const/16 v3, 0x58

    invoke-direct {p0, p1, v3}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->sendMediaKey(Landroid/view/KeyEvent;I)V

    goto/16 :goto_2

    .line 199
    :pswitch_b
    sget-object v3, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->TAG:Ljava/lang/String;

    const-string v4, "Press up F8 key"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-direct {p0, p1, v8}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->sendMediaKey(Landroid/view/KeyEvent;I)V

    goto/16 :goto_2

    .line 119
    :pswitch_data_0
    .packed-switch 0x85
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 173
    :pswitch_data_1
    .packed-switch 0x85
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method isGestureMediaKey(I)Z
    .locals 1
    .parameter "keyCode"

    .prologue
    .line 235
    const/16 v0, 0x89

    if-eq v0, p1, :cond_0

    const/16 v0, 0x8a

    if-ne v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isIgnoreProximityKey(I)Z
    .locals 1
    .parameter "keyCode"

    .prologue
    .line 221
    const/4 v0, 0x0

    return v0
.end method

.method isInOffHook()Z
    .locals 1

    .prologue
    .line 436
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mIsInOffHook:Z

    return v0
.end method

.method isMusicActive()Z
    .locals 3

    .prologue
    .line 385
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 386
    .local v0, am:Landroid/media/AudioManager;
    if-nez v0, :cond_0

    .line 387
    sget-object v1, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->TAG:Ljava/lang/String;

    const-string v2, "isMusicActive: couldn\'t get AudioManager reference"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    const/4 v1, 0x0

    .line 390
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    goto :goto_0
.end method

.method isScreenoffGestureKey(I)Z
    .locals 1
    .parameter "keyCode"

    .prologue
    .line 225
    const/16 v0, 0x85

    if-eq v0, p1, :cond_0

    const/16 v0, 0x86

    if-eq v0, p1, :cond_0

    const/16 v0, 0x87

    if-eq v0, p1, :cond_0

    const/16 v0, 0x88

    if-eq v0, p1, :cond_0

    const/16 v0, 0x89

    if-eq v0, p1, :cond_0

    const/16 v0, 0x8a

    if-eq v0, p1, :cond_0

    const/16 v0, 0xda

    if-ne v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isShowGestureAnimKey(I)Z
    .locals 1
    .parameter "keyCode"

    .prologue
    .line 240
    const/16 v0, 0x86

    if-eq v0, p1, :cond_0

    const/16 v0, 0x87

    if-eq v0, p1, :cond_0

    const/16 v0, 0x88

    if-eq v0, p1, :cond_0

    const/16 v0, 0x89

    if-eq v0, p1, :cond_0

    const/16 v0, 0x8a

    if-ne v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isWakeUpKey(I)Z
    .locals 1
    .parameter "keyCode"

    .prologue
    .line 211
    const/16 v0, 0x85

    if-eq v0, p1, :cond_0

    const/16 v0, 0xda

    if-ne v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method sendMessageHideBlackBg()V
    .locals 4

    .prologue
    .line 398
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mAnimHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mAnimHandler:Landroid/os/Handler;

    const/16 v2, 0x7d4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 399
    return-void
.end method

.method sendMessageShowBlackBg()V
    .locals 4

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mAnimHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mAnimHandler:Landroid/os/Handler;

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 395
    return-void
.end method
