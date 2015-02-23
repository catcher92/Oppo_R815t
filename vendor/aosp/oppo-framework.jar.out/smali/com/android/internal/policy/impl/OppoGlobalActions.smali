.class Lcom/android/internal/policy/impl/OppoGlobalActions;
.super Ljava/lang/Object;
.source "OppoGlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/OppoGlobalActions$InnovativeV2HAction;,
        Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;,
        Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeToggleAction;,
        Lcom/android/internal/policy/impl/OppoGlobalActions$ToggleAction;,
        Lcom/android/internal/policy/impl/OppoGlobalActions$SinglePressAction;,
        Lcom/android/internal/policy/impl/OppoGlobalActions$Action;,
        Lcom/android/internal/policy/impl/OppoGlobalActions$MyAdapter;
    }
.end annotation


# static fields
.field private static final DIALOG_DISMISS_DELAY:I = 0x12c

.field private static final MESSAGE_DISMISS:I = 0x0

.field private static final MESSAGE_REFRESH:I = 0x1

.field private static final MESSAGE_SHOW:I = 0x2

.field private static final SHOW_SILENT_TOGGLE:Z = true

.field private static final TAG:Ljava/lang/String; = "OppoGlobalActions"


# instance fields
.field private mAdapter:Lcom/android/internal/policy/impl/OppoGlobalActions$MyAdapter;

.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mDeviceProvisioned:Z

.field private mDialog:Landroid/app/AlertDialog;

.field private mHandler:Landroid/os/Handler;

.field private mHasTelephony:Z

.field private mHasVibrator:Z

.field private mIWindowManager:Landroid/view/IWindowManager;

.field private mInnovativeV2HAction:Lcom/android/internal/policy/impl/OppoGlobalActions$InnovativeV2HAction;

.field private mIsReceiverRegisted:Z

.field private mIsWaitingForEcmExit:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/OppoGlobalActions$Action;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyguardShowing:Z

.field private mOppoAirplaneState:Z

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRingerModeReceiver:Landroid/content/BroadcastReceiver;

.field private mSilentModeAction:Lcom/android/internal/policy/impl/OppoGlobalActions$Action;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private final mVibrator:Landroid/os/Vibrator;

