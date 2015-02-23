.class public Landroid/view/OppoViewUtil;
.super Ljava/lang/Object;
.source "OppoViewUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OppoViewUtil"

.field private static mAudioManager:Landroid/media/AudioManager;

.field private static mExVibrator:Landroid/os/OppoExVibrator;

.field private static final mToken:Landroid/os/Binder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    sput-object v0, Landroid/view/OppoViewUtil;->mToken:Landroid/os/Binder;

    .line 43
    sput-object v1, Landroid/view/OppoViewUtil;->mExVibrator:Landroid/os/OppoExVibrator;

    .line 44
    sput-object v1, Landroid/view/OppoViewUtil;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static querySoundEffectsEnabled(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sound_effects_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static vibrate(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 47
    invoke-static {p0}, Landroid/view/OppoViewUtil;->querySoundEffectsEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    sget-object v1, Landroid/view/OppoViewUtil;->mExVibrator:Landroid/os/OppoExVibrator;

    if-nez v1, :cond_2

    .line 52
    new-instance v1, Landroid/os/OppoExVibrator;

    invoke-direct {v1}, Landroid/os/OppoExVibrator;-><init>()V

    sput-object v1, Landroid/view/OppoViewUtil;->mExVibrator:Landroid/os/OppoExVibrator;

    .line 55
    :cond_2
    sget-object v1, Landroid/view/OppoViewUtil;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_3

    .line 56
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    sput-object v1, Landroid/view/OppoViewUtil;->mAudioManager:Landroid/media/AudioManager;

    .line 59
    :cond_3
    sget-object v1, Landroid/view/OppoViewUtil;->mExVibrator:Landroid/os/OppoExVibrator;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/view/OppoViewUtil;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/view/OppoViewUtil;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    :try_start_0
    sget-object v1, Landroid/view/OppoViewUtil;->mExVibrator:Landroid/os/OppoExVibrator;

    sget-object v2, Landroid/view/OppoViewUtil;->mToken:Landroid/os/Binder;

    invoke-virtual {v1, v2}, Landroid/os/OppoExVibrator;->vibrateNotCheck(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "OppoViewUtil"

    const-string v2, "Failing registerInputEvent"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
