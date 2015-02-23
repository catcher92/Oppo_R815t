.class public Lcom/oppo/view/OppoVolumePanel;
.super Landroid/os/Handler;
.source "OppoVolumePanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/OppoSeekBar$OnOppoSeekBarFromUserChangeListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/view/OppoVolumePanel$WarningDialogReceiver;,
        Lcom/oppo/view/OppoVolumePanel$StreamControl;,
        Lcom/oppo/view/OppoVolumePanel$StreamResources;
    }
.end annotation


# static fields
.field private static final ACTION_SKIN_CHANGED:Ljava/lang/String; = "android.intent.action.SKIN_CHANGED"

.field private static final BEEP_DURATION:I = 0x96

.field private static final FREE_DELAY:I = 0x2710

.field private static LOGD:Z = false

.field private static final MAX_VOLUME:I = 0x64

.field private static final MSG_DISPLAY_SAFE_VOLUME_WARNING:I = 0xb

.field private static final MSG_FREE_RESOURCES:I = 0x1

.field private static final MSG_MUTE_CHANGED:I = 0x7

.field private static final MSG_PLAY_SOUND:I = 0x2

.field private static final MSG_REMOTE_VOLUME_CHANGED:I = 0x8

.field private static final MSG_REMOTE_VOLUME_UPDATE_IF_SHOWN:I = 0x9

.field private static final MSG_RINGER_MODE_CHANGED:I = 0x6

.field private static final MSG_SLIDER_VISIBILITY_CHANGED:I = 0xa

.field private static final MSG_STOP_SOUNDS:I = 0x3

.field private static final MSG_TIMEOUT:I = 0x5

.field private static final MSG_VIBRATE:I = 0x4

.field private static final MSG_VOLUME_CHANGED:I = 0x0

.field public static final PLAY_SOUND_DELAY:I = 0x12c

.field private static final STREAMS:[Lcom/oppo/view/OppoVolumePanel$StreamResources; = null

.field private static final STREAM_MASTER:I = -0x64

.field private static final TAG:Ljava/lang/String; = "OppoVolumePanel"

.field private static final TIMEOUT_DELAY:I = 0xbb8

.field public static final VIBRATE_DELAY:I = 0x12c

.field private static final VIBRATE_DURATION:I = 0x12c

.field private static final WAIT_TIME_RELEASE_LOCK:I = 0x64

.field private static sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

.field private static sConfirmSafeVolumeLock:Ljava/lang/Object;


# instance fields
.field private mActiveStreamType:I

.field private mAudioManager:Landroid/media/AudioManager;

.field protected mAudioService:Landroid/media/AudioService;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field protected mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;

.field private mDivider:Landroid/view/View;

.field private mMoreButton:Landroid/view/View;

.field private mPanel:Landroid/widget/LinearLayout;

.field private final mPlayMasterStreamTones:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field private mRingIsSilent:Z

.field private mSafeVolumeWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mShowCombinedVolumes:Z

.field private mSliderGroup:Landroid/view/ViewGroup;

.field private mStreamControls:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/oppo/view/OppoVolumePanel$StreamControl;",
            ">;"
        }
    .end annotation
.end field