.field private final mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 8
    .parameter "context"
    .parameter "windowManagerFuncs"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mKeyguardShowing:Z

    .line 92
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mDeviceProvisioned:Z

    .line 93
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mIsWaitingForEcmExit:Z

    .line 100
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mOppoAirplaneState:Z

    .line 104
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mIsReceiverRegisted:Z

    .line 746
    new-instance v3, Lcom/android/internal/policy/impl/OppoGlobalActions$3;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/OppoGlobalActions$3;-><init>(Lcom/android/internal/policy/impl/OppoGlobalActions;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 767
    new-instance v3, Lcom/android/internal/policy/impl/OppoGlobalActions$4;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/OppoGlobalActions$4;-><init>(Lcom/android/internal/policy/impl/OppoGlobalActions;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 780
    new-instance v3, Lcom/android/internal/policy/impl/OppoGlobalActions$5;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/OppoGlobalActions$5;-><init>(Lcom/android/internal/policy/impl/OppoGlobalActions;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    .line 790
    new-instance v3, Lcom/android/internal/policy/impl/OppoGlobalActions$6;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v6}, Lcom/android/internal/policy/impl/OppoGlobalActions$6;-><init>(Lcom/android/internal/policy/impl/OppoGlobalActions;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 803
    new-instance v3, Lcom/android/internal/policy/impl/OppoGlobalActions$7;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/OppoGlobalActions$7;-><init>(Lcom/android/internal/policy/impl/OppoGlobalActions;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mHandler:Landroid/os/Handler;

    .line 110
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mContext:Landroid/content/Context;

    .line 111
    iput-object p2, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 112
    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mContext:Landroid/content/Context;

    const-string v6, "audio"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mAudioManager:Landroid/media/AudioManager;

    .line 115
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 116
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    const-string v3, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 119
    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 122
    const-string v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 124
    .local v2, telephonyManager:Landroid/telephony/TelephonyManager;
    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 125
    const-string v3, "connectivity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 127
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mHasTelephony:Z

    .line 128
    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "airplane_mode_on"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v6, v4, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 131
    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mContext:Landroid/content/Context;

    const-string v6, "vibrator"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    iput-object v3, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mVibrator:Landroid/os/Vibrator;

    .line 132
    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mVibrator:Landroid/os/Vibrator;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v3}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mHasVibrator:Z

    .line 134
    const-string v3, "statusbar"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/StatusBarManager;

    iput-object v3, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 135
    return-void

    :cond_0
    move v3, v5

    .line 132
    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/OppoGlobalActions;)Lcom/android/internal/policy/impl/OppoGlobalActions$MyAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mAdapter:Lcom/android/internal/policy/impl/OppoGlobalActions$MyAdapter;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/internal/policy/impl/OppoGlobalActions;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mOppoAirplaneState:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/OppoGlobalActions;)Landroid/os/Vibrator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mVibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/OppoGlobalActions;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/OppoGlobalActions;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/internal/policy/impl/OppoGlobalActions;->refreshAirplaneMode()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/OppoGlobalActions;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/OppoGlobalActions;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/internal/policy/impl/OppoGlobalActions;->refreshSilentMode()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/OppoGlobalActions;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/internal/policy/impl/OppoGlobalActions;->handleShow()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/OppoGlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/OppoGlobalActions;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/OppoGlobalActions;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mKeyguardShowing:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/OppoGlobalActions;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mDeviceProvisioned:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/OppoGlobalActions;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/OppoGlobalActions;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/OppoGlobalActions;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mHasTelephony:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/OppoGlobalActions;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mIsWaitingForEcmExit:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/internal/policy/impl/OppoGlobalActions;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mIsWaitingForEcmExit:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/OppoGlobalActions;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/OppoGlobalActions;->changeAirplaneModeSystemSetting(Z)V

    return-void
.end method

.method private changeAirplaneModeSystemSetting(Z)V
    .locals 4
    .parameter "on"

    .prologue
    .line 841
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 843
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 844
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 845
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 846
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 847
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mHasTelephony:Z

    if-nez v1, :cond_0

    .line 848
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mOppoAirplaneState:Z

    .line 850
    :cond_0
    return-void

    .line 841
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private createDialog()Landroid/app/AlertDialog;
    .locals 14

    .prologue
    .line 170
    iget-boolean v10, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mHasVibrator:Z

    if-nez v10, :cond_0

    .line 171
    new-instance v10, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeToggleAction;

    invoke-direct {v10, p0}, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeToggleAction;-><init>(Lcom/android/internal/policy/impl/OppoGlobalActions;)V

    iput-object v10, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mSilentModeAction:Lcom/android/internal/policy/impl/OppoGlobalActions$Action;

    .line 176
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/OppoGlobalActions;->onAirplaneModeChanged()V

    .line 178
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mItems:Ljava/util/ArrayList;

    .line 180
    new-instance v10, Lcom/android/internal/policy/impl/OppoGlobalActions$InnovativeV2HAction;

    iget-object v11, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mContext:Landroid/content/Context;

    iget-object v12, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mHandler:Landroid/os/Handler;

    invoke-direct {v10, p0, v11, v12}, Lcom/android/internal/policy/impl/OppoGlobalActions$InnovativeV2HAction;-><init>(Lcom/android/internal/policy/impl/OppoGlobalActions;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v10, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mInnovativeV2HAction:Lcom/android/internal/policy/impl/OppoGlobalActions$InnovativeV2HAction;

    .line 181
    invoke-direct {p0}, Lcom/android/internal/policy/impl/OppoGlobalActions;->onAirplaneModeChanged()V

    .line 182
    iget-object v10, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mItems:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mInnovativeV2HAction:Lcom/android/internal/policy/impl/OppoGlobalActions$InnovativeV2HAction;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    iget-object v10, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mItems:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mSilentModeAction:Lcom/android/internal/policy/impl/OppoGlobalActions$Action;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    iget-object v10, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mContext:Landroid/content/Context;

    const-string v11, "user"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/UserManager;

    invoke-virtual {v10}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v9

    .line 192
    .local v9, users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_6

    .line 195
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v10

    invoke-interface {v10}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 199
    .local v1, currentUser:Landroid/content/pm/UserInfo;
    :goto_1
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/UserInfo;

    .line 200
    .local v8, user:Landroid/content/pm/UserInfo;
    if-nez v1, :cond_2

    iget v10, v8, Landroid/content/pm/UserInfo;->id:I

    if-nez v10, :cond_1

    const/4 v4, 0x1

    .line 202
    .local v4, isCurrentUser:Z
    :goto_3
    new-instance v7, Lcom/android/internal/policy/impl/OppoGlobalActions$1;

    const v11, 0xc080489

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v8, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-eqz v10, :cond_4

    iget-object v10, v8, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    :goto_4
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-eqz v4, :cond_5

    const-string v10, " \u2714"

    :goto_5
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, p0, v11, v10, v8}, Lcom/android/internal/policy/impl/OppoGlobalActions$1;-><init>(Lcom/android/internal/policy/impl/OppoGlobalActions;ILjava/lang/CharSequence;Landroid/content/pm/UserInfo;)V

    .line 223
    .local v7, switchToUser:Lcom/android/internal/policy/impl/OppoGlobalActions$SinglePressAction;
    iget-object v10, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 173
    .end local v1           #currentUser:Landroid/content/pm/UserInfo;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #isCurrentUser:Z
    .end local v7           #switchToUser:Lcom/android/internal/policy/impl/OppoGlobalActions$SinglePressAction;
    .end local v8           #user:Landroid/content/pm/UserInfo;
    .end local v9           #users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_0
    new-instance v10, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;

    iget-object v11, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mContext:Landroid/content/Context;

    iget-object v12, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mAudioManager:Landroid/media/AudioManager;

    iget-object v13, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mHandler:Landroid/os/Handler;

    invoke-direct {v10, p0, v11, v12, v13}, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;-><init>(Lcom/android/internal/policy/impl/OppoGlobalActions;Landroid/content/Context;Landroid/media/AudioManager;Landroid/os/Handler;)V

    iput-object v10, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mSilentModeAction:Lcom/android/internal/policy/impl/OppoGlobalActions$Action;

    goto/16 :goto_0

    .line 196
    .restart local v9       #users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catch_0
    move-exception v6

    .line 197
    .local v6, re:Landroid/os/RemoteException;
    const/4 v1, 0x0

    .restart local v1       #currentUser:Landroid/content/pm/UserInfo;
    goto :goto_1

    .line 200
    .end local v6           #re:Landroid/os/RemoteException;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v8       #user:Landroid/content/pm/UserInfo;
    :cond_1
    const/4 v4, 0x0

    goto :goto_3

    :cond_2
    iget v10, v1, Landroid/content/pm/UserInfo;->id:I

    iget v11, v8, Landroid/content/pm/UserInfo;->id:I

    if-ne v10, v11, :cond_3

    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    .line 202
    .restart local v4       #isCurrentUser:Z
    :cond_4
    const-string v10, "Primary"

    goto :goto_4

    :cond_5
    const-string v10, ""

    goto :goto_5

    .line 227
    .end local v1           #currentUser:Landroid/content/pm/UserInfo;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #isCurrentUser:Z
    .end local v8           #user:Landroid/content/pm/UserInfo;
    :cond_6
    new-instance v10, Lcom/android/internal/policy/impl/OppoGlobalActions$MyAdapter;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lcom/android/internal/policy/impl/OppoGlobalActions$MyAdapter;-><init>(Lcom/android/internal/policy/impl/OppoGlobalActions;Lcom/android/internal/policy/impl/OppoGlobalActions$1;)V

    iput-object v10, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mAdapter:Lcom/android/internal/policy/impl/OppoGlobalActions$MyAdapter;

    .line 229
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v10, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mContext:Landroid/content/Context;

    const v11, 0xc030407

    invoke-direct {v0, v10, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 232
    .local v0, ab:Landroid/app/AlertDialog$Builder;
    iget-object v10, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mAdapter:Lcom/android/internal/policy/impl/OppoGlobalActions$MyAdapter;

    invoke-virtual {v0, v10, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    .line 234
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 236
    .local v2, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 237
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/view/View;->setLongClickable(Z)V

    .line 238
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v10

    new-instance v11, Lcom/android/internal/policy/impl/OppoGlobalActions$2;

    invoke-direct {v11, p0}, Lcom/android/internal/policy/impl/OppoGlobalActions$2;-><init>(Lcom/android/internal/policy/impl/OppoGlobalActions;)V

    invoke-virtual {v10, v11}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 245
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    const/16 v11, 0x7d8

    invoke-virtual {v10, v11}, Landroid/view/Window;->setType(I)V

    .line 246
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v10

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroid/widget/AbsListView;->setOverScrollMode(I)V

    .line 247
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 248
    invoke-virtual {v2, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 249
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 250
    .local v5, lp:Landroid/view/WindowManager$LayoutParams;
    const/high16 v10, 0x1

    iput v10, v5, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 252
    return-object v2
.end method

.method private getWindowManager()Landroid/view/IWindowManager;
    .locals 2

    .prologue
    .line 853
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mIWindowManager:Landroid/view/IWindowManager;

    if-nez v1, :cond_0

    .line 854
    const-string v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 855
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mIWindowManager:Landroid/view/IWindowManager;

    .line 857
    .end local v0           #b:Landroid/os/IBinder;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mIWindowManager:Landroid/view/IWindowManager;

    return-object v1
.end method

.method private handleShow()V
    .locals 2

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/android/internal/policy/impl/OppoGlobalActions;->createDialog()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mDialog:Landroid/app/AlertDialog;

    .line 157
    invoke-direct {p0}, Lcom/android/internal/policy/impl/OppoGlobalActions;->prepareDialog()V

    .line 159
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 160
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 161
    return-void
.end method

.method private onAirplaneModeChanged()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 825
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mHasTelephony:Z

    if-eqz v2, :cond_1

    .line 835
    :cond_0
    :goto_0
    return-void

    .line 829
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_2

    .line 831
    .local v0, airplaneModeOn:Z
    :goto_1
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mOppoAirplaneState:Z

    .line 832
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mSilentModeAction:Lcom/android/internal/policy/impl/OppoGlobalActions$Action;

    instance-of v1, v1, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;

    if-eqz v1, :cond_0

    .line 833
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mSilentModeAction:Lcom/android/internal/policy/impl/OppoGlobalActions$Action;

    check-cast v1, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mOppoAirplaneState:Z

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->updateState(Z)V

    goto :goto_0

    .end local v0           #airplaneModeOn:Z
    :cond_2
    move v0, v1

    .line 829
    goto :goto_1
.end method

.method private prepareDialog()V
    .locals 3

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/android/internal/policy/impl/OppoGlobalActions;->refreshSilentMode()V

    .line 257
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mSilentModeAction:Lcom/android/internal/policy/impl/OppoGlobalActions$Action;

    instance-of v1, v1, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;

    if-eqz v1, :cond_0

    .line 258
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mSilentModeAction:Lcom/android/internal/policy/impl/OppoGlobalActions$Action;

    check-cast v1, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mOppoAirplaneState:Z

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->updateState(Z)V

    .line 260
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mAdapter:Lcom/android/internal/policy/impl/OppoGlobalActions$MyAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 261
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mKeyguardShowing:Z

    if-eqz v1, :cond_1

    .line 262
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 267
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 268
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mIsReceiverRegisted:Z

    .line 270
    return-void

    .line 264
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d8

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    goto :goto_0

    .line 268
    .restart local v0       #filter:Landroid/content/IntentFilter;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private refreshAirplaneMode()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 281
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 283
    .local v0, airplaneModeOn:Z
    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mOppoAirplaneState:Z

    .line 284
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mSilentModeAction:Lcom/android/internal/policy/impl/OppoGlobalActions$Action;

    instance-of v1, v1, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;

    if-eqz v1, :cond_0

    .line 285
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mSilentModeAction:Lcom/android/internal/policy/impl/OppoGlobalActions$Action;

    check-cast v1, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mOppoAirplaneState:Z

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->updateState(Z)V

    .line 287
    :cond_0
    return-void

    .end local v0           #airplaneModeOn:Z
    :cond_1
    move v0, v1

    .line 281
    goto :goto_0
.end method

.method private refreshSilentMode()V
    .locals 3

    .prologue
    .line 273
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mHasVibrator:Z

    if-nez v1, :cond_0

    .line 274
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    .line 275
    .local v0, silentModeOn:Z
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mSilentModeAction:Lcom/android/internal/policy/impl/OppoGlobalActions$Action;

    check-cast v1, Lcom/android/internal/policy/impl/OppoGlobalActions$ToggleAction;

    if-eqz v0, :cond_2

    sget-object v2, Lcom/android/internal/policy/impl/OppoGlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/OppoGlobalActions$ToggleAction$State;

    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/OppoGlobalActions$ToggleAction;->updateState(Lcom/android/internal/policy/impl/OppoGlobalActions$ToggleAction$State;)V

    .line 278
    .end local v0           #silentModeOn:Z
    :cond_0
    return-void

    .line 274
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 275
    .restart local v0       #silentModeOn:Z
    :cond_2
    sget-object v2, Lcom/android/internal/policy/impl/OppoGlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/OppoGlobalActions$ToggleAction$State;

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mAdapter:Lcom/android/internal/policy/impl/OppoGlobalActions$MyAdapter;

    invoke-virtual {v0, p2}, Lcom/android/internal/policy/impl/OppoGlobalActions$MyAdapter;->getItem(I)Lcom/android/internal/policy/impl/OppoGlobalActions$Action;

    move-result-object v0

    instance-of v0, v0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;

    if-nez v0, :cond_0

    .line 300
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mAdapter:Lcom/android/internal/policy/impl/OppoGlobalActions$MyAdapter;

    invoke-virtual {v0, p2}, Lcom/android/internal/policy/impl/OppoGlobalActions$MyAdapter;->getItem(I)Lcom/android/internal/policy/impl/OppoGlobalActions$Action;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/OppoGlobalActions$Action;->onPress()V

    .line 303
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 291
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mIsReceiverRegisted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 295
    :cond_0
    return-void
.end method

.method public showDialog(ZZ)V
    .locals 2
    .parameter "keyguardShowing"
    .parameter "isDeviceProvisioned"

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mKeyguardShowing:Z

    .line 144
    iput-boolean p2, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mDeviceProvisioned:Z

    .line 145
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mDialog:Landroid/app/AlertDialog;

    .line 149
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 153
    :goto_0
    return-void

    .line 151
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/OppoGlobalActions;->handleShow()V

    goto :goto_0
.end method
