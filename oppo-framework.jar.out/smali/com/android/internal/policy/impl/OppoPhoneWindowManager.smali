.class public Lcom/android/internal/policy/impl/OppoPhoneWindowManager;
.super Lcom/android/internal/policy/impl/PhoneWindowManager;
.source "OppoPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/OppoPhoneWindowManager$KeyLockModeReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_END_CALL:Ljava/lang/String; = "android.intent.action.END_CALL"

.field private static final ACTION_KEY_LOCK:Ljava/lang/String; = "com.oppo.intent.action.KEY_LOCK_MODE"

.field private static final ACTION_SCREEN_SHOT:Ljava/lang/String; = "oppo.intent.action.SCREEN_SHOT"

.field private static final DISMISS_KEYGUARD_NONE:I = 0x0
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_FIELD:Landroid/annotation/OppoHook$OppoHookType;
        note = "zhangkai@Plf.DesktopApp.Keyguard add for apklock"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation
.end field

.field private static final HOME_KEY_DOUBLE_CLICK_DETECT_TIME:I = 0xfa

.field private static final KEY_LOCK_MODE_HOME:I = 0x3

.field private static final KEY_LOCK_MODE_NORMAL:I = 0x0

.field private static final KEY_LOCK_MODE_POWER:I = 0x1

.field private static final KEY_LOCK_MODE_POWER_HOME:I = 0x2

.field static final KEY_OFFSET_VALUE:I = 0x320

.field private static final MAX_WAIT_TIME:I = 0x3e8

.field private static final OPPO_IGNORE_DRIVE_MODE:Ljava/lang/String; = "com.oppo.drivemode"

.field private static final OPPO_IGNORE_INCALL_SCREEN:Ljava/lang/String; = "com.android.phone/com.android.phone.OppoIgnoreInComingCallScreen"

.field private static final OPPO_IGNORE_SPEECH_ASSIST:Ljava/lang/String; = "com.oppo.speechassist"

.field private static final OPPO_INCALL_SCREEN:Ljava/lang/String; = "com.android.phone/com.android.phone.OppoInCallScreen"

.field private static final OPPO_SCREENSHOT_CHORD_DEBOUNCE_DELAY_MILLIS:J = 0x96L

.field private static final PROXIMITY_THRESHOLD:F = 2.0f

.field public static final START_SPEECH_DISABLE:Ljava/lang/String; = "com.oppo.intent.action.START_SPEECH_DISABLE"

.field public static final START_SPEECH_ENABLE:Ljava/lang/String; = "com.oppo.intent.action.START_SPEECH_ENABLE"

.field private static TAG:Ljava/lang/String; = null

.field private static final WAIT_FOR_START_TIME:J = 0x7d0L


# instance fields
.field private FORCE_RESUME_FOR_CHANGING_THEME:J

.field private final hideStatusBar:Ljava/lang/Runnable;
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_FIELD:Landroid/annotation/OppoHook$OppoHookType;
        note = "hejiamiao add for pull down status bar when full screen"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation
.end field

.field private isMute:Z

.field private lastHomeKeyTime:J
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_FIELD:Landroid/annotation/OppoHook$OppoHookType;
        note = "only for export machine"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation
.end field

.field listener:Landroid/telephony/PhoneStateListener;

.field private longPressMenuEnable:Z

.field private mApkLockScreenSyncObj:Ljava/lang/Object;
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_FIELD:Landroid/annotation/OppoHook$OppoHookType;
        note = "zhangkai@Plf.DesktopApp.Keyguard add for apklock"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation
.end field

.field mApkLockScreens:Ljava/util/ArrayList;
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_FIELD:Landroid/annotation/OppoHook$OppoHookType;
        note = "zhangkai@Plf.DesktopApp.Keyguard add for apklock"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/WindowManagerPolicy$WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentKeyMode:I

.field private mGestureManager:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

.field private final mHomeKeyTap:Ljava/lang/Runnable;
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->CHANGE_CODE:Landroid/annotation/OppoHook$OppoHookType;
        note = "only for export machine"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation
.end field

.field private final mKeyLockIntentProcess:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyLockModeReceiver:Lcom/android/internal/policy/impl/OppoPhoneWindowManager$KeyLockModeReceiver;

.field mOppoBaseReceiver:Landroid/content/BroadcastReceiver;

.field mOppoNarrowFrame:Landroid/hardware/input/OppoNarrowFrame;
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_FIELD:Landroid/annotation/OppoHook$OppoHookType;
        note = "liumei@Plf.Framework add for narrow frame 2013/05/17"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation
.end field

.field private mOppoPowerDownKeyConsumedByScreenshotChord:Z

.field private mOppoPowerKeyTime:J

.field private mOppoPowerKeyTriggered:Z

.field private mOppoScreenshotChordEnabled:Z

.field private mOppoVolumeDownKeyConsumedByScreenshotChord:Z

.field private mOppoVolumeDownKeyTime:J

.field private mOppoVolumeDownKeyTriggered:Z

.field private mOppoVolumeUpKeyTriggered:Z

.field private mPauseForChangingTheme:Z

.field mProximityListener:Landroid/hardware/SensorEventListener;

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mProximitySensorActive:Z

.field private mProximitySensorEnabled:Z

.field mResumeForChangingTheme:Ljava/lang/Runnable;

.field private mRingingTime:J

.field private mSensorManager:Landroid/hardware/SensorManager;

.field mShotScreenHelper:Lcom/android/internal/policy/impl/OppoShotScreenHelper;