.field private mToneGenerators:[Landroid/media/ToneGenerator;

.field private mVibrator:Landroid/os/Vibrator;

.field private mView:Landroid/view/View;

.field private mVoiceCapable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 81
    sput-boolean v2, Lcom/oppo/view/OppoVolumePanel;->LOGD:Z

    .line 218
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/oppo/view/OppoVolumePanel$StreamResources;

    sget-object v1, Lcom/oppo/view/OppoVolumePanel$StreamResources;->BluetoothSCOStream:Lcom/oppo/view/OppoVolumePanel$StreamResources;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Lcom/oppo/view/OppoVolumePanel$StreamResources;->RingerStream:Lcom/oppo/view/OppoVolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/oppo/view/OppoVolumePanel$StreamResources;->VoiceStream:Lcom/oppo/view/OppoVolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/oppo/view/OppoVolumePanel$StreamResources;->MediaStream:Lcom/oppo/view/OppoVolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/oppo/view/OppoVolumePanel$StreamResources;->NotificationStream:Lcom/oppo/view/OppoVolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/oppo/view/OppoVolumePanel$StreamResources;->AlarmStream:Lcom/oppo/view/OppoVolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/oppo/view/OppoVolumePanel$StreamResources;->FMStream:Lcom/oppo/view/OppoVolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/oppo/view/OppoVolumePanel$StreamResources;->MasterStream:Lcom/oppo/view/OppoVolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/oppo/view/OppoVolumePanel$StreamResources;->RemoteStream:Lcom/oppo/view/OppoVolumePanel$StreamResources;

    aput-object v2, v0, v1

    sput-object v0, Lcom/oppo/view/OppoVolumePanel;->STREAMS:[Lcom/oppo/view/OppoVolumePanel$StreamResources;

    .line 257
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oppo/view/OppoVolumePanel;->sConfirmSafeVolumeLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/AudioService;)V
    .locals 11
    .parameter "context"
    .parameter "volumeService"

    .prologue
    .line 314
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 144
    const/4 v8, -0x1

    iput v8, p0, Lcom/oppo/view/OppoVolumePanel;->mActiveStreamType:I

    .line 149
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/oppo/view/OppoVolumePanel;->mPanel:Landroid/widget/LinearLayout;

    .line 1092
    new-instance v8, Lcom/oppo/view/OppoVolumePanel$7;

    invoke-direct {v8, p0}, Lcom/oppo/view/OppoVolumePanel$7;-><init>(Lcom/oppo/view/OppoVolumePanel;)V

    iput-object v8, p0, Lcom/oppo/view/OppoVolumePanel;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 315
    iput-object p1, p0, Lcom/oppo/view/OppoVolumePanel;->mContext:Landroid/content/Context;

    .line 316
    const-string v8, "audio"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/AudioManager;

    iput-object v8, p0, Lcom/oppo/view/OppoVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    .line 317
    iput-object p2, p0, Lcom/oppo/view/OppoVolumePanel;->mAudioService:Landroid/media/AudioService;

    .line 320
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0xc0c0406

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    .line 322
    .local v6, useMasterVolume:Z
    if-eqz v6, :cond_1

    .line 323
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v8, Lcom/oppo/view/OppoVolumePanel;->STREAMS:[Lcom/oppo/view/OppoVolumePanel$StreamResources;

    array-length v8, v8

    if-ge v1, v8, :cond_1

    .line 324
    sget-object v8, Lcom/oppo/view/OppoVolumePanel;->STREAMS:[Lcom/oppo/view/OppoVolumePanel$StreamResources;

    aget-object v5, v8, v1

    .line 325
    .local v5, streamRes:Lcom/oppo/view/OppoVolumePanel$StreamResources;
    iget v8, v5, Lcom/oppo/view/OppoVolumePanel$StreamResources;->streamType:I

    const/16 v9, -0x64

    if-ne v8, v9, :cond_0

    const/4 v8, 0x1

    :goto_1
    iput-boolean v8, v5, Lcom/oppo/view/OppoVolumePanel$StreamResources;->show:Z

    .line 323
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 325
    :cond_0
    const/4 v8, 0x0

    goto :goto_1

    .line 329
    .end local v1           #i:I
    .end local v5           #streamRes:Lcom/oppo/view/OppoVolumePanel$StreamResources;
    :cond_1
    invoke-direct {p0, p1}, Lcom/oppo/view/OppoVolumePanel;->inflaterBaseUI(Landroid/content/Context;)V

    .line 331
    new-instance v8, Lcom/oppo/view/OppoVolumePanel$1;

    const v9, 0xc030408

    invoke-direct {v8, p0, p1, v9}, Lcom/oppo/view/OppoVolumePanel$1;-><init>(Lcom/oppo/view/OppoVolumePanel;Landroid/content/Context;I)V

    iput-object v8, p0, Lcom/oppo/view/OppoVolumePanel;->mDialog:Landroid/app/Dialog;

    .line 342
    iget-object v8, p0, Lcom/oppo/view/OppoVolumePanel;->mDialog:Landroid/app/Dialog;

    const-string v9, "Volume control"

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 343
    iget-object v8, p0, Lcom/oppo/view/OppoVolumePanel;->mDialog:Landroid/app/Dialog;

    iget-object v9, p0, Lcom/oppo/view/OppoVolumePanel;->mView:Landroid/view/View;

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 344
    iget-object v8, p0, Lcom/oppo/view/OppoVolumePanel;->mDialog:Landroid/app/Dialog;

    new-instance v9, Lcom/oppo/view/OppoVolumePanel$2;

    invoke-direct {v9, p0}, Lcom/oppo/view/OppoVolumePanel$2;-><init>(Lcom/oppo/view/OppoVolumePanel;)V

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 352
    iget-object v8, p0, Lcom/oppo/view/OppoVolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    .line 353
    .local v7, window:Landroid/view/Window;
    const/16 v8, 0x30

    invoke-virtual {v7, v8}, Landroid/view/Window;->setGravity(I)V

    .line 354
    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 355
    .local v2, lp:Landroid/view/WindowManager$LayoutParams;
    const/4 v8, 0x0

    iput-object v8, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 357
    iget-object v8, p0, Lcom/oppo/view/OppoVolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0xc050432

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    iput v8, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 359
    const/16 v8, 0x7e4

    iput v8, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 360
    const/4 v8, -0x2

    iput v8, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 361
    const/4 v8, -0x2

    iput v8, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 362
    invoke-virtual {v7, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 363
    const v8, 0x40028

    invoke-virtual {v7, v8}, Landroid/view/Window;->addFlags(I)V

    .line 366
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v8

    new-array v8, v8, [Landroid/media/ToneGenerator;

    iput-object v8, p0, Lcom/oppo/view/OppoVolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    .line 367
    const-string v8, "vibrator"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Vibrator;

    iput-object v8, p0, Lcom/oppo/view/OppoVolumePanel;->mVibrator:Landroid/os/Vibrator;

    .line 369
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0xc0c0001

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    iput-boolean v8, p0, Lcom/oppo/view/OppoVolumePanel;->mVoiceCapable:Z

    .line 370
    iget-boolean v8, p0, Lcom/oppo/view/OppoVolumePanel;->mVoiceCapable:Z

    if-nez v8, :cond_2

    if-nez v6, :cond_2

    const/4 v8, 0x1

    :goto_2
    iput-boolean v8, p0, Lcom/oppo/view/OppoVolumePanel;->mShowCombinedVolumes:Z

    .line 372
    iget-boolean v8, p0, Lcom/oppo/view/OppoVolumePanel;->mShowCombinedVolumes:Z

    if-nez v8, :cond_3

    .line 373
    iget-object v8, p0, Lcom/oppo/view/OppoVolumePanel;->mMoreButton:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 374
    iget-object v8, p0, Lcom/oppo/view/OppoVolumePanel;->mDivider:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 379
    :goto_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0xc0c0406

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 381
    .local v4, masterVolumeOnly:Z
    iget-object v8, p0, Lcom/oppo/view/OppoVolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0xc0c0407

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 384
    .local v3, masterVolumeKeySounds:Z
    if-eqz v4, :cond_4

    if-eqz v3, :cond_4

    const/4 v8, 0x1

    :goto_4
    iput-boolean v8, p0, Lcom/oppo/view/OppoVolumePanel;->mPlayMasterStreamTones:Z

    .line 385
    invoke-direct {p0}, Lcom/oppo/view/OppoVolumePanel;->listenToRingerMode()V

    .line 387
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 388
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v8, "android.intent.action.SKIN_CHANGED"

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 389
    iget-object v8, p0, Lcom/oppo/view/OppoVolumePanel;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/oppo/view/OppoVolumePanel;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v8, v9, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 393
    const-string v8, "power"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/PowerManager;

    iput-object v8, p0, Lcom/oppo/view/OppoVolumePanel;->mPowerManager:Landroid/os/PowerManager;

    .line 394
    iget-object v8, p0, Lcom/oppo/view/OppoVolumePanel;->mPowerManager:Landroid/os/PowerManager;

    const v9, 0x1000000a

    const-string v10, "OppoVolumePanel.mSafeVolumeWakeLock"

    invoke-virtual {v8, v9, v10}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v8

    iput-object v8, p0, Lcom/oppo/view/OppoVolumePanel;->mSafeVolumeWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 398
    return-void

    .line 370
    .end local v0           #filter:Landroid/content/IntentFilter;
    .end local v3           #masterVolumeKeySounds:Z
    .end local v4           #masterVolumeOnly:Z
    :cond_2
    const/4 v8, 0x0

    goto :goto_2

    .line 376
    :cond_3
    iget-object v8, p0, Lcom/oppo/view/OppoVolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v8, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 384
    .restart local v3       #masterVolumeKeySounds:Z
    .restart local v4       #masterVolumeOnly:Z
    :cond_4
    const/4 v8, 0x0

    goto :goto_4
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/oppo/view/OppoVolumePanel;->sConfirmSafeVolumeLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    sput-object p0, Lcom/oppo/view/OppoVolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oppo/view/OppoVolumePanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/oppo/view/OppoVolumePanel;->forceTimeout()V

    return-void
.end method

.method static synthetic access$300(Lcom/oppo/view/OppoVolumePanel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Lcom/oppo/view/OppoVolumePanel;->mActiveStreamType:I

    return v0
.end method

.method static synthetic access$302(Lcom/oppo/view/OppoVolumePanel;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput p1, p0, Lcom/oppo/view/OppoVolumePanel;->mActiveStreamType:I

    return p1
.end method

.method static synthetic access$400(Lcom/oppo/view/OppoVolumePanel;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/oppo/view/OppoVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oppo/view/OppoVolumePanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/oppo/view/OppoVolumePanel;->resetTimeout()V

    return-void
.end method

.method static synthetic access$700(Lcom/oppo/view/OppoVolumePanel;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/oppo/view/OppoVolumePanel;->mStreamControls:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$800(Lcom/oppo/view/OppoVolumePanel;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/oppo/view/OppoVolumePanel;->inflaterBaseUI(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$900(Lcom/oppo/view/OppoVolumePanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/oppo/view/OppoVolumePanel;->createSliders()V

    return-void
.end method

.method private addOtherVolumes()V
    .locals 5

    .prologue
    .line 546
    iget-boolean v3, p0, Lcom/oppo/view/OppoVolumePanel;->mShowCombinedVolumes:Z

    if-nez v3, :cond_1

    .line 559
    :cond_0
    return-void

    .line 549
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v3, Lcom/oppo/view/OppoVolumePanel;->STREAMS:[Lcom/oppo/view/OppoVolumePanel$StreamResources;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 551
    sget-object v3, Lcom/oppo/view/OppoVolumePanel;->STREAMS:[Lcom/oppo/view/OppoVolumePanel$StreamResources;

    aget-object v3, v3, v0

    iget v2, v3, Lcom/oppo/view/OppoVolumePanel$StreamResources;->streamType:I

    .line 552
    .local v2, streamType:I
    sget-object v3, Lcom/oppo/view/OppoVolumePanel;->STREAMS:[Lcom/oppo/view/OppoVolumePanel$StreamResources;

    aget-object v3, v3, v0

    iget-boolean v3, v3, Lcom/oppo/view/OppoVolumePanel$StreamResources;->show:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/oppo/view/OppoVolumePanel;->mActiveStreamType:I

    if-ne v2, v3, :cond_3

    .line 549
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 555
    :cond_3
    iget-object v3, p0, Lcom/oppo/view/OppoVolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/view/OppoVolumePanel$StreamControl;

    .line 556
    .local v1, sc:Lcom/oppo/view/OppoVolumePanel$StreamControl;
    iget-object v3, p0, Lcom/oppo/view/OppoVolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    iget-object v4, v1, Lcom/oppo/view/OppoVolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 557
    invoke-direct {p0, v1}, Lcom/oppo/view/OppoVolumePanel;->updateSlider(Lcom/oppo/view/OppoVolumePanel$StreamControl;)V

    goto :goto_1
.end method

.method private collapse()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 604
    iget-object v2, p0, Lcom/oppo/view/OppoVolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 605
    iget-object v2, p0, Lcom/oppo/view/OppoVolumePanel;->mDivider:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 606
    iget-object v2, p0, Lcom/oppo/view/OppoVolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 607
    .local v0, count:I
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 608
    iget-object v2, p0, Lcom/oppo/view/OppoVolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 607
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 610
    :cond_0
    return-void
.end method

.method private createSliders()V
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 474
    iget-object v7, p0, Lcom/oppo/view/OppoVolumePanel;->mStreamControls:Ljava/util/HashMap;

    if-eqz v7, :cond_0

    .line 475
    iget-object v7, p0, Lcom/oppo/view/OppoVolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 476
    iput-object v10, p0, Lcom/oppo/view/OppoVolumePanel;->mStreamControls:Ljava/util/HashMap;

    .line 478
    :cond_0
    iget-object v7, p0, Lcom/oppo/view/OppoVolumePanel;->mContext:Landroid/content/Context;

    const-string v9, "layout_inflater"

    invoke-virtual {v7, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 480
    .local v1, inflater:Landroid/view/LayoutInflater;
    new-instance v7, Ljava/util/HashMap;

    sget-object v9, Lcom/oppo/view/OppoVolumePanel;->STREAMS:[Lcom/oppo/view/OppoVolumePanel$StreamResources;

    array-length v9, v9

    invoke-direct {v7, v9}, Ljava/util/HashMap;-><init>(I)V

    iput-object v7, p0, Lcom/oppo/view/OppoVolumePanel;->mStreamControls:Ljava/util/HashMap;

    .line 481
    iget-object v7, p0, Lcom/oppo/view/OppoVolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 482
    .local v3, res:Landroid/content/res/Resources;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v7, Lcom/oppo/view/OppoVolumePanel;->STREAMS:[Lcom/oppo/view/OppoVolumePanel$StreamResources;

    array-length v7, v7

    if-ge v0, v7, :cond_5

    .line 483
    sget-object v7, Lcom/oppo/view/OppoVolumePanel;->STREAMS:[Lcom/oppo/view/OppoVolumePanel$StreamResources;

    aget-object v5, v7, v0

    .line 484
    .local v5, streamRes:Lcom/oppo/view/OppoVolumePanel$StreamResources;
    iget v6, v5, Lcom/oppo/view/OppoVolumePanel$StreamResources;->streamType:I

    .line 485
    .local v6, streamType:I
    iget-boolean v7, p0, Lcom/oppo/view/OppoVolumePanel;->mVoiceCapable:Z

    if-eqz v7, :cond_1

    sget-object v7, Lcom/oppo/view/OppoVolumePanel$StreamResources;->NotificationStream:Lcom/oppo/view/OppoVolumePanel$StreamResources;

    if-ne v5, v7, :cond_1

    .line 486
    sget-object v5, Lcom/oppo/view/OppoVolumePanel$StreamResources;->RingerStream:Lcom/oppo/view/OppoVolumePanel$StreamResources;

    .line 488
    :cond_1
    new-instance v4, Lcom/oppo/view/OppoVolumePanel$StreamControl;

    invoke-direct {v4, p0, v10}, Lcom/oppo/view/OppoVolumePanel$StreamControl;-><init>(Lcom/oppo/view/OppoVolumePanel;Lcom/oppo/view/OppoVolumePanel$1;)V

    .line 489
    .local v4, sc:Lcom/oppo/view/OppoVolumePanel$StreamControl;
    iput v6, v4, Lcom/oppo/view/OppoVolumePanel$StreamControl;->streamType:I

    .line 490
    const v7, 0xc090437

    invoke-virtual {v1, v7, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iput-object v7, v4, Lcom/oppo/view/OppoVolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    .line 491
    iget-object v7, v4, Lcom/oppo/view/OppoVolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v7, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 492
    iget-object v7, v4, Lcom/oppo/view/OppoVolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const v9, 0xc02045c

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v4, Lcom/oppo/view/OppoVolumePanel$StreamControl;->streamTitle:Landroid/widget/TextView;

    .line 493
    iget-object v7, v4, Lcom/oppo/view/OppoVolumePanel$StreamControl;->streamTitle:Landroid/widget/TextView;

    iget v9, v5, Lcom/oppo/view/OppoVolumePanel$StreamResources;->descRes:I

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(I)V

    .line 494
    iget-object v7, v4, Lcom/oppo/view/OppoVolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const v9, 0xc02045d

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v4, Lcom/oppo/view/OppoVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    .line 495
    iget-object v7, v4, Lcom/oppo/view/OppoVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v7, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 496
    iget-object v7, v4, Lcom/oppo/view/OppoVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v9, v5, Lcom/oppo/view/OppoVolumePanel$StreamResources;->descRes:I

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 497
    iget v7, v5, Lcom/oppo/view/OppoVolumePanel$StreamResources;->iconRes:I

    iput v7, v4, Lcom/oppo/view/OppoVolumePanel$StreamControl;->iconRes:I

    .line 498
    iget v7, v5, Lcom/oppo/view/OppoVolumePanel$StreamResources;->iconMuteRes:I

    iput v7, v4, Lcom/oppo/view/OppoVolumePanel$StreamControl;->iconMuteRes:I

    .line 499
    iget-object v7, v4, Lcom/oppo/view/OppoVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v9, v4, Lcom/oppo/view/OppoVolumePanel$StreamControl;->iconRes:I

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 504
    iget-object v7, v4, Lcom/oppo/view/OppoVolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const v9, 0xc02045e

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/OppoSeekBar;

    iput-object v7, v4, Lcom/oppo/view/OppoVolumePanel$StreamControl;->seekbarView:Landroid/widget/OppoSeekBar;

    .line 505
    const/4 v7, 0x3

    if-ne v7, v6, :cond_2

    .line 506
    iget-object v7, v4, Lcom/oppo/view/OppoVolumePanel$StreamControl;->seekbarView:Landroid/widget/OppoSeekBar;

    invoke-virtual {v7, v8}, Landroid/widget/OppoSeekBar;->setSafeMediaVolumeEnabled(Z)V

    .line 507
    iget-object v7, v4, Lcom/oppo/view/OppoVolumePanel$StreamControl;->seekbarView:Landroid/widget/OppoSeekBar;

    invoke-virtual {v7, p0}, Landroid/widget/OppoSeekBar;->setOppoSeekBarFromUserChangeListener(Landroid/widget/OppoSeekBar$OnOppoSeekBarFromUserChangeListener;)V

    .line 520
    :cond_2
    const/4 v7, 0x6

    if-eq v6, v7, :cond_3

    if-nez v6, :cond_4

    :cond_3
    const/4 v2, 0x1

    .line 522
    .local v2, plusOne:I
    :goto_1
    iget-object v7, v4, Lcom/oppo/view/OppoVolumePanel$StreamControl;->seekbarView:Landroid/widget/OppoSeekBar;

    invoke-direct {p0, v6}, Lcom/oppo/view/OppoVolumePanel;->getStreamMaxVolume(I)I

    move-result v9

    add-int/2addr v9, v2

    invoke-virtual {v7, v9}, Landroid/widget/AbsSeekBar;->setMax(I)V

    .line 523
    iget-object v7, v4, Lcom/oppo/view/OppoVolumePanel$StreamControl;->seekbarView:Landroid/widget/OppoSeekBar;

    invoke-virtual {v7, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 524
    iget-object v7, v4, Lcom/oppo/view/OppoVolumePanel$StreamControl;->seekbarView:Landroid/widget/OppoSeekBar;

    invoke-virtual {v7, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 525
    iget-object v7, p0, Lcom/oppo/view/OppoVolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .end local v2           #plusOne:I
    :cond_4
    move v2, v8

    .line 520
    goto :goto_1

    .line 527
    .end local v4           #sc:Lcom/oppo/view/OppoVolumePanel$StreamControl;
    .end local v5           #streamRes:Lcom/oppo/view/OppoVolumePanel$StreamResources;
    .end local v6           #streamType:I
    :cond_5
    return-void
.end method

.method private expand()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 595
    iget-object v2, p0, Lcom/oppo/view/OppoVolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 596
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 597
    iget-object v2, p0, Lcom/oppo/view/OppoVolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 596
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 599
    :cond_0
    iget-object v2, p0, Lcom/oppo/view/OppoVolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 600
    iget-object v2, p0, Lcom/oppo/view/OppoVolumePanel;->mDivider:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 601
    return-void
.end method

.method private forceTimeout()V
    .locals 1

    .prologue
    const/4 v0, 0x5

    .line 1177
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1178
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1179
    return-void
.end method

.method private getOrCreateToneGenerator(I)Landroid/media/ToneGenerator;
    .locals 4
    .parameter "streamType"

    .prologue
    .line 1043
    const/16 v1, -0x64

    if-ne p1, v1, :cond_0

    .line 1047
    iget-boolean v1, p0, Lcom/oppo/view/OppoVolumePanel;->mPlayMasterStreamTones:Z

    if-eqz v1, :cond_2

    .line 1048
    const/4 p1, 0x1

    .line 1053
    :cond_0
    monitor-enter p0

    .line 1054
    :try_start_0
    iget-object v1, p0, Lcom/oppo/view/OppoVolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 1056
    :try_start_1
    iget-object v1, p0, Lcom/oppo/view/OppoVolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    new-instance v2, Landroid/media/ToneGenerator;

    const/16 v3, 0x64

    invoke-direct {v2, p1, v3}, Landroid/media/ToneGenerator;-><init>(II)V

    aput-object v2, v1, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1064
    :cond_1
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/oppo/view/OppoVolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, p1

    monitor-exit p0

    :goto_1
    return-object v1

    .line 1050
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 1057
    :catch_0
    move-exception v0

    .line 1058
    .local v0, e:Ljava/lang/RuntimeException;
    sget-boolean v1, Lcom/oppo/view/OppoVolumePanel;->LOGD:Z

    if-eqz v1, :cond_1

    .line 1059
    const-string v1, "OppoVolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ToneGenerator constructor failed with RuntimeException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1065
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getStreamMaxVolume(I)I
    .locals 1
    .parameter "streamType"

    .prologue
    .line 444
    const/16 v0, -0x64

    if-ne p1, v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/oppo/view/OppoVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMasterMaxVolume()I

    move-result v0

    .line 449
    :goto_0
    return v0

    .line 446
    :cond_0
    const/16 v0, -0xc8

    if-ne p1, v0, :cond_1

    .line 447
    iget-object v0, p0, Lcom/oppo/view/OppoVolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v0}, Landroid/media/AudioService;->getRemoteStreamMaxVolume()I

    move-result v0

    goto :goto_0

    .line 449
    :cond_1
    iget-object v0, p0, Lcom/oppo/view/OppoVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    goto :goto_0
.end method

.method private getStreamVolume(I)I
    .locals 1
    .parameter "streamType"

    .prologue
    .line 454
    const/16 v0, -0x64

    if-ne p1, v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/oppo/view/OppoVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMasterVolume()I

    move-result v0

    .line 459
    :goto_0
    return v0

    .line 456
    :cond_0
    const/16 v0, -0xc8

    if-ne p1, v0, :cond_1

    .line 457
    iget-object v0, p0, Lcom/oppo/view/OppoVolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v0}, Landroid/media/AudioService;->getRemoteStreamVolume()I

    move-result v0

    goto :goto_0

    .line 459
    :cond_1
    iget-object v0, p0, Lcom/oppo/view/OppoVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    goto :goto_0
.end method

.method private inflaterBaseUI(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 401
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 403
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0xc090436

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/view/OppoVolumePanel;->mView:Landroid/view/View;

    .line 404
    iget-object v1, p0, Lcom/oppo/view/OppoVolumePanel;->mView:Landroid/view/View;

    new-instance v2, Lcom/oppo/view/OppoVolumePanel$3;

    invoke-direct {v2, p0}, Lcom/oppo/view/OppoVolumePanel$3;-><init>(Lcom/oppo/view/OppoVolumePanel;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 411
    iget-object v1, p0, Lcom/oppo/view/OppoVolumePanel;->mView:Landroid/view/View;

    const v2, 0xc02045f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/oppo/view/OppoVolumePanel;->mPanel:Landroid/widget/LinearLayout;

    .line 412
    iget-object v1, p0, Lcom/oppo/view/OppoVolumePanel;->mView:Landroid/view/View;

    const v2, 0xc020425

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/oppo/view/OppoVolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    .line 413
    iget-object v1, p0, Lcom/oppo/view/OppoVolumePanel;->mView:Landroid/view/View;

    const v2, 0xc020424

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/oppo/view/OppoVolumePanel;->mMoreButton:Landroid/view/View;

    .line 414
    iget-object v1, p0, Lcom/oppo/view/OppoVolumePanel;->mView:Landroid/view/View;

    const v2, 0xc020423

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/oppo/view/OppoVolumePanel;->mDivider:Landroid/view/View;

    .line 415
    return-void
.end method

.method private isExpanded()Z
    .locals 1

    .prologue
    .line 591
    iget-object v0, p0, Lcom/oppo/view/OppoVolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMuted(I)Z
    .locals 1
    .parameter "streamType"

    .prologue
    .line 434
    const/16 v0, -0x64

    if-ne p1, v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/oppo/view/OppoVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMasterMute()Z

    move-result v0

    .line 439
    :goto_0
    return v0

    .line 436
    :cond_0
    const/16 v0, -0xc8

    if-ne p1, v0, :cond_2

    .line 437
    iget-object v0, p0, Lcom/oppo/view/OppoVolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v0}, Landroid/media/AudioService;->getRemoteStreamVolume()I

    move-result v0

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 439
    :cond_2
    iget-object v0, p0, Lcom/oppo/view/OppoVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    goto :goto_0
.end method

.method private listenToRingerMode()V
    .locals 3

    .prologue
    .line 418
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 419
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 420
    iget-object v1, p0, Lcom/oppo/view/OppoVolumePanel;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/oppo/view/OppoVolumePanel$4;

    invoke-direct {v2, p0}, Lcom/oppo/view/OppoVolumePanel$4;-><init>(Lcom/oppo/view/OppoVolumePanel;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 431
    return-void
.end method

.method private reorderSliders(I)V
    .locals 3
    .parameter "activeStreamType"

    .prologue
    .line 530
    iget-object v1, p0, Lcom/oppo/view/OppoVolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 532
    iget-object v1, p0, Lcom/oppo/view/OppoVolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/view/OppoVolumePanel$StreamControl;

    .line 533
    .local v0, active:Lcom/oppo/view/OppoVolumePanel$StreamControl;
    if-nez v0, :cond_0

    .line 534
    const/4 v1, -0x1

    iput v1, p0, Lcom/oppo/view/OppoVolumePanel;->mActiveStreamType:I

    .line 542
    :goto_0
    invoke-direct {p0}, Lcom/oppo/view/OppoVolumePanel;->addOtherVolumes()V

    .line 543
    return-void

    .line 536
    :cond_0
    iget-object v1, p0, Lcom/oppo/view/OppoVolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    iget-object v2, v0, Lcom/oppo/view/OppoVolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 537
    iput p1, p0, Lcom/oppo/view/OppoVolumePanel;->mActiveStreamType:I

    .line 538
    iget-object v1, v0, Lcom/oppo/view/OppoVolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 539
    invoke-direct {p0, v0}, Lcom/oppo/view/OppoVolumePanel;->updateSlider(Lcom/oppo/view/OppoVolumePanel$StreamControl;)V

    goto :goto_0
.end method

.method private resetTimeout()V
    .locals 3

    .prologue
    const/4 v0, 0x5

    .line 1172
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1173
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1174
    return-void
.end method

.method private setMusicIcon(II)V
    .locals 3
    .parameter "resId"
    .parameter "resMuteId"

    .prologue
    .line 1073
    iget-object v1, p0, Lcom/oppo/view/OppoVolumePanel;->mStreamControls:Ljava/util/HashMap;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/view/OppoVolumePanel$StreamControl;

    .line 1074
    .local v0, sc:Lcom/oppo/view/OppoVolumePanel$StreamControl;
    if-eqz v0, :cond_0

    .line 1075
    iput p1, v0, Lcom/oppo/view/OppoVolumePanel$StreamControl;->iconRes:I

    .line 1076
    iput p2, v0, Lcom/oppo/view/OppoVolumePanel$StreamControl;->iconMuteRes:I

    .line 1077
    iget-object v2, v0, Lcom/oppo/view/OppoVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v1, v0, Lcom/oppo/view/OppoVolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1}, Lcom/oppo/view/OppoVolumePanel;->isMuted(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, v0, Lcom/oppo/view/OppoVolumePanel$StreamControl;->iconMuteRes:I

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1079
    :cond_0
    return-void

    .line 1077
    :cond_1
    iget v1, v0, Lcom/oppo/view/OppoVolumePanel$StreamControl;->iconRes:I

    goto :goto_0
.end method

.method private setStreamVolume(III)V
    .locals 1
    .parameter "streamType"
    .parameter "index"
    .parameter "flags"

    .prologue
    .line 464
    const/16 v0, -0x64

    if-ne p1, v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/oppo/view/OppoVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p2, p3}, Landroid/media/AudioManager;->setMasterVolume(II)V

    .line 471
    :goto_0
    return-void

    .line 466
    :cond_0
    const/16 v0, -0xc8

    if-ne p1, v0, :cond_1

    .line 467
    iget-object v0, p0, Lcom/oppo/view/OppoVolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v0, p2}, Landroid/media/AudioService;->setRemoteStreamVolume(I)V

    goto :goto_0

    .line 469
    :cond_1
    iget-object v0, p0, Lcom/oppo/view/OppoVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0
.end method

.method private updateSlider(Lcom/oppo/view/OppoVolumePanel$StreamControl;)V
    .locals 4
    .parameter "sc"

    .prologue
    const/4 v3, 0x1

    .line 563
    iget-object v1, p1, Lcom/oppo/view/OppoVolumePanel$StreamControl;->seekbarView:Landroid/widget/OppoSeekBar;

    iget v2, p1, Lcom/oppo/view/OppoVolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v2}, Lcom/oppo/view/OppoVolumePanel;->getStreamVolume(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 564
    iget v1, p1, Lcom/oppo/view/OppoVolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1}, Lcom/oppo/view/OppoVolumePanel;->isMuted(I)Z

    move-result v0

    .line 565
    .local v0, muted:Z
    iget-object v2, p1, Lcom/oppo/view/OppoVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget v1, p1, Lcom/oppo/view/OppoVolumePanel$StreamControl;->iconMuteRes:I

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 566
    iget v1, p1, Lcom/oppo/view/OppoVolumePanel$StreamControl;->streamType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/oppo/view/OppoVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 575
    iget-object v1, p1, Lcom/oppo/view/OppoVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    const v2, 0xc08008a

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 579
    :cond_0
    iget v1, p1, Lcom/oppo/view/OppoVolumePanel$StreamControl;->streamType:I

    const/16 v2, -0xc8

    if-ne v1, v2, :cond_2

    .line 582
    iget-object v1, p1, Lcom/oppo/view/OppoVolumePanel$StreamControl;->seekbarView:Landroid/widget/OppoSeekBar;

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 588
    :goto_1
    return-void

    .line 565
    :cond_1
    iget v1, p1, Lcom/oppo/view/OppoVolumePanel$StreamControl;->iconRes:I

    goto :goto_0

    .line 583
    :cond_2
    iget v1, p1, Lcom/oppo/view/OppoVolumePanel$StreamControl;->streamType:I

    iget-object v2, p0, Lcom/oppo/view/OppoVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getMasterStreamType()I

    move-result v2

    if-eq v1, v2, :cond_3

    if-eqz v0, :cond_3

    .line 584
    iget-object v1, p1, Lcom/oppo/view/OppoVolumePanel$StreamControl;->seekbarView:Landroid/widget/OppoSeekBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1

    .line 586
    :cond_3
    iget-object v1, p1, Lcom/oppo/view/OppoVolumePanel$StreamControl;->seekbarView:Landroid/widget/OppoSeekBar;

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1
.end method

.method private updateStates()V
    .locals 4

    .prologue
    .line 613
    iget-object v3, p0, Lcom/oppo/view/OppoVolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 614
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 615
    iget-object v3, p0, Lcom/oppo/view/OppoVolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/view/OppoVolumePanel$StreamControl;

    .line 616
    .local v2, sc:Lcom/oppo/view/OppoVolumePanel$StreamControl;
    invoke-direct {p0, v2}, Lcom/oppo/view/OppoVolumePanel;->updateSlider(Lcom/oppo/view/OppoVolumePanel$StreamControl;)V

    .line 614
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 618
    .end local v2           #sc:Lcom/oppo/view/OppoVolumePanel$StreamControl;
    :cond_0
    return-void
.end method


# virtual methods
.method public changeStreamIcon(Lcom/oppo/view/OppoVolumePanel$StreamControl;)V
    .locals 3
    .parameter "sc"

    .prologue
    .line 1222
    if-eqz p1, :cond_1

    .line 1223
    iget v1, p1, Lcom/oppo/view/OppoVolumePanel$StreamControl;->streamType:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget v1, p1, Lcom/oppo/view/OppoVolumePanel$StreamControl;->streamType:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    iget v1, p1, Lcom/oppo/view/OppoVolumePanel$StreamControl;->streamType:I

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    iget v1, p1, Lcom/oppo/view/OppoVolumePanel$StreamControl;->streamType:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    iget v1, p1, Lcom/oppo/view/OppoVolumePanel$StreamControl;->streamType:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    iget v1, p1, Lcom/oppo/view/OppoVolumePanel$StreamControl;->streamType:I

    const/16 v2, -0x64

    if-ne v1, v2, :cond_1

    .line 1229
    :cond_0
    iget v1, p1, Lcom/oppo/view/OppoVolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1}, Lcom/oppo/view/OppoVolumePanel;->getStreamVolume(I)I

    move-result v0

    .line 1230
    .local v0, volume:I
    iget-object v2, p1, Lcom/oppo/view/OppoVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    if-nez v0, :cond_2

    iget v1, p1, Lcom/oppo/view/OppoVolumePanel$StreamControl;->iconMuteRes:I

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1233
    .end local v0           #volume:I
    :cond_1
    return-void

    .line 1230
    .restart local v0       #volume:I
    :cond_2
    iget v1, p1, Lcom/oppo/view/OppoVolumePanel$StreamControl;->iconRes:I

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 1105
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1169
    :cond_0
    :goto_0
    return-void

    .line 1108
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Lcom/oppo/view/OppoVolumePanel;->onVolumeChanged(II)V

    goto :goto_0

    .line 1113
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Lcom/oppo/view/OppoVolumePanel;->onMuteChanged(II)V

    goto :goto_0

    .line 1118
    :pswitch_2
    invoke-virtual {p0}, Lcom/oppo/view/OppoVolumePanel;->onFreeResources()V

    goto :goto_0

    .line 1123
    :pswitch_3
    invoke-virtual {p0}, Lcom/oppo/view/OppoVolumePanel;->onStopSounds()V

    goto :goto_0

    .line 1128
    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Lcom/oppo/view/OppoVolumePanel;->onPlaySound(II)V

    goto :goto_0

    .line 1134
    :pswitch_5
    invoke-virtual {p0}, Lcom/oppo/view/OppoVolumePanel;->onVibrate()V

    goto :goto_0

    .line 1139
    :pswitch_6
    iget-object v0, p0, Lcom/oppo/view/OppoVolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1140
    iget-object v0, p0, Lcom/oppo/view/OppoVolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1141
    const/4 v0, -0x1

    iput v0, p0, Lcom/oppo/view/OppoVolumePanel;->mActiveStreamType:I

    goto :goto_0

    .line 1146
    :pswitch_7
    iget-object v0, p0, Lcom/oppo/view/OppoVolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1147
    invoke-direct {p0}, Lcom/oppo/view/OppoVolumePanel;->updateStates()V

    goto :goto_0

    .line 1153
    :pswitch_8
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Lcom/oppo/view/OppoVolumePanel;->onRemoteVolumeChanged(II)V

    goto :goto_0

    .line 1158
    :pswitch_9
    invoke-virtual {p0}, Lcom/oppo/view/OppoVolumePanel;->onRemoteVolumeUpdateIfShown()V

    goto :goto_0

    .line 1162
    :pswitch_a
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Lcom/oppo/view/OppoVolumePanel;->onSliderVisibilityChanged(II)V

    goto :goto_0

    .line 1166
    :pswitch_b
    invoke-virtual {p0}, Lcom/oppo/view/OppoVolumePanel;->onDisplaySafeVolumeWarning()V

    goto :goto_0

    .line 1105
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_1
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1213
    iget-object v0, p0, Lcom/oppo/view/OppoVolumePanel;->mMoreButton:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 1214
    invoke-direct {p0}, Lcom/oppo/view/OppoVolumePanel;->expand()V

    .line 1216
    :cond_0
    invoke-direct {p0}, Lcom/oppo/view/OppoVolumePanel;->resetTimeout()V

    .line 1217
    return-void
.end method

.method protected onDisplaySafeVolumeWarning()V
    .locals 6

    .prologue
    .line 979
    sget-object v3, Lcom/oppo/view/OppoVolumePanel;->sConfirmSafeVolumeLock:Ljava/lang/Object;

    monitor-enter v3

    .line 980
    :try_start_0
    sget-object v2, Lcom/oppo/view/OppoVolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    .line 981
    monitor-exit v3

    .line 1037
    :goto_0
    return-void

    .line 983
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/oppo/view/OppoVolumePanel;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0xc0404c9

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v4, 0x1040013

    new-instance v5, Lcom/oppo/view/OppoVolumePanel$6;

    invoke-direct {v5, p0}, Lcom/oppo/view/OppoVolumePanel$6;-><init>(Lcom/oppo/view/OppoVolumePanel;)V

    invoke-virtual {v2, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v4, 0x1040009

    new-instance v5, Lcom/oppo/view/OppoVolumePanel$5;

    invoke-direct {v5, p0}, Lcom/oppo/view/OppoVolumePanel$5;-><init>(Lcom/oppo/view/OppoVolumePanel;)V

    invoke-virtual {v2, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v4, 0x1010355

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    sput-object v2, Lcom/oppo/view/OppoVolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    .line 1019
    iget-object v2, p0, Lcom/oppo/view/OppoVolumePanel;->mStreamControls:Ljava/util/HashMap;

    if-eqz v2, :cond_3

    .line 1020
    iget-object v2, p0, Lcom/oppo/view/OppoVolumePanel;->mStreamControls:Ljava/util/HashMap;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/view/OppoVolumePanel$StreamControl;

    .line 1021
    .local v0, sc:Lcom/oppo/view/OppoVolumePanel$StreamControl;
    new-instance v1, Lcom/oppo/view/OppoVolumePanel$WarningDialogReceiver;

    iget-object v2, p0, Lcom/oppo/view/OppoVolumePanel;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/oppo/view/OppoVolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    iget-object v5, v0, Lcom/oppo/view/OppoVolumePanel$StreamControl;->seekbarView:Landroid/widget/OppoSeekBar;

    invoke-direct {v1, v2, v4, v5}, Lcom/oppo/view/OppoVolumePanel$WarningDialogReceiver;-><init>(Landroid/content/Context;Landroid/app/Dialog;Landroid/widget/OppoSeekBar;)V

    .line 1025
    .end local v0           #sc:Lcom/oppo/view/OppoVolumePanel$StreamControl;
    .local v1, warning:Lcom/oppo/view/OppoVolumePanel$WarningDialogReceiver;
    :goto_1
    iget-object v2, p0, Lcom/oppo/view/OppoVolumePanel;->mSafeVolumeWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oppo/view/OppoVolumePanel;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oppo/view/OppoVolumePanel;->mVibrator:Landroid/os/Vibrator;

    if-eqz v2, :cond_2

    .line 1026
    iget-object v2, p0, Lcom/oppo/view/OppoVolumePanel;->mSafeVolumeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/oppo/view/OppoVolumePanel;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1027
    iget-object v2, p0, Lcom/oppo/view/OppoVolumePanel;->mSafeVolumeWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1029
    :cond_1
    iget-object v2, p0, Lcom/oppo/view/OppoVolumePanel;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V

    .line 1032
    :cond_2
    sget-object v2, Lcom/oppo/view/OppoVolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1033
    sget-object v2, Lcom/oppo/view/OppoVolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v4, 0x7d9

    invoke-virtual {v2, v4}, Landroid/view/Window;->setType(I)V

    .line 1035
    sget-object v2, Lcom/oppo/view/OppoVolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 1036
    monitor-exit v3

    goto/16 :goto_0

    .end local v1           #warning:Lcom/oppo/view/OppoVolumePanel$WarningDialogReceiver;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1023
    :cond_3
    :try_start_1
    new-instance v1, Lcom/oppo/view/OppoVolumePanel$WarningDialogReceiver;

    iget-object v2, p0, Lcom/oppo/view/OppoVolumePanel;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/oppo/view/OppoVolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    invoke-direct {v1, v2, v4}, Lcom/oppo/view/OppoVolumePanel$WarningDialogReceiver;-><init>(Landroid/content/Context;Landroid/app/Dialog;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v1       #warning:Lcom/oppo/view/OppoVolumePanel$WarningDialogReceiver;
    goto :goto_1
.end method

.method protected onFreeResources()V
    .locals 3

    .prologue
    .line 1082
    monitor-enter p0

    .line 1083
    :try_start_0
    iget-object v1, p0, Lcom/oppo/view/OppoVolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 1084
    iget-object v1, p0, Lcom/oppo/view/OppoVolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 1085
    iget-object v1, p0, Lcom/oppo/view/OppoVolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/media/ToneGenerator;->release()V

    .line 1087
    :cond_0
    iget-object v1, p0, Lcom/oppo/view/OppoVolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 1083
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1089
    :cond_1
    monitor-exit p0

    .line 1090
    return-void

    .line 1089
    .end local v0           #i:I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onMuteChanged(II)V
    .locals 4
    .parameter "streamType"
    .parameter "flags"

    .prologue
    .line 738
    sget-boolean v1, Lcom/oppo/view/OppoVolumePanel;->LOGD:Z

    if-eqz v1, :cond_0

    .line 739
    const-string v1, "OppoVolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMuteChanged(streamType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", flags: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    :cond_0
    iget-object v1, p0, Lcom/oppo/view/OppoVolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/view/OppoVolumePanel$StreamControl;

    .line 742
    .local v0, sc:Lcom/oppo/view/OppoVolumePanel$StreamControl;
    if-eqz v0, :cond_1

    .line 743
    iget-object v2, v0, Lcom/oppo/view/OppoVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v1, v0, Lcom/oppo/view/OppoVolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1}, Lcom/oppo/view/OppoVolumePanel;->isMuted(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, v0, Lcom/oppo/view/OppoVolumePanel$StreamControl;->iconMuteRes:I

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 746
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/oppo/view/OppoVolumePanel;->onVolumeChanged(II)V

    .line 747
    return-void

    .line 743
    :cond_2
    iget v1, v0, Lcom/oppo/view/OppoVolumePanel$StreamControl;->iconRes:I

    goto :goto_0
.end method

.method public onOppoSeekBarProgressrFromUserChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 1239
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 1240
    .local v1, tag:Ljava/lang/Object;
    if-eqz p3, :cond_0

    instance-of v2, v1, Lcom/oppo/view/OppoVolumePanel$StreamControl;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 1241
    check-cast v0, Lcom/oppo/view/OppoVolumePanel$StreamControl;

    .line 1242
    .local v0, sc:Lcom/oppo/view/OppoVolumePanel$StreamControl;
    iget v2, v0, Lcom/oppo/view/OppoVolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v2}, Lcom/oppo/view/OppoVolumePanel;->getStreamVolume(I)I

    move-result v2

    if-eq v2, p2, :cond_0

    const/4 v2, 0x3

    iget v3, v0, Lcom/oppo/view/OppoVolumePanel$StreamControl;->streamType:I

    if-ne v2, v3, :cond_0

    .line 1244
    iget v2, v0, Lcom/oppo/view/OppoVolumePanel$StreamControl;->streamType:I

    const/4 v3, 0x0

    invoke-direct {p0, v2, p2, v3}, Lcom/oppo/view/OppoVolumePanel;->setStreamVolume(III)V

    .line 1247
    .end local v0           #sc:Lcom/oppo/view/OppoVolumePanel$StreamControl;
    :cond_0
    invoke-direct {p0}, Lcom/oppo/view/OppoVolumePanel;->resetTimeout()V

    .line 1248
    return-void
.end method

.method protected onPlaySound(II)V
    .locals 4
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v2, 0x3

    .line 878
    invoke-virtual {p0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 879
    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 881
    invoke-virtual {p0}, Lcom/oppo/view/OppoVolumePanel;->onStopSounds()V

    .line 884
    :cond_0
    monitor-enter p0

    .line 885
    :try_start_0
    invoke-direct {p0, p1}, Lcom/oppo/view/OppoVolumePanel;->getOrCreateToneGenerator(I)Landroid/media/ToneGenerator;

    move-result-object v0

    .line 886
    .local v0, toneGen:Landroid/media/ToneGenerator;
    if-eqz v0, :cond_1

    .line 887
    const/16 v1, 0x21

    const/16 v2, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/media/ToneGenerator;->startTone(II)Z

    .line 888
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x96

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 890
    :cond_1
    monitor-exit p0

    .line 891
    return-void

    .line 890
    .end local v0           #toneGen:Landroid/media/ToneGenerator;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 1182
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 1183
    .local v1, tag:Ljava/lang/Object;
    if-eqz p3, :cond_1

    instance-of v2, v1, Lcom/oppo/view/OppoVolumePanel$StreamControl;

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 1184
    check-cast v0, Lcom/oppo/view/OppoVolumePanel$StreamControl;

    .line 1185
    .local v0, sc:Lcom/oppo/view/OppoVolumePanel$StreamControl;
    iget v2, v0, Lcom/oppo/view/OppoVolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v2}, Lcom/oppo/view/OppoVolumePanel;->getStreamVolume(I)I

    move-result v2

    if-eq v2, p2, :cond_0

    .line 1186
    iget v2, v0, Lcom/oppo/view/OppoVolumePanel$StreamControl;->streamType:I

    const/4 v3, 0x0

    invoke-direct {p0, v2, p2, v3}, Lcom/oppo/view/OppoVolumePanel;->setStreamVolume(III)V

    .line 1190
    :cond_0
    invoke-virtual {p0, v0}, Lcom/oppo/view/OppoVolumePanel;->changeStreamIcon(Lcom/oppo/view/OppoVolumePanel$StreamControl;)V

    .line 1193
    .end local v0           #sc:Lcom/oppo/view/OppoVolumePanel$StreamControl;
    :cond_1
    invoke-direct {p0}, Lcom/oppo/view/OppoVolumePanel;->resetTimeout()V

    .line 1194
    return-void
.end method

.method protected onRemoteVolumeChanged(II)V
    .locals 5
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x2

    const/16 v1, -0xc8

    .line 919
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/view/OppoVolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 920
    :cond_0
    monitor-enter p0

    .line 921
    :try_start_0
    iget v0, p0, Lcom/oppo/view/OppoVolumePanel;->mActiveStreamType:I

    if-eq v0, v1, :cond_1

    .line 922
    const/16 v0, -0xc8

    invoke-direct {p0, v0}, Lcom/oppo/view/OppoVolumePanel;->reorderSliders(I)V

    .line 924
    :cond_1
    const/16 v0, -0xc8

    invoke-virtual {p0, v0, p2}, Lcom/oppo/view/OppoVolumePanel;->onShowVolumeChanged(II)V

    .line 925
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 931
    :cond_2
    :goto_0
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/oppo/view/OppoVolumePanel;->mRingIsSilent:Z

    if-nez v0, :cond_3

    .line 932
    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 933
    invoke-virtual {p0, v3, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 936
    :cond_3
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_4

    .line 937
    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 938
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 939
    invoke-virtual {p0}, Lcom/oppo/view/OppoVolumePanel;->onStopSounds()V

    .line 942
    :cond_4
    invoke-virtual {p0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 943
    invoke-virtual {p0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 945
    invoke-direct {p0}, Lcom/oppo/view/OppoVolumePanel;->resetTimeout()V

    .line 946
    return-void

    .line 925
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 927
    :cond_5
    sget-boolean v0, Lcom/oppo/view/OppoVolumePanel;->LOGD:Z

    if-eqz v0, :cond_2

    .line 928
    const-string v0, "OppoVolumePanel"

    const-string v1, "not calling onShowVolumeChanged(), no FLAG_SHOW_UI or no UI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onRemoteVolumeUpdateIfShown()V
    .locals 3

    .prologue
    const/16 v2, -0xc8

    .line 949
    sget-boolean v0, Lcom/oppo/view/OppoVolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    .line 950
    const-string v0, "OppoVolumePanel"

    const-string v1, "onRemoteVolumeUpdateIfShown()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    :cond_0
    iget-object v0, p0, Lcom/oppo/view/OppoVolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/oppo/view/OppoVolumePanel;->mActiveStreamType:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/oppo/view/OppoVolumePanel;->mStreamControls:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 953
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/oppo/view/OppoVolumePanel;->onShowVolumeChanged(II)V

    .line 955
    :cond_1
    return-void
.end method

.method protected onShowVolumeChanged(II)V
    .locals 13
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const v12, 0xc0800d4

    const v11, 0xc0800d3

    const/4 v10, 0x0

    const/16 v9, -0xc8

    const/4 v8, 0x1

    .line 750
    invoke-direct {p0, p1}, Lcom/oppo/view/OppoVolumePanel;->getStreamVolume(I)I

    move-result v0

    .line 751
    .local v0, index:I
    const-string v5, "OppoVolumePanel"

    const-string v6, "onShowVolumeChanged()-----------enter!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    iput-boolean v10, p0, Lcom/oppo/view/OppoVolumePanel;->mRingIsSilent:Z

    .line 754
    sget-boolean v5, Lcom/oppo/view/OppoVolumePanel;->LOGD:Z

    if-eqz v5, :cond_0

    .line 755
    const-string v5, "OppoVolumePanel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onShowVolumeChanged(streamType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", flags: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "), index: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    :cond_0
    invoke-direct {p0, p1}, Lcom/oppo/view/OppoVolumePanel;->getStreamMaxVolume(I)I

    move-result v1

    .line 763
    .local v1, max:I
    sparse-switch p1, :sswitch_data_0

    .line 837
    :cond_1
    :goto_0
    :sswitch_0
    iget-object v5, p0, Lcom/oppo/view/OppoVolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oppo/view/OppoVolumePanel$StreamControl;

    .line 838
    .local v3, sc:Lcom/oppo/view/OppoVolumePanel$StreamControl;
    if-eqz v3, :cond_3

    .line 839
    iget-object v5, v3, Lcom/oppo/view/OppoVolumePanel$StreamControl;->seekbarView:Landroid/widget/OppoSeekBar;

    invoke-virtual {v5}, Landroid/widget/ProgressBar;->getMax()I

    move-result v5

    if-eq v5, v1, :cond_2

    .line 840
    iget-object v5, v3, Lcom/oppo/view/OppoVolumePanel$StreamControl;->seekbarView:Landroid/widget/OppoSeekBar;

    invoke-virtual {v5, v1}, Landroid/widget/AbsSeekBar;->setMax(I)V

    .line 842
    :cond_2
    iget-object v5, v3, Lcom/oppo/view/OppoVolumePanel$StreamControl;->seekbarView:Landroid/widget/OppoSeekBar;

    invoke-virtual {v5, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 843
    iget-object v5, p0, Lcom/oppo/view/OppoVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->getMasterStreamType()I

    move-result v5

    if-eq p1, v5, :cond_8

    if-eq p1, v9, :cond_8

    invoke-direct {p0, p1}, Lcom/oppo/view/OppoVolumePanel;->isMuted(I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 845
    iget-object v5, v3, Lcom/oppo/view/OppoVolumePanel$StreamControl;->seekbarView:Landroid/widget/OppoSeekBar;

    invoke-virtual {v5, v10}, Landroid/view/View;->setEnabled(Z)V

    .line 851
    :goto_1
    invoke-virtual {p0, v3}, Lcom/oppo/view/OppoVolumePanel;->changeStreamIcon(Lcom/oppo/view/OppoVolumePanel$StreamControl;)V

    .line 855
    :cond_3
    iget-object v5, p0, Lcom/oppo/view/OppoVolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->isShowing()Z

    move-result v5

    if-nez v5, :cond_5

    .line 856
    if-ne p1, v9, :cond_9

    const/4 v4, -0x1

    .line 858
    .local v4, stream:I
    :goto_2
    iget-object v5, p0, Lcom/oppo/view/OppoVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v4}, Landroid/media/AudioManager;->forceVolumeControlStream(I)V

    .line 859
    iget-object v5, p0, Lcom/oppo/view/OppoVolumePanel;->mDialog:Landroid/app/Dialog;

    iget-object v6, p0, Lcom/oppo/view/OppoVolumePanel;->mView:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 861
    iget-boolean v5, p0, Lcom/oppo/view/OppoVolumePanel;->mShowCombinedVolumes:Z

    if-eqz v5, :cond_4

    .line 862
    invoke-direct {p0}, Lcom/oppo/view/OppoVolumePanel;->collapse()V

    .line 864
    :cond_4
    iget-object v5, p0, Lcom/oppo/view/OppoVolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 866
    .end local v4           #stream:I
    :cond_5
    const-string v5, "OppoVolumePanel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onShowVolumeChanged()-----------streamType:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    if-eq p1, v9, :cond_6

    and-int/lit8 v5, p2, 0x10

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/oppo/view/OppoVolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v5, p1}, Landroid/media/AudioService;->isStreamAffectedByRingerMode(I)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/oppo/view/OppoVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v5

    if-ne v5, v8, :cond_6

    .line 872
    const-string v5, "OppoVolumePanel"

    const-string v6, "onShowVolumeChanged()-----------send message:MSG_VIBRATE"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x12c

    invoke-virtual {p0, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 875
    :cond_6
    return-void

    .line 767
    .end local v3           #sc:Lcom/oppo/view/OppoVolumePanel$StreamControl;
    :sswitch_1
    iget-object v5, p0, Lcom/oppo/view/OppoVolumePanel;->mContext:Landroid/content/Context;

    invoke-static {v5, v8}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    .line 769
    .local v2, ringuri:Landroid/net/Uri;
    if-nez v2, :cond_1

    .line 770
    iput-boolean v8, p0, Lcom/oppo/view/OppoVolumePanel;->mRingIsSilent:Z

    goto/16 :goto_0

    .line 777
    .end local v2           #ringuri:Landroid/net/Uri;
    :sswitch_2
    iget-object v5, p0, Lcom/oppo/view/OppoVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v5

    and-int/lit16 v5, v5, 0x380

    if-eqz v5, :cond_7

    .line 779
    const v5, 0xc080467

    const v6, 0xc080469

    invoke-direct {p0, v5, v6}, Lcom/oppo/view/OppoVolumePanel;->setMusicIcon(II)V

    goto/16 :goto_0

    .line 782
    :cond_7
    invoke-direct {p0, v11, v12}, Lcom/oppo/view/OppoVolumePanel;->setMusicIcon(II)V

    goto/16 :goto_0

    .line 789
    :sswitch_3
    invoke-direct {p0, v11, v12}, Lcom/oppo/view/OppoVolumePanel;->setMusicIcon(II)V

    goto/16 :goto_0

    .line 800
    :sswitch_4
    add-int/lit8 v0, v0, 0x1

    .line 801
    add-int/lit8 v1, v1, 0x1

    .line 802
    goto/16 :goto_0

    .line 810
    :sswitch_5
    iget-object v5, p0, Lcom/oppo/view/OppoVolumePanel;->mContext:Landroid/content/Context;

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    .line 812
    .restart local v2       #ringuri:Landroid/net/Uri;
    if-nez v2, :cond_1

    .line 813
    iput-boolean v8, p0, Lcom/oppo/view/OppoVolumePanel;->mRingIsSilent:Z

    goto/16 :goto_0

    .line 824
    .end local v2           #ringuri:Landroid/net/Uri;
    :sswitch_6
    add-int/lit8 v0, v0, 0x1

    .line 825
    add-int/lit8 v1, v1, 0x1

    .line 826
    goto/16 :goto_0

    .line 830
    :sswitch_7
    sget-boolean v5, Lcom/oppo/view/OppoVolumePanel;->LOGD:Z

    if-eqz v5, :cond_1

    .line 831
    const-string v5, "OppoVolumePanel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "showing remote volume "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " over "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 847
    .restart local v3       #sc:Lcom/oppo/view/OppoVolumePanel$StreamControl;
    :cond_8
    iget-object v5, v3, Lcom/oppo/view/OppoVolumePanel$StreamControl;->seekbarView:Landroid/widget/OppoSeekBar;

    invoke-virtual {v5, v8}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_1

    :cond_9
    move v4, p1

    .line 856
    goto/16 :goto_2

    .line 763
    :sswitch_data_0
    .sparse-switch
        -0xc8 -> :sswitch_7
        0x0 -> :sswitch_4
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_0
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0xa -> :sswitch_3
    .end sparse-switch
.end method

.method protected declared-synchronized onSliderVisibilityChanged(II)V
    .locals 4
    .parameter "streamType"
    .parameter "visible"

    .prologue
    const/4 v1, 0x1

    .line 965
    monitor-enter p0

    if-ne p2, v1, :cond_1

    .line 966
    .local v1, isVisible:Z
    :goto_0
    :try_start_0
    sget-object v3, Lcom/oppo/view/OppoVolumePanel;->STREAMS:[Lcom/oppo/view/OppoVolumePanel$StreamResources;

    array-length v3, v3

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_0

    .line 967
    sget-object v3, Lcom/oppo/view/OppoVolumePanel;->STREAMS:[Lcom/oppo/view/OppoVolumePanel$StreamResources;

    aget-object v2, v3, v0

    .line 968
    .local v2, streamRes:Lcom/oppo/view/OppoVolumePanel$StreamResources;
    iget v3, v2, Lcom/oppo/view/OppoVolumePanel$StreamResources;->streamType:I

    if-ne v3, p1, :cond_2

    .line 969
    iput-boolean v1, v2, Lcom/oppo/view/OppoVolumePanel$StreamResources;->show:Z

    .line 970
    if-nez v1, :cond_0

    iget v3, p0, Lcom/oppo/view/OppoVolumePanel;->mActiveStreamType:I

    if-ne v3, p1, :cond_0

    .line 971
    const/4 v3, -0x1

    iput v3, p0, Lcom/oppo/view/OppoVolumePanel;->mActiveStreamType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 976
    .end local v2           #streamRes:Lcom/oppo/view/OppoVolumePanel$StreamResources;
    :cond_0
    monitor-exit p0

    return-void

    .line 965
    .end local v0           #i:I
    .end local v1           #isVisible:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 966
    .restart local v0       #i:I
    .restart local v1       #isVisible:Z
    .restart local v2       #streamRes:Lcom/oppo/view/OppoVolumePanel$StreamResources;
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 965
    .end local v0           #i:I
    .end local v2           #streamRes:Lcom/oppo/view/OppoVolumePanel$StreamResources;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 1196
    return-void
.end method

.method protected onStopSounds()V
    .locals 4

    .prologue
    .line 895
    monitor-enter p0

    .line 896
    :try_start_0
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    .line 897
    .local v1, numStreamTypes:I
    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 898
    iget-object v3, p0, Lcom/oppo/view/OppoVolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v2, v3, v0

    .line 899
    .local v2, toneGen:Landroid/media/ToneGenerator;
    if-eqz v2, :cond_0

    .line 900
    invoke-virtual {v2}, Landroid/media/ToneGenerator;->stopTone()V

    .line 897
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 903
    .end local v2           #toneGen:Landroid/media/ToneGenerator;
    :cond_1
    monitor-exit p0

    .line 904
    return-void

    .line 903
    .end local v0           #i:I
    .end local v1           #numStreamTypes:I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4
    .parameter "seekBar"

    .prologue
    const/16 v3, -0xc8

    .line 1199
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 1200
    .local v1, tag:Ljava/lang/Object;
    instance-of v2, v1, Lcom/oppo/view/OppoVolumePanel$StreamControl;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 1201
    check-cast v0, Lcom/oppo/view/OppoVolumePanel$StreamControl;

    .line 1206
    .local v0, sc:Lcom/oppo/view/OppoVolumePanel$StreamControl;
    iget v2, v0, Lcom/oppo/view/OppoVolumePanel$StreamControl;->streamType:I

    if-ne v2, v3, :cond_0

    .line 1207
    invoke-direct {p0, v3}, Lcom/oppo/view/OppoVolumePanel;->getStreamVolume(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1210
    .end local v0           #sc:Lcom/oppo/view/OppoVolumePanel$StreamControl;
    :cond_0
    return-void
.end method

.method protected onVibrate()V
    .locals 3

    .prologue
    .line 908
    iget-object v0, p0, Lcom/oppo/view/OppoVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 912
    :goto_0
    return-void

    .line 911
    :cond_0
    iget-object v0, p0, Lcom/oppo/view/OppoVolumePanel;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0
.end method

.method protected onVolumeChanged(II)V
    .locals 5
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 706
    sget-boolean v0, Lcom/oppo/view/OppoVolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    .line 707
    const-string v0, "OppoVolumePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVolumeChanged(streamType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    :cond_0
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_2

    .line 710
    monitor-enter p0

    .line 711
    :try_start_0
    iget v0, p0, Lcom/oppo/view/OppoVolumePanel;->mActiveStreamType:I

    if-eq v0, p1, :cond_1

    .line 712
    invoke-direct {p0, p1}, Lcom/oppo/view/OppoVolumePanel;->reorderSliders(I)V

    .line 714
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/oppo/view/OppoVolumePanel;->onShowVolumeChanged(II)V

    .line 715
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 718
    :cond_2
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/oppo/view/OppoVolumePanel;->mRingIsSilent:Z

    if-nez v0, :cond_3

    .line 719
    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 720
    invoke-virtual {p0, v3, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 723
    :cond_3
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_4

    .line 724
    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 725
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 726
    const-string v0, "OppoVolumePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVolumeChanged() ---  removemessage --- MSG_VIBRATE flags= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    invoke-virtual {p0}, Lcom/oppo/view/OppoVolumePanel;->onStopSounds()V

    .line 730
    :cond_4
    invoke-virtual {p0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 731
    invoke-virtual {p0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 733
    invoke-direct {p0}, Lcom/oppo/view/OppoVolumePanel;->resetTimeout()V

    .line 734
    return-void

    .line 715
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public postDisplaySafeVolumeWarning()V
    .locals 4

    .prologue
    const/16 v3, 0xb

    const/4 v2, 0x0

    .line 688
    invoke-virtual {p0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 698
    :cond_0
    :goto_0
    return-void

    .line 690
    :cond_1
    invoke-virtual {p0, v3, v2, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 693
    iget-object v1, p0, Lcom/oppo/view/OppoVolumePanel;->mStreamControls:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 694
    iget-object v1, p0, Lcom/oppo/view/OppoVolumePanel;->mStreamControls:Ljava/util/HashMap;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/view/OppoVolumePanel$StreamControl;

    .line 695
    .local v0, sc:Lcom/oppo/view/OppoVolumePanel$StreamControl;
    iget-object v1, v0, Lcom/oppo/view/OppoVolumePanel$StreamControl;->seekbarView:Landroid/widget/OppoSeekBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/OppoSeekBar;->setSafeMediaVolumeEnabled(Z)V

    goto :goto_0
.end method

.method public postHasNewRemotePlaybackInfo()V
    .locals 2

    .prologue
    const/16 v1, 0x9

    .line 660
    invoke-virtual {p0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 665
    :goto_0
    return-void

    .line 664
    :cond_0
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public postMasterMuteChanged(I)V
    .locals 1
    .parameter "flags"

    .prologue
    .line 684
    const/16 v0, -0x64

    invoke-virtual {p0, v0, p1}, Lcom/oppo/view/OppoVolumePanel;->postMuteChanged(II)V

    .line 685
    return-void
.end method

.method public postMasterVolumeChanged(I)V
    .locals 1
    .parameter "flags"

    .prologue
    .line 668
    const/16 v0, -0x64

    invoke-virtual {p0, v0, p1}, Lcom/oppo/view/OppoVolumePanel;->postVolumeChanged(II)V

    .line 669
    return-void
.end method

.method public postMuteChanged(II)V
    .locals 1
    .parameter "streamType"
    .parameter "flags"

    .prologue
    .line 672
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 681
    :goto_0
    return-void

    .line 674
    :cond_0
    monitor-enter p0

    .line 675
    :try_start_0
    iget-object v0, p0, Lcom/oppo/view/OppoVolumePanel;->mStreamControls:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 676
    invoke-direct {p0}, Lcom/oppo/view/OppoVolumePanel;->createSliders()V

    .line 678
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 679
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 680
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 678
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public postRemoteSliderVisibility(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    .line 645
    const/16 v1, 0xa

    const/16 v2, -0xc8

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v1, v2, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 647
    return-void

    .line 645
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public postRemoteVolumeChanged(II)V
    .locals 2
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/16 v1, 0x8

    .line 633
    invoke-virtual {p0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 642
    :goto_0
    return-void

    .line 635
    :cond_0
    monitor-enter p0

    .line 636
    :try_start_0
    iget-object v0, p0, Lcom/oppo/view/OppoVolumePanel;->mStreamControls:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 637
    invoke-direct {p0}, Lcom/oppo/view/OppoVolumePanel;->createSliders()V

    .line 639
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 640
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 641
    invoke-virtual {p0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 639
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public postVolumeChanged(II)V
    .locals 2
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v1, 0x0

    .line 621
    invoke-virtual {p0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 630
    :goto_0
    return-void

    .line 623
    :cond_0
    monitor-enter p0

    .line 624
    :try_start_0
    iget-object v0, p0, Lcom/oppo/view/OppoVolumePanel;->mStreamControls:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 625
    invoke-direct {p0}, Lcom/oppo/view/OppoVolumePanel;->createSliders()V

    .line 627
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 628
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 629
    invoke-virtual {p0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 627
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