.field private object:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 99
    const-string v0, "OppoPhoneWindowManager"

    sput-object v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 97
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;-><init>()V

    .line 107
    iput v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mCurrentKeyMode:I

    .line 110
    new-instance v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$KeyLockModeReceiver;

    invoke-direct {v0, p0, v3}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$KeyLockModeReceiver;-><init>(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;Lcom/android/internal/policy/impl/OppoPhoneWindowManager$1;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyLockModeReceiver:Lcom/android/internal/policy/impl/OppoPhoneWindowManager$KeyLockModeReceiver;

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyLockIntentProcess:Ljava/util/ArrayList;

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoScreenshotChordEnabled:Z

    .line 137
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->isMute:Z

    .line 139
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mPauseForChangingTheme:Z

    .line 140
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->FORCE_RESUME_FOR_CHANGING_THEME:J

    .line 144
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->longPressMenuEnable:Z

    .line 152
    iput-wide v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->lastHomeKeyTime:J

    .line 160
    iput-object v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mGestureManager:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    .line 163
    new-instance v0, Lcom/android/internal/policy/impl/OppoShotScreenHelper;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/OppoShotScreenHelper;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mShotScreenHelper:Lcom/android/internal/policy/impl/OppoShotScreenHelper;

    .line 164
    iput-object v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoNarrowFrame:Landroid/hardware/input/OppoNarrowFrame;

    .line 170
    iput-wide v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mRingingTime:J

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mApkLockScreens:Ljava/util/ArrayList;

    .line 189
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mApkLockScreenSyncObj:Ljava/lang/Object;

    .line 234
    new-instance v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$1;-><init>(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mResumeForChangingTheme:Ljava/lang/Runnable;

    .line 253
    new-instance v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$2;-><init>(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoBaseReceiver:Landroid/content/BroadcastReceiver;

    .line 1247
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mProximitySensorEnabled:Z

    .line 1248
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mProximitySensorActive:Z

    .line 1249
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->object:Ljava/lang/Object;

    .line 1254
    new-instance v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$4;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$4;-><init>(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mProximityListener:Landroid/hardware/SensorEventListener;

    .line 1313
    new-instance v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$5;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$5;-><init>(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHomeKeyTap:Ljava/lang/Runnable;

    .line 1393
    new-instance v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$6;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$6;-><init>(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->hideStatusBar:Ljava/lang/Runnable;

    .line 1548
    new-instance v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$7;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$7;-><init>(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->listener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyLockIntentProcess:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->object:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mProximitySensorActive:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mProximitySensorActive:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)Landroid/hardware/Sensor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mProximitySensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->setVideoMode(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mPauseForChangingTheme:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mPauseForChangingTheme:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 97
    iget-wide v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->FORCE_RESUME_FOR_CHANGING_THEME:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->isMute:Z

    return p1
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->longPressMenuEnable:Z

    return p1
.end method

.method static synthetic access$902(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-wide p1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mRingingTime:J

    return-wide p1
.end method

.method private adjustKey(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;
    .locals 4
    .parameter "event"

    .prologue
    .line 806
    move-object v1, p1

    .line 807
    .local v1, newEvent:Landroid/view/KeyEvent;
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 808
    .local v0, keyCode:I
    const/4 v2, 0x1

    iget v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mCurrentKeyMode:I

    if-ne v2, v3, :cond_1

    .line 809
    packed-switch v0, :pswitch_data_0

    .line 834
    :cond_0
    :goto_0
    return-object v1

    .line 811
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->offsetKey(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object v1

    .line 813
    goto :goto_0

    .line 816
    :cond_1
    const/4 v2, 0x2

    iget v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mCurrentKeyMode:I

    if-ne v2, v3, :cond_2

    .line 817
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 820
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->offsetKey(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object v1

    .line 822
    goto :goto_0

    .line 825
    :cond_2
    const/4 v2, 0x3

    iget v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mCurrentKeyMode:I

    if-ne v2, v3, :cond_0

    .line 826
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 828
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->offsetKey(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object v1

    .line 830
    goto :goto_0

    .line 809
    nop

    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_0
    .end packed-switch

    .line 817
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x1a -> :sswitch_0
    .end sparse-switch

    .line 826
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_1
    .end packed-switch
.end method

.method private cancelPendingPowerKeyAction()V
    .locals 2

    .prologue
    .line 873
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mPowerKeyHandled:Z

    if-nez v0, :cond_0

    .line 874
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 876
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoPowerKeyTriggered:Z

    if-eqz v0, :cond_1

    .line 877
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPendingPowerKeyUpCanceled:Z

    .line 879
    :cond_1
    return-void
.end method

.method private cancelPendingScreenshotChordAction()V
    .locals 2

    .prologue
    .line 867
    sget-object v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v1, "cancelPendingScreenshotChordAction"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotChordLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 870
    return-void
.end method

.method private closeFlashApp()V
    .locals 2

    .prologue
    .line 787
    new-instance v0, Landroid/content/Intent;

    const-string v1, "oppo.intent.action.STOP_LOCK_FLASHLIGHT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 788
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 789
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 791
    :cond_0
    return-void
.end method

.method private disableNotificationAlert()V
    .locals 3

    .prologue
    .line 997
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "statusbar"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 999
    .local v0, statusBarManager:Landroid/app/StatusBarManager;
    const/high16 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 1000
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 1001
    return-void
.end method

.method private disableProximitySensor()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1292
    sget-object v2, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v3, "disableProximitySensor"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mProximitySensorEnabled:Z

    if-eqz v2, :cond_0

    .line 1295
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1297
    .local v0, identity:J
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mProximityListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1298
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mProximitySensorEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1300
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1302
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mProximitySensorActive:Z

    if-eqz v2, :cond_0

    .line 1303
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mProximitySensorActive:Z

    .line 1306
    .end local v0           #identity:J
    :cond_0
    return-void

    .line 1300
    .restart local v0       #identity:J
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private enableProximitySensor()V
    .locals 6

    .prologue
    .line 1276
    sget-object v2, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v3, "enableProximitySensor"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mProximitySensorEnabled:Z

    if-nez v2, :cond_0

    .line 1279
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1281
    .local v0, identity:J
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mProximityListener:Landroid/hardware/SensorEventListener;

    iget-object v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 1284
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mProximitySensorEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1286
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1289
    .end local v0           #identity:J
    :cond_0
    return-void

    .line 1286
    .restart local v0       #identity:J
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private handleDoubleClickOnHome()V
    .locals 4
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->CHANGE_CODE:Landroid/annotation/OppoHook$OppoHookType;
        note = "only for export machine"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    .line 1330
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 1331
    .local v1, statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 1332
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->toggleRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1339
    .end local v1           #statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    :goto_0
    return-void

    .line 1334
    :catch_0
    move-exception v0

    .line 1335
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException when showing recent apps"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1337
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_0
.end method

.method private handleTelephone(Z)Z
    .locals 11
    .parameter "isScreenOn"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 953
    invoke-static {}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v5

    .line 954
    .local v5, telephonyService:Lcom/android/internal/telephony/ITelephony;
    const/4 v2, 0x0

    .line 955
    .local v2, hungUp:Z
    sget-object v9, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "telephonyService = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz v5, :cond_3

    move v6, v7

    :goto_0
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    if-eqz v5, :cond_2

    .line 958
    :try_start_0
    invoke-interface {v5}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 959
    iget-object v6, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v9, "audio"

    invoke-virtual {v6, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 961
    .local v0, am:Landroid/media/AudioManager;
    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v6

    if-nez v6, :cond_4

    move v3, v7

    .line 962
    .local v3, inSilence:Z
    :goto_1
    iget-object v6, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "call_vibrate_method"

    const/4 v10, 0x1

    invoke-static {v6, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_5

    move v4, v7

    .line 964
    .local v4, isNeverVibrate:Z
    :goto_2
    sget-object v6, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "inSilence::"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", isNeverVibrate::"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isMute="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->isMute:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->isMute:Z

    if-nez v6, :cond_6

    if-eqz v3, :cond_0

    if-nez v4, :cond_6

    .line 966
    :cond_0
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->isMute:Z

    .line 967
    const/4 v2, 0x1

    .line 968
    invoke-interface {v5}, Lcom/android/internal/telephony/ITelephony;->silenceRinger()V

    .line 983
    .end local v0           #am:Landroid/media/AudioManager;
    .end local v3           #inSilence:Z
    .end local v4           #isNeverVibrate:Z
    :goto_3
    const/4 v6, 0x5

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 984
    invoke-direct {p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->disableNotificationAlert()V

    :cond_1
    move v8, v2

    .line 993
    :cond_2
    :goto_4
    return v8

    :cond_3
    move v6, v8

    .line 955
    goto :goto_0

    .restart local v0       #am:Landroid/media/AudioManager;
    :cond_4
    move v3, v8

    .line 961
    goto :goto_1

    .restart local v3       #inSilence:Z
    :cond_5
    move v4, v8

    .line 962
    goto :goto_2

    .line 970
    .restart local v4       #isNeverVibrate:Z
    :cond_6
    invoke-interface {v5}, Lcom/android/internal/telephony/ITelephony;->endCall()Z

    move-result v2

    .line 971
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->isMute:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 987
    .end local v0           #am:Landroid/media/AudioManager;
    .end local v3           #inSilence:Z
    .end local v4           #isNeverVibrate:Z
    :catch_0
    move-exception v1

    .line 988
    .local v1, ex:Landroid/os/RemoteException;
    :try_start_1
    sget-object v6, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v7, "ITelephony threw RemoteException"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v8, v2

    .line 990
    goto :goto_4

    .line 973
    .end local v1           #ex:Landroid/os/RemoteException;
    :cond_7
    :try_start_2
    invoke-interface {v5}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v6

    if-eqz v6, :cond_8

    if-eqz p1, :cond_8

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIncallPowerBehavior:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_8

    .line 976
    invoke-interface {v5}, Lcom/android/internal/telephony/ITelephony;->endCall()Z

    move-result v2

    .line 977
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->isMute:Z

    goto :goto_3

    .line 990
    :catchall_0
    move-exception v6

    move v8, v2

    goto :goto_4

    .line 979
    :cond_8
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->isMute:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3
.end method

.method private interceptPowerKeyForTelephone(Landroid/view/KeyEvent;IZI)I
    .locals 7
    .parameter "event"
    .parameter "policyFlags"
    .parameter "isScreenOn"
    .parameter "result"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 884
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_3

    move v1, v3

    .line 886
    .local v1, down:Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    .line 888
    .local v0, canceled:Z
    and-int/lit8 p4, p4, -0x2

    .line 889
    if-eqz v1, :cond_4

    .line 893
    new-instance v2, Landroid/content/Intent;

    const-string v5, "SILENCE_ACTION_FOR_OPPO_SPEECH"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 894
    .local v2, it:Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 896
    if-eqz p3, :cond_0

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoPowerKeyTriggered:Z

    if-nez v5, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    and-int/lit16 v5, v5, 0x400

    if-nez v5, :cond_0

    .line 898
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoPowerKeyTriggered:Z

    .line 899
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoPowerKeyTime:J

    .line 900
    invoke-direct {p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->interceptScreenshotChord()V

    .line 929
    :cond_0
    if-eqz p3, :cond_1

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoVolumeDownKeyTriggered:Z

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoVolumeUpKeyTriggered:Z

    if-eqz v5, :cond_2

    :cond_1
    move v4, v3

    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerKeyDown(Z)V

    .line 949
    .end local v2           #it:Landroid/content/Intent;
    :goto_1
    return p4

    .end local v0           #canceled:Z
    .end local v1           #down:Z
    :cond_3
    move v1, v4

    .line 884
    goto :goto_0

    .line 934
    .restart local v0       #canceled:Z
    .restart local v1       #down:Z
    :cond_4
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mPowerKeyHandled:Z

    if-nez v5, :cond_5

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPendingPowerKeyUpCanceled:Z

    if-nez v5, :cond_5

    .line 935
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 936
    invoke-direct {p0, p3}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->handleTelephone(Z)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 937
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mPowerKeyHandled:Z

    .line 941
    :cond_5
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoPowerKeyTriggered:Z

    .line 942
    invoke-direct {p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 943
    if-nez v0, :cond_6

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPendingPowerKeyUpCanceled:Z

    if-eqz v5, :cond_8

    :cond_6
    :goto_2
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerKeyUp(Z)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 944
    and-int/lit8 v3, p4, -0x3

    or-int/lit8 p4, v3, 0x4

    .line 946
    :cond_7
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPendingPowerKeyUpCanceled:Z

    goto :goto_1

    :cond_8
    move v3, v4

    .line 943
    goto :goto_2
.end method

.method private interceptScreenshotChord()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 846
    sget-object v2, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "interceptScreenshotChord  mOppoVolumeDownKeyTriggered"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoVolumeDownKeyTriggered:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  mOppoPowerKeyTriggered"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoPowerKeyTriggered:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  mOppoVolumeUpKeyTriggered"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoVolumeUpKeyTriggered:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  mOppoVolumeDownKeyTime"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoVolumeDownKeyTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  mOppoPowerKeyTime"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoPowerKeyTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoScreenshotChordEnabled:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoVolumeDownKeyTriggered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoPowerKeyTriggered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoVolumeUpKeyTriggered:Z

    if-nez v2, :cond_0

    .line 854
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 855
    .local v0, now:J
    iget-wide v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoVolumeDownKeyTime:J

    const-wide/16 v4, 0x96

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-wide v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoPowerKeyTime:J

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 857
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoVolumeDownKeyConsumedByScreenshotChord:Z

    .line 858
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoPowerDownKeyConsumedByScreenshotChord:Z

    .line 860
    invoke-direct {p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 861
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotChordLongPress:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 864
    .end local v0           #now:J
    :cond_0
    return-void
.end method

.method private isLogKey(I)Z
    .locals 1
    .parameter "keyCode"

    .prologue
    .line 1538
    const/16 v0, 0x1a

    if-eq v0, p1, :cond_0

    const/16 v0, 0x19

    if-eq v0, p1, :cond_0

    const/16 v0, 0x18

    if-eq v0, p1, :cond_0

    const/16 v0, 0xa4

    if-eq v0, p1, :cond_0

    const/16 v0, 0x52

    if-eq v0, p1, :cond_0

    const/4 v0, 0x3

    if-eq v0, p1, :cond_0

    const/16 v0, 0x4f

    if-eq v0, p1, :cond_0

    const/4 v0, 0x4

    if-ne v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private longPressMenuKey()V
    .locals 3

    .prologue
    .line 1005
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1006
    .local v0, intentOppoAssist:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1007
    const-string v1, "com.oppo.speechassist.start_action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1008
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1009
    sget-object v1, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v2, "send broadcast com.oppo.speechassist.start_action to start speechassist."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    return-void
.end method

.method private offsetKey(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;
    .locals 13
    .parameter "event"

    .prologue
    .line 838
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    add-int/lit16 v5, v5, 0x320

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

    invoke-static/range {v0 .. v12}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v0

    return-object v0
.end method

.method private openFlashApp()V
    .locals 2

    .prologue
    .line 778
    new-instance v0, Landroid/content/Intent;

    const-string v1, "oppo.intent.action.START_LOCK_FLASHLIGHT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 779
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 780
    const/high16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 781
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 782
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 784
    :cond_0
    return-void
.end method

.method private setVideoMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 802
    iput p1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mCurrentKeyMode:I

    .line 803
    return-void
.end method


# virtual methods
.method public addStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;III)Landroid/view/View;
    .locals 13
    .parameter "appToken"
    .parameter "packageName"
    .parameter "theme"
    .parameter "compatInfo"
    .parameter "nonLocalizedLabel"
    .parameter "labelRes"
    .parameter "icon"
    .parameter "windowFlags"
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->CHANGE_CODE:Landroid/annotation/OppoHook$OppoHookType;
        note = "ZhiYong.Lin@Plf.Framework modify for preview"
    .end annotation

    .prologue
    .line 1022
    if-nez p2, :cond_1

    .line 1023
    const/4 v7, 0x0

    .line 1115
    :cond_0
    :goto_0
    return-object v7

    .line 1027
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1031
    .local v2, context:Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getThemeResId()I
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v10

    move/from16 v0, p3

    if-ne v0, v10, :cond_2

    if-eqz p6, :cond_3

    .line 1033
    :cond_2
    const/4 v10, 0x0

    :try_start_1
    invoke-virtual {v2, p2, v10}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    .line 1034
    move/from16 v0, p3

    invoke-virtual {v2, v0}, Landroid/content/Context;->setTheme(I)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1040
    :cond_3
    :goto_1
    :try_start_2
    invoke-static {v2}, Lcom/android/internal/policy/PolicyManager;->makeNewWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v8

    .line 1041
    .local v8, win:Landroid/view/Window;
    invoke-virtual {v8}, Landroid/view/Window;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v6

    .line 1042
    .local v6, ta:Landroid/content/res/TypedArray;
    const/16 v10, 0xc

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    if-nez v10, :cond_4

    const/16 v10, 0xe

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1044
    :cond_4
    const/4 v7, 0x0

    goto :goto_0

    .line 1047
    :cond_5
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1048
    .local v5, r:Landroid/content/res/Resources;
    move/from16 v0, p6

    move-object/from16 v1, p5

    invoke-virtual {v5, v0, v1}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 1050
    const/4 v10, 0x3

    invoke-virtual {v8, v10}, Landroid/view/Window;->setType(I)V

    .line 1055
    or-int/lit8 v10, p8, 0x10

    or-int/lit8 v10, v10, 0x8

    const/high16 v11, 0x2

    or-int/2addr v10, v11

    or-int/lit8 v11, p8, 0x10

    or-int/lit8 v11, v11, 0x8

    const/high16 v12, 0x2

    or-int/2addr v11, v12

    invoke-virtual {v8, v10, v11}, Landroid/view/Window;->setFlags(II)V

    .line 1062
    invoke-virtual/range {p4 .. p4}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v10

    if-nez v10, :cond_6

    .line 1063
    const/high16 v10, 0x2000

    invoke-virtual {v8, v10}, Landroid/view/Window;->addFlags(I)V

    .line 1066
    :cond_6
    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-virtual {v8, v10, v11}, Landroid/view/Window;->setLayout(II)V

    .line 1069
    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 1070
    .local v4, params:Landroid/view/WindowManager$LayoutParams;
    iput-object p1, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1071
    iput-object p2, v4, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1072
    invoke-virtual {v8}, Landroid/view/Window;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v10

    const/16 v11, 0x8

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    iput v10, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1074
    iget v10, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v10, v10, 0x1

    iput v10, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1075
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Starting "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1077
    const-string v10, "window"

    invoke-virtual {v2, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    .line 1078
    .local v9, wm:Landroid/view/WindowManager;
    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    .line 1080
    .local v7, view:Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/Window;->isFloating()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 1087
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 1094
    :cond_7
    invoke-interface {v9, v7, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1099
    invoke-static {v2, v7, p2}, Lcom/oppo/app/OppoPreviewUtils;->setPreviewRes(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    .line 1104
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    :try_end_2
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v10

    if-nez v10, :cond_0

    const/4 v7, 0x0

    goto/16 :goto_0

    .line 1105
    .end local v2           #context:Landroid/content/Context;
    .end local v4           #params:Landroid/view/WindowManager$LayoutParams;
    .end local v5           #r:Landroid/content/res/Resources;
    .end local v6           #ta:Landroid/content/res/TypedArray;
    .end local v7           #view:Landroid/view/View;
    .end local v8           #win:Landroid/view/Window;
    .end local v9           #wm:Landroid/view/WindowManager;
    :catch_0
    move-exception v3

    .line 1107
    .local v3, e:Landroid/view/WindowManager$BadTokenException;
    sget-object v10, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " already running, starting window not displayed"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    .end local v3           #e:Landroid/view/WindowManager$BadTokenException;
    :goto_2
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 1108
    :catch_1
    move-exception v3

    .line 1112
    .local v3, e:Ljava/lang/RuntimeException;
    sget-object v10, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " failed creating starting window"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1035
    .end local v3           #e:Ljava/lang/RuntimeException;
    .restart local v2       #context:Landroid/content/Context;
    :catch_2
    move-exception v10

    goto/16 :goto_1
.end method

.method public allowAppAnimationsLw()Z
    .locals 7
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
        note = "zhangkai@Plf.DesktopApp.Keyguard add for apklock"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1506
    const/4 v1, 0x0

    .line 1507
    .local v1, isAnim:Z
    const/4 v3, 0x0

    .line 1508
    .local v3, temp:Z
    iget-object v6, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mApkLockScreens:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManagerPolicy$WindowState;

    .line 1509
    .local v2, mApkLockScreen:Landroid/view/WindowManagerPolicy$WindowState;
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v6

    if-nez v6, :cond_1

    move v3, v5

    .line 1510
    :goto_1
    if-nez v1, :cond_0

    if-eqz v3, :cond_2

    :cond_0
    move v1, v5

    :goto_2
    goto :goto_0

    :cond_1
    move v3, v4

    .line 1509
    goto :goto_1

    :cond_2
    move v1, v4

    .line 1510
    goto :goto_2

    .line 1513
    .end local v2           #mApkLockScreen:Landroid/view/WindowManagerPolicy$WindowState;
    :cond_3
    if-eqz v1, :cond_4

    .line 1516
    :goto_3
    return v4

    :cond_4
    invoke-super {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->allowAppAnimationsLw()Z

    move-result v4

    goto :goto_3
.end method

.method public canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z
    .locals 2
    .parameter "win"
    .parameter "attrs"
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
        note = "zhangkai@Plf.DesktopApp.Keyguard add for apklock"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    .line 1464
    const/16 v0, 0x898

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v0, v1, :cond_0

    .line 1465
    const/4 v0, 0x0

    .line 1467
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    goto :goto_0
.end method

.method public checkAddPermission(Landroid/view/WindowManager$LayoutParams;)I
    .locals 4
    .parameter "attrs"
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
        note = "zhangkai@Plf.DesktopApp.Keyguard add for apklock"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1415
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1417
    .local v1, type:I
    const/16 v3, 0x7d0

    if-lt v1, v3, :cond_0

    const/16 v3, 0xbb7

    if-le v1, v3, :cond_1

    .line 1426
    :cond_0
    :goto_0
    return v2

    .line 1421
    :cond_1
    const/4 v0, 0x0

    .line 1422
    .local v0, permission:Ljava/lang/String;
    const/16 v3, 0x898

    if-eq v3, v1, :cond_0

    const/16 v3, 0x7da

    if-eq v3, v1, :cond_0

    .line 1426
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->checkAddPermission(Landroid/view/WindowManager$LayoutParams;)I

    move-result v2

    goto :goto_0
.end method

.method public doesForceHide(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z
    .locals 6
    .parameter "win"
    .parameter "attrs"
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
        note = "zhangkai@Plf.DesktopApp.Keyguard add for apklock"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    const/16 v5, 0x898

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1449
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttachedWindow()Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v1

    .line 1450
    .local v1, parent:Landroid/view/WindowManagerPolicy$WindowState;
    const/4 v0, 0x0

    .line 1451
    .local v0, isParentLock:Z
    if-eqz v1, :cond_0

    .line 1452
    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v4, v5, :cond_3

    move v0, v2

    .line 1455
    :cond_0
    :goto_0
    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v4, v5, :cond_1

    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->doesForceHide(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    move v3, v2

    :cond_2
    return v3

    :cond_3
    move v0, v3

    .line 1452
    goto :goto_0
.end method

.method public finishPostLayoutPolicyLw()I
    .locals 9
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->CHANGE_CODE:Landroid/annotation/OppoHook$OppoHookType;
        note = "liumei@Plf.Framework add for narrow frame 2013/05/17,zhangkai@Plf.DesktopApp.Keyguard add for apklock"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1151
    const/4 v0, 0x0

    .line 1155
    .local v0, changes:I
    sget-object v4, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "finishPostLayoutPolicyLw size ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mApkLockScreens:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    iget-object v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mApkLockScreens:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManagerPolicy$WindowState;

    .line 1158
    .local v3, mApkLockScreen:Landroid/view/WindowManagerPolicy$WindowState;
    if-eqz v3, :cond_0

    .line 1162
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:I

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->isSecure()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1163
    invoke-interface {v3, v7}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1164
    or-int/lit8 v0, v0, 0x7

    .line 1168
    :cond_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1169
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$3;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$3;-><init>(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1175
    :cond_2
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    if-eqz v4, :cond_4

    .line 1178
    invoke-interface {v3, v7}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1179
    or-int/lit8 v0, v0, 0x7

    .line 1183
    :cond_3
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    if-eqz v4, :cond_0

    .line 1184
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    invoke-virtual {v4, v7}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->setHidden(Z)V

    goto :goto_0

    .line 1190
    :cond_4
    invoke-interface {v3, v8}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1191
    or-int/lit8 v0, v0, 0x7

    .line 1195
    :cond_5
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    invoke-virtual {v4, v8}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->setHidden(Z)V

    goto :goto_0

    .line 1200
    .end local v3           #mApkLockScreen:Landroid/view/WindowManagerPolicy$WindowState;
    :cond_6
    invoke-super {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->finishPostLayoutPolicyLw()I

    move-result v4

    or-int/2addr v0, v4

    .line 1207
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoNarrowFrame:Landroid/hardware/input/OppoNarrowFrame;

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopIsFullscreen:Z

    invoke-virtual {v4, v5}, Landroid/hardware/input/OppoNarrowFrame;->setNarrowFrameFullScreen(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1212
    :goto_1
    return v0

    .line 1208
    :catch_0
    move-exception v1

    .line 1209
    .local v1, e:Landroid/os/RemoteException;
    sget-object v4, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OppoPhoneWindowManager OppoNarrowFrame setNarrowFrameFullScreen is wrong , because of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 8
    .parameter "context"
    .parameter "windowManager"
    .parameter "windowManagerFuncs"

    .prologue
    .line 289
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V

    .line 295
    new-instance v3, Landroid/hardware/input/OppoNarrowFrame;

    invoke-direct {v3, p1}, Landroid/hardware/input/OppoNarrowFrame;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoNarrowFrame:Landroid/hardware/input/OppoNarrowFrame;

    .line 297
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 298
    .local v1, keyModeFilter:Landroid/content/IntentFilter;
    const-string v3, "com.oppo.intent.action.KEY_LOCK_MODE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 299
    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyLockModeReceiver:Lcom/android/internal/policy/impl/OppoPhoneWindowManager$KeyLockModeReceiver;

    invoke-virtual {p1, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 301
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 302
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.END_CALL"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 303
    const-string v3, "com.oppo.intent.action.START_SPEECH_ENABLE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 304
    const-string v3, "com.oppo.intent.action.START_SPEECH_DISABLE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 307
    const-string v3, "oppo.intent.action.SCREEN_SHOT"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 310
    const-string v3, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 312
    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoBaseReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 314
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    .line 317
    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mShotScreenHelper:Lcom/android/internal/policy/impl/OppoShotScreenHelper;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/policy/impl/OppoShotScreenHelper;->init(Landroid/os/Handler;Landroid/content/Context;)V

    .line 319
    new-instance v3, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    iget-object v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;Landroid/os/PowerManager$WakeLock;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mGestureManager:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    .line 321
    const-string v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 322
    .local v2, telephoneManager:Landroid/telephony/TelephonyManager;
    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->listener:Landroid/telephony/PhoneStateListener;

    const/16 v4, 0x20

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 325
    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "oppo.disable.small.window.leather"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 326
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidControlsSleep:Z

    .line 328
    :cond_0
    return-void
.end method

.method public interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .locals 28
    .parameter "win"
    .parameter "event"
    .parameter "policyFlags"
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
        note = "zhangkai@Plf.DesktopApp.Keyguard add for FlashLight"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    .line 591
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v24

    if-nez v24, :cond_2

    const/4 v6, 0x1

    .line 595
    .local v6, down1:Z
    :goto_0
    if-nez v6, :cond_0

    .line 596
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->closeFlashApp()V

    .line 601
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v24

    if-nez v24, :cond_3

    const/4 v5, 0x1

    .line 602
    .local v5, down:Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v12

    .line 603
    .local v12, keyCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v9

    .line 604
    .local v9, flags:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    .line 605
    .local v3, canceled:Z
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v19

    .line 607
    .local v19, repeatCount:I
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->isLogKey(I)Z

    move-result v24

    if-eqz v24, :cond_1

    .line 608
    sget-object v24, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "interceptKeyBeforeDispatching key: win="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "  event = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoScreenshotChordEnabled:Z

    move/from16 v24, v0

    if-eqz v24, :cond_9

    and-int/lit16 v0, v9, 0x400

    move/from16 v24, v0

    if-nez v24, :cond_9

    .line 613
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoVolumeDownKeyTriggered:Z

    move/from16 v24, v0

    if-eqz v24, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoPowerKeyTriggered:Z

    move/from16 v24, v0

    if-nez v24, :cond_4

    .line 614
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    .line 615
    .local v15, now:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoVolumeDownKeyTime:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x96

    add-long v22, v24, v26

    .line 617
    .local v22, timeoutTime:J
    cmp-long v24, v15, v22

    if-gez v24, :cond_4

    .line 618
    sub-long v24, v22, v15

    .line 772
    .end local v15           #now:J
    .end local v22           #timeoutTime:J
    :goto_2
    return-wide v24

    .line 591
    .end local v3           #canceled:Z
    .end local v5           #down:Z
    .end local v6           #down1:Z
    .end local v9           #flags:I
    .end local v12           #keyCode:I
    .end local v19           #repeatCount:I
    :cond_2
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 601
    .restart local v6       #down1:Z
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 622
    .restart local v3       #canceled:Z
    .restart local v5       #down:Z
    .restart local v9       #flags:I
    .restart local v12       #keyCode:I
    .restart local v19       #repeatCount:I
    :cond_4
    const/16 v24, 0x1a

    move/from16 v0, v24

    if-ne v12, v0, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoPowerKeyTriggered:Z

    move/from16 v24, v0

    if-eqz v24, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoVolumeDownKeyTriggered:Z

    move/from16 v24, v0

    if-nez v24, :cond_5

    .line 624
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    .line 625
    .restart local v15       #now:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoPowerKeyTime:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x3e8

    add-long v22, v24, v26

    .line 626
    .restart local v22       #timeoutTime:J
    cmp-long v24, v15, v22

    if-gez v24, :cond_5

    .line 627
    sub-long v24, v22, v15

    goto :goto_2

    .line 631
    .end local v15           #now:J
    .end local v22           #timeoutTime:J
    :cond_5
    const/16 v24, 0x19

    move/from16 v0, v24

    if-ne v12, v0, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoVolumeDownKeyConsumedByScreenshotChord:Z

    move/from16 v24, v0

    if-eqz v24, :cond_7

    .line 633
    if-nez v5, :cond_6

    .line 634
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoVolumeDownKeyConsumedByScreenshotChord:Z

    .line 636
    :cond_6
    const-wide/16 v24, -0x1

    goto :goto_2

    .line 639
    :cond_7
    const/16 v24, 0x1a

    move/from16 v0, v24

    if-ne v12, v0, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoPowerDownKeyConsumedByScreenshotChord:Z

    move/from16 v24, v0

    if-eqz v24, :cond_9

    .line 641
    if-nez v5, :cond_8

    .line 642
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoPowerDownKeyConsumedByScreenshotChord:Z

    .line 644
    :cond_8
    const-wide/16 v24, -0x1

    goto :goto_2

    .line 649
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->adjustKey(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object v14

    .line 651
    .local v14, newEvent:Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->isLogKey(I)Z

    move-result v24

    if-eqz v24, :cond_a

    .line 652
    sget-object v24, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "interceptKeyBeforeDispatching newEvent keyCode = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v14}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    :cond_a
    invoke-virtual {v14}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v24

    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_17

    .line 658
    if-nez v5, :cond_13

    .line 659
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeLongPressed:Z

    .line 662
    .local v10, homeWasLongPressed:Z
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->closeFlashApp()V

    .line 665
    if-nez v10, :cond_13

    .line 666
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    .line 667
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeLongPressed:Z

    .line 669
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v20

    .line 670
    .local v20, statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v20, :cond_b

    .line 671
    invoke-interface/range {v20 .. v20}, Lcom/android/internal/statusbar/IStatusBarService;->cancelPreloadRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 679
    .end local v20           #statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    :cond_b
    :goto_3
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    .line 680
    if-nez v3, :cond_12

    .line 684
    const/4 v11, 0x0

    .line 686
    .local v11, incomingRinging:Z
    :try_start_1
    invoke-static {}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v21

    .line 687
    .local v21, telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-eqz v21, :cond_c

    .line 688
    invoke-interface/range {v21 .. v21}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v11

    .line 694
    .end local v21           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_c
    :goto_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    .line 695
    .local v17, nowTime:J
    if-eqz v11, :cond_f

    if-eqz p1, :cond_d

    const-string v24, "com.android.phone/com.android.phone.OppoInCallScreen"

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_e

    const-string v24, "com.android.phone/com.android.phone.OppoIgnoreInComingCallScreen"

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_e

    :cond_d
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mRingingTime:J

    move-wide/from16 v24, v0

    sub-long v24, v17, v24

    const-wide/16 v26, 0x7d0

    cmp-long v24, v24, v26

    if-gez v24, :cond_f

    .line 699
    :cond_e
    sget-object v24, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v25, "Ignoring HOME; there\'s a ringing incoming call."

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    .end local v11           #incomingRinging:Z
    .end local v17           #nowTime:J
    :goto_5
    const-wide/16 v24, -0x1

    goto/16 :goto_2

    .line 673
    :catch_0
    move-exception v7

    .line 674
    .local v7, e:Landroid/os/RemoteException;
    sget-object v24, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v25, "RemoteException when showing recent apps"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 676
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_3

    .line 690
    .end local v7           #e:Landroid/os/RemoteException;
    .restart local v11       #incomingRinging:Z
    :catch_1
    move-exception v8

    .line 691
    .local v8, ex:Landroid/os/RemoteException;
    sget-object v24, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v25, "RemoteException from getPhoneInterface()"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 713
    .end local v8           #ex:Landroid/os/RemoteException;
    .restart local v17       #nowTime:J
    :cond_f
    const-string v24, "persist.sys.oppo.region"

    const-string v25, "CN"

    invoke-static/range {v24 .. v25}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 715
    .local v4, currRegion:Ljava/lang/String;
    const-string v24, "CN"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_11

    .line 716
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    .line 718
    .restart local v15       #now:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->lastHomeKeyTime:J

    move-wide/from16 v24, v0

    sub-long v24, v15, v24

    const-wide/16 v26, 0xfa

    cmp-long v24, v24, v26

    if-gez v24, :cond_10

    .line 719
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHomeKeyTap:Ljava/lang/Runnable;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 720
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->handleDoubleClickOnHome()V

    .line 725
    :goto_6
    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->lastHomeKeyTime:J

    goto :goto_5

    .line 722
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHomeKeyTap:Ljava/lang/Runnable;

    move-object/from16 v25, v0

    const-wide/16 v26, 0xfa

    invoke-virtual/range {v24 .. v27}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_6

    .line 727
    .end local v15           #now:J
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->launchHomeFromHotKey()V

    goto :goto_5

    .line 732
    .end local v4           #currRegion:Ljava/lang/String;
    .end local v11           #incomingRinging:Z
    .end local v17           #nowTime:J
    :cond_12
    sget-object v24, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v25, "Ignoring HOME; event canceled."

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 739
    .end local v10           #homeWasLongPressed:Z
    :cond_13
    const/4 v13, 0x0

    .line 740
    .local v13, keyguardOn:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    move-object/from16 v24, v0

    if-eqz v24, :cond_14

    .line 741
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v13

    .line 744
    :cond_14
    if-eqz v5, :cond_15

    if-eqz v13, :cond_15

    .line 745
    if-nez v19, :cond_16

    .line 757
    :cond_15
    invoke-super/range {p0 .. p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v24

    goto/16 :goto_2

    .line 747
    :cond_16
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v24

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0x80

    move/from16 v24, v0

    if-eqz v24, :cond_15

    .line 750
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->closeFlashApp()V

    .line 751
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->openFlashApp()V

    .line 752
    const-wide/16 v24, -0x1

    goto/16 :goto_2

    .line 761
    .end local v13           #keyguardOn:Z
    :cond_17
    const/16 v24, 0x52

    move/from16 v0, v24

    if-ne v12, v0, :cond_18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->longPressMenuEnable:Z

    move/from16 v24, v0

    if-eqz v24, :cond_18

    .line 762
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardOn()Z

    move-result v13

    .line 763
    .restart local v13       #keyguardOn:Z
    if-eqz v5, :cond_18

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v24

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0x80

    move/from16 v24, v0

    if-eqz v24, :cond_18

    if-nez v13, :cond_18

    .line 765
    if-eqz p1, :cond_18

    const-string v24, "com.oppo.speechassist"

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v25

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_18

    const-string v24, "com.oppo.drivemode"

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v25

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_18

    .line 767
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->longPressMenuKey()V

    .line 772
    .end local v13           #keyguardOn:Z
    :cond_18
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-super {v0, v1, v14, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v24

    goto/16 :goto_2
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I
    .locals 20
    .parameter "event"
    .parameter "policyFlags"
    .parameter "isScreenOn"

    .prologue
    .line 333
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v10

    .line 334
    .local v10, keyCode:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v16

    if-nez v16, :cond_1

    const/4 v5, 0x1

    .line 336
    .local v5, down:Z
    :goto_0
    const/4 v14, 0x0

    .line 338
    .local v14, result:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mGestureManager:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->isShowGestureAnimKey(I)Z

    move-result v16

    if-eqz v16, :cond_0

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mGestureManager:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->isInOffHook()Z

    move-result v16

    if-nez v16, :cond_0

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mGestureManager:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->isGestureMediaKey(I)Z

    move-result v16

    if-eqz v16, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mGestureManager:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->isMusicActive()Z

    move-result v16

    if-nez v16, :cond_2

    .line 347
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-object/from16 v16, v0

    if-eqz v16, :cond_3

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getPRStatus()Z

    move-result v16

    if-eqz v16, :cond_3

    .line 349
    sget-object v16, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v17, "OppoPhoneWindowManager block key at shutdown/restart sequence"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    const/16 v16, 0x0

    .line 583
    :goto_2
    return v16

    .line 334
    .end local v5           #down:Z
    .end local v14           #result:I
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 341
    .restart local v5       #down:Z
    .restart local v14       #result:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mGestureManager:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->sendMessageShowBlackBg()V

    goto :goto_1

    .line 356
    :cond_3
    const/16 v16, 0x1a

    move/from16 v0, v16

    if-ne v0, v10, :cond_10

    .line 357
    invoke-static {}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v15

    .line 358
    .local v15, telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-eqz v15, :cond_10

    .line 360
    :try_start_0
    invoke-interface {v15}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v16

    if-nez v16, :cond_4

    invoke-interface {v15}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v16

    if-nez v16, :cond_4

    const/16 v16, 0x5

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v16

    if-eqz v16, :cond_10

    .line 363
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v4

    .line 365
    .local v4, canceled:Z
    const/high16 v16, 0x100

    and-int v16, v16, p2

    if-eqz v16, :cond_5

    const/4 v7, 0x1

    .line 373
    .local v7, isInjected:Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    move-object/from16 v16, v0

    if-nez v16, :cond_6

    const/4 v11, 0x0

    .line 377
    .local v11, keyguardActive:Z
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBooted:Z

    move/from16 v16, v0

    if-nez v16, :cond_8

    .line 379
    const/16 v16, 0x0

    goto :goto_2

    .line 365
    .end local v7           #isInjected:Z
    .end local v11           #keyguardActive:Z
    :cond_5
    const/4 v7, 0x0

    goto :goto_3

    .line 373
    .restart local v7       #isInjected:Z
    :cond_6
    if-eqz p3, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v11

    goto :goto_4

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->isShowing()Z

    move-result v11

    goto :goto_4

    .line 387
    .restart local v11       #keyguardActive:Z
    :cond_8
    if-eqz v5, :cond_9

    move/from16 v0, p2

    and-int/lit16 v0, v0, 0x100

    move/from16 v16, v0

    if-eqz v16, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v16

    if-nez v16, :cond_9

    .line 389
    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 393
    :cond_9
    const/16 v16, 0x1a

    move/from16 v0, v16

    if-ne v10, v0, :cond_a

    .line 394
    or-int/lit8 p2, p2, 0x1

    .line 396
    :cond_a
    and-int/lit8 v16, p2, 0x3

    if-eqz v16, :cond_e

    const/4 v8, 0x1

    .line 410
    .local v8, isWakeKey:Z
    :goto_5
    if-eqz p3, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadless:Z

    move/from16 v16, v0

    if-eqz v16, :cond_c

    :cond_b
    if-eqz v7, :cond_f

    if-nez v8, :cond_f

    .line 413
    :cond_c
    const/4 v14, 0x1

    .line 431
    :cond_d
    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v14}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->interceptPowerKeyForTelephone(Landroid/view/KeyEvent;IZI)I

    move-result v14

    move/from16 v16, v14

    .line 433
    goto/16 :goto_2

    .line 396
    .end local v8           #isWakeKey:Z
    :cond_e
    const/4 v8, 0x0

    goto :goto_5

    .line 417
    .restart local v8       #isWakeKey:Z
    :cond_f
    const/4 v14, 0x0

    .line 418
    if-eqz v5, :cond_d

    if-eqz v8, :cond_d

    .line 419
    if-eqz v11, :cond_12

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->onWakeKeyWhenKeyguardShowingTq(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    .line 435
    .end local v4           #canceled:Z
    .end local v7           #isInjected:Z
    .end local v8           #isWakeKey:Z
    .end local v11           #keyguardActive:Z
    :catch_0
    move-exception v6

    .line 436
    .local v6, ex:Landroid/os/RemoteException;
    sget-object v16, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v17, "ITelephony threw RemoteException"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 442
    .end local v6           #ex:Landroid/os/RemoteException;
    .end local v15           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_10
    const/16 v16, 0x19

    move/from16 v0, v16

    if-eq v0, v10, :cond_11

    const/16 v16, 0x18

    move/from16 v0, v16

    if-eq v0, v10, :cond_11

    const/16 v16, 0xa4

    move/from16 v0, v16

    if-ne v0, v10, :cond_14

    .line 445
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBooted:Z

    move/from16 v16, v0

    if-nez v16, :cond_13

    .line 447
    const/16 v16, 0x0

    goto/16 :goto_2

    .line 425
    .restart local v4       #canceled:Z
    .restart local v7       #isInjected:Z
    .restart local v8       #isWakeKey:Z
    .restart local v11       #keyguardActive:Z
    .restart local v15       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_12
    or-int/lit8 v14, v14, 0x2

    goto :goto_6

    .line 450
    .end local v4           #canceled:Z
    .end local v7           #isInjected:Z
    .end local v8           #isWakeKey:Z
    .end local v11           #keyguardActive:Z
    .end local v15           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_13
    if-eqz v5, :cond_14

    .line 451
    invoke-static {}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v15

    .line 452
    .restart local v15       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-eqz v15, :cond_14

    .line 456
    new-instance v9, Landroid/content/Intent;

    const-string v16, "SILENCE_ACTION_FOR_OPPO_SPEECH"

    move-object/from16 v0, v16

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 457
    .local v9, it:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 458
    sget-object v16, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v17, "send broadcast silence action for speechassist."

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :try_start_1
    invoke-interface {v15}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v16

    if-eqz v16, :cond_14

    .line 473
    .end local v9           #it:Landroid/content/Intent;
    .end local v15           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_14
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mGestureManager:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->isScreenoffGestureKey(I)Z

    move-result v16

    if-eqz v16, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mGestureManager:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->isInOffHook()Z

    move-result v16

    if-nez v16, :cond_17

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mGestureManager:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->isIgnoreProximityKey(I)Z

    move-result v16

    if-nez v16, :cond_1d

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->object:Ljava/lang/Object;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 476
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->enableProximitySensor()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 479
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->object:Ljava/lang/Object;

    move-object/from16 v16, v0

    const-wide/16 v18, 0x3e8

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    .line 484
    :goto_8
    :try_start_4
    sget-object v16, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "mProximitySensorActive = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mProximitySensorActive:Z

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mGestureManager:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->isWakeUpKey(I)Z

    move-result v16

    if-eqz v16, :cond_15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mProximitySensorActive:Z

    move/from16 v16, v0

    if-nez v16, :cond_15

    if-eqz v5, :cond_15

    .line 486
    or-int/lit8 p2, p2, 0x1

    .line 487
    and-int/lit8 v14, v14, -0x2

    .line 489
    const-string v16, "oppo.dt.wakeupnum"

    const-string v18, "oppo.dt.wakeupnum"

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v18

    add-int/lit8 v18, v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mProximitySensorActive:Z

    move/from16 v16, v0

    if-nez v16, :cond_1c

    .line 494
    if-eqz v5, :cond_16

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mGestureManager:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->isGestureMediaKey(I)Z

    move-result v16

    if-eqz v16, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mGestureManager:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->isMusicActive()Z

    move-result v16

    if-nez v16, :cond_1b

    .line 500
    :cond_16
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mGestureManager:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->dealScreenOffGesture(Landroid/view/KeyEvent;IZ)I

    move-result p2

    .line 505
    :goto_a
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->disableProximitySensor()V

    .line 506
    monitor-exit v17
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 520
    :cond_17
    :goto_b
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->adjustKey(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object v12

    .line 522
    .local v12, newEvent:Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->isLogKey(I)Z

    move-result v16

    if-eqz v16, :cond_18

    .line 523
    sget-object v16, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "interceptKeyBeforeQueueing"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v12}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :cond_18
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-super {v0, v12, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I

    move-result v14

    .line 533
    invoke-virtual {v12}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v13

    .line 534
    .local v13, newKeyCode:I
    invoke-virtual {v12}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v4

    .line 535
    .restart local v4       #canceled:Z
    const/16 v16, 0x33a

    move/from16 v0, v16

    if-ne v0, v13, :cond_25

    .line 536
    and-int/lit8 v14, v14, 0x1

    .line 537
    if-eqz v5, :cond_21

    .line 538
    if-eqz p3, :cond_19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoPowerKeyTriggered:Z

    move/from16 v16, v0

    if-nez v16, :cond_19

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v16

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0x400

    move/from16 v16, v0

    if-nez v16, :cond_19

    .line 540
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoPowerKeyTriggered:Z

    .line 541
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v16

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoPowerKeyTime:J

    .line 542
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoPowerDownKeyConsumedByScreenshotChord:Z

    .line 544
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->interceptScreenshotChord()V

    .line 546
    :cond_19
    if-nez p3, :cond_20

    const/16 v16, 0x1

    :goto_c
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerKeyDown(Z)V

    :cond_1a
    :goto_d
    move/from16 v16, v14

    .line 583
    goto/16 :goto_2

    .line 464
    .end local v4           #canceled:Z
    .end local v12           #newEvent:Landroid/view/KeyEvent;
    .end local v13           #newKeyCode:I
    .restart local v9       #it:Landroid/content/Intent;
    .restart local v15       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :catch_1
    move-exception v6

    .line 465
    .restart local v6       #ex:Landroid/os/RemoteException;
    sget-object v16, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v17, "ITelephony threw RemoteException"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 497
    .end local v6           #ex:Landroid/os/RemoteException;
    .end local v9           #it:Landroid/content/Intent;
    .end local v15           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_1b
    const/16 v16, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    :try_start_5
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    goto/16 :goto_9

    .line 506
    :catchall_0
    move-exception v16

    monitor-exit v17
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v16

    .line 502
    :cond_1c
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mGestureManager:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->sendMessageHideBlackBg()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_a

    .line 509
    :cond_1d
    if-eqz v5, :cond_1e

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mGestureManager:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->isGestureMediaKey(I)Z

    move-result v16

    if-eqz v16, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mGestureManager:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->isMusicActive()Z

    move-result v16

    if-nez v16, :cond_1f

    .line 515
    :cond_1e
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mGestureManager:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->dealScreenOffGesture(Landroid/view/KeyEvent;IZ)I

    move-result p2

    goto/16 :goto_b

    .line 512
    :cond_1f
    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    goto :goto_e

    .line 546
    .restart local v4       #canceled:Z
    .restart local v12       #newEvent:Landroid/view/KeyEvent;
    .restart local v13       #newKeyCode:I
    :cond_20
    const/16 v16, 0x0

    goto :goto_c

    .line 550
    :cond_21
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoPowerKeyTriggered:Z

    .line 551
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 552
    if-nez v4, :cond_22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPendingPowerKeyUpCanceled:Z

    move/from16 v16, v0

    if-eqz v16, :cond_24

    :cond_22
    const/16 v16, 0x1

    :goto_f
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerKeyUp(Z)Z

    move-result v16

    if-eqz v16, :cond_23

    .line 553
    :cond_23
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPendingPowerKeyUpCanceled:Z

    goto/16 :goto_d

    .line 552
    :cond_24
    const/16 v16, 0x0

    goto :goto_f

    .line 555
    :cond_25
    const/16 v16, 0x19

    move/from16 v0, v16

    if-eq v0, v13, :cond_26

    const/16 v16, 0x18

    move/from16 v0, v16

    if-eq v0, v13, :cond_26

    const/16 v16, 0xa4

    move/from16 v0, v16

    if-ne v0, v13, :cond_1a

    .line 559
    :cond_26
    const/16 v16, 0x19

    move/from16 v0, v16

    if-ne v0, v13, :cond_27

    .line 560
    if-eqz v5, :cond_28

    .line 561
    if-eqz p3, :cond_27

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoVolumeDownKeyTriggered:Z

    move/from16 v16, v0

    if-nez v16, :cond_27

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v16

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0x400

    move/from16 v16, v0

    if-nez v16, :cond_27

    .line 563
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoVolumeDownKeyTriggered:Z

    .line 564
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v16

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoVolumeDownKeyTime:J

    .line 565
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoVolumeDownKeyConsumedByScreenshotChord:Z

    .line 566
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 567
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->interceptScreenshotChord()V

    .line 575
    :cond_27
    :goto_10
    if-eqz v5, :cond_1a

    .line 577
    const/16 v16, 0x5

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v16

    if-eqz v16, :cond_1a

    .line 578
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->disableNotificationAlert()V

    goto/16 :goto_d

    .line 570
    :cond_28
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoVolumeDownKeyTriggered:Z

    .line 571
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->cancelPendingScreenshotChordAction()V

    goto :goto_10

    .line 480
    .end local v4           #canceled:Z
    .end local v12           #newEvent:Landroid/view/KeyEvent;
    .end local v13           #newKeyCode:I
    :catch_2
    move-exception v16

    goto/16 :goto_8
.end method

.method public notifyLidSwitchChanged(JZ)V
    .locals 4
    .parameter "whenNanos"
    .parameter "lidOpen"

    .prologue
    .line 1218
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "oppo.disable.small.window.leather"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1219
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->notifyLidSwitchChanged(JZ)V

    .line 1242
    :cond_0
    :goto_0
    return-void

    .line 1224
    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadless:Z

    if-nez v2, :cond_0

    .line 1227
    if-eqz p3, :cond_2

    const/4 v1, 0x1

    .line 1228
    .local v1, newLidState:I
    :goto_1
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    if-ne v1, v2, :cond_3

    .line 1229
    sget-object v2, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v3, "notifyLidSwitchChanged newLidState == mLidState"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1227
    .end local v1           #newLidState:I
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 1234
    .restart local v1       #newLidState:I
    :cond_3
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemReady:Z

    if-eqz v2, :cond_4

    .line 1235
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.oppo.intent.action.LID_STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1236
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "lid_state"

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1237
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1238
    sget-object v2, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v3, "OppoPhoneWindowManager notifyLidSwitchChanged sendBroadcast com.oppo.intent.action.LID_STATE_CHANGED"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    .end local v0           #intent:Landroid/content/Intent;
    :cond_4
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->notifyLidSwitchChanged(JZ)V

    goto :goto_0
.end method

.method public performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z
    .locals 4
    .parameter "win"
    .parameter "effectId"
    .parameter "always"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1138
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "haptic_feedback_enabled"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 1140
    .local v0, hapticsDisabled:Z
    :cond_0
    if-nez v0, :cond_1

    if-ne p2, v1, :cond_1

    .line 1141
    invoke-super {p0, p1, p2, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    move-result v1

    .line 1143
    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    move-result v1

    goto :goto_0
.end method

.method public prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .locals 3
    .parameter "win"
    .parameter "attrs"
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
        note = "zhangkai@Plf.DesktopApp.Keyguard add for apklock"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1475
    const/16 v1, 0x898

    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v1, v2, :cond_1

    .line 1476
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mApkLockScreens:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1477
    if-eqz p1, :cond_0

    .line 1483
    :cond_0
    :goto_0
    return v0

    .line 1481
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    goto :goto_0
.end method

.method public removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 4
    .parameter "win"
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
        note = "zhangkai@Plf.DesktopApp.Keyguard add for apklock"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    .line 1490
    const/16 v1, 0x898

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v1, v2, :cond_1

    .line 1491
    sget-object v1, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeWindowLw win ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mApkLockScreens:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1493
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    if-eqz v1, :cond_0

    .line 1494
    const-string v1, "oppo simlock hostview"

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1495
    .local v0, isSimUnlockWindow:Z
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->checkApkKeyguardStatus(Z)V

    .line 1500
    .end local v0           #isSimUnlockWindow:Z
    :cond_0
    :goto_0
    return-void

    .line 1498
    :cond_1
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V

    goto :goto_0
.end method

.method public rm_add_StatusBarRunnable(I)V
    .locals 4
    .parameter "type"
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
        note = "hejiamiao add for pull down status bar when full screen"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1365
    if-ne p1, v2, :cond_3

    .line 1366
    const/high16 v0, 0x8

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopIsFullscreen:Z

    if-nez v0, :cond_1

    .line 1391
    :cond_0
    :goto_0
    return-void

    .line 1370
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->hideStatusBar:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1371
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->hideStatusBar:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1374
    :cond_2
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->bForceShowStatusBar:Z

    .line 1375
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopIsFullscreen:Z

    if-eqz v0, :cond_0

    .line 1376
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0, v2}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    goto :goto_0

    .line 1383
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->hideStatusBar:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1384
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->hideStatusBar:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1385
    :cond_4
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->bForceShowStatusBar:Z

    if-eqz v0, :cond_0

    .line 1386
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->bForceShowStatusBar:Z

    .line 1387
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopIsFullscreen:Z

    if-eqz v0, :cond_0

    .line 1388
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0, v2}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    goto :goto_0
.end method

.method public screenTurnedOff(I)V
    .locals 0
    .parameter "why"

    .prologue
    .line 1126
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->screenTurnedOff(I)V

    .line 1127
    return-void
.end method

.method public screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    .locals 0
    .parameter "screenOnListener"

    .prologue
    .line 1130
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    .line 1133
    invoke-direct {p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->closeFlashApp()V

    .line 1135
    return-void
.end method

.method public showStatusBar()V
    .locals 4
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
        note = "hejiamiao add for pull down status bar when full screen"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1348
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    .line 1349
    sget-object v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mStatusBar.isVisibleLw() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bForceShowStatusBar = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->bForceShowStatusBar:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1351
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->bForceShowStatusBar:Z

    .line 1352
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0, v3}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    .line 1353
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->hideStatusBar:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1356
    :cond_0
    return-void
.end method

.method public systemReady()V
    .locals 2

    .prologue
    .line 1119
    invoke-super {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->systemReady()V

    .line 1121
    new-instance v0, Landroid/hardware/SystemSensorManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 1122
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mProximitySensor:Landroid/hardware/Sensor;

    .line 1123
    return-void
.end method

.method updateSystemUiVisibilityLw()I
    .locals 3
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
        note = "zhangkai@Plf.DesktopApp.Keyguard add for apklock"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1525
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v1, :cond_1

    .line 1533
    :cond_0
    :goto_0
    return v0

    .line 1529
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x898

    if-ne v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 1533
    :cond_2
    invoke-super {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    move-result v0

    goto :goto_0
.end method

.method public windowTypeToLayerLw(I)I
    .locals 1
    .parameter "type"
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
        note = "zhangkai@Plf.DesktopApp.Keyguard add for apklock"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    .line 1434
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0x63

    if-gt p1, v0, :cond_0

    .line 1435
    const/4 v0, 0x2

    .line 1440
    :goto_0
    return v0

    .line 1437
    :cond_0
    const/16 v0, 0x898

    if-ne v0, p1, :cond_1

    .line 1438
    const/16 v0, 0x7d9

    invoke-super {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->windowTypeToLayerLw(I)I

    move-result v0

    goto :goto_0

    .line 1440
    :cond_1
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->windowTypeToLayerLw(I)I

    move-result v0

    goto :goto_0
.end method
