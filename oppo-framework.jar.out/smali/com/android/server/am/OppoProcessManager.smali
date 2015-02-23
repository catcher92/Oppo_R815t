.class public Lcom/android/server/am/OppoProcessManager;
.super Ljava/lang/Object;
.source "OppoProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OppoProcessManager$H;,
        Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;
    }
.end annotation


# static fields
.field private static final APP_WIDGET_PATH:Ljava/lang/String; = "/data/data_bpm/appwidgets.xml"

.field private static final BAD_APPS_PATH:Ljava/lang/String; = "/data/data_bpm/bad_apps.xml"

.field private static final BPM_DIR:Ljava/lang/String; = "/data/data_bpm"

.field private static final BPM_PATH:Ljava/lang/String; = "/data/data_bpm/bpm.xml"

.field private static final BPM_STATUS_PATH:Ljava/lang/String; = "/data/data_bpm/bpm_sts.xml"

.field private static final BRD_PATH:Ljava/lang/String; = "/data/data_bpm/brd.xml"

.field private static DEBUG:Z = false

.field public static DEBUG_DETAIL:Z = false

.field private static final PKG_PATH:Ljava/lang/String; = "/data/data_bpm/pkg.xml"

.field private static final SUSPEND_DELAY:J = 0x1388L

.field private static final TAG:Ljava/lang/String; = "OppoProcessManager"

.field private static final UPDATE_APPWIDGET:I = 0x69

.field private static final UPDATE_BAD:I = 0x68

.field private static final UPDATE_BPM:I = 0x65

.field private static final UPDATE_BRD:I = 0x66

.field private static final UPDATE_PKG:I = 0x67

.field private static final UPDATE_STS:I = 0x64

.field private static mOppoProcessManager:Lcom/android/server/am/OppoProcessManager;


# instance fields
.field private mActivityManager:Lcom/android/server/am/ActivityManagerService;

.field private mAppWidgetFileObserver:Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;

.field private mAppWidgetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBPMFileObserver:Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;

.field private mBPMList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBPMSTSFileObserver:Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;

.field private mBPMStatus:Z

.field private mBadAppFileObserver:Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;

.field private mBadList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBrdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBroadcastFileObserver:Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;

.field private mH:Lcom/android/server/am/OppoProcessManager$H;

.field final mHandler:Landroid/os/Handler;

.field private mPackageFileObserver:Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;

.field private mPkgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPower:Lcom/android/server/power/PowerManagerService;

.field private mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/OppoProcessManager;->DEBUG:Z

    .line 61
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/OppoProcessManager;->DEBUG_DETAIL:Z

    .line 65
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/OppoProcessManager;->mOppoProcessManager:Lcom/android/server/am/OppoProcessManager;

    return-void
.end method

.method protected constructor <init>()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object v2, p0, Lcom/android/server/am/OppoProcessManager;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 68
    iput-object v2, p0, Lcom/android/server/am/OppoProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    .line 69
    iput-object v2, p0, Lcom/android/server/am/OppoProcessManager;->mPower:Lcom/android/server/power/PowerManagerService;

    .line 70
    iput-object v2, p0, Lcom/android/server/am/OppoProcessManager;->mH:Lcom/android/server/am/OppoProcessManager$H;

    .line 72
    iput-boolean v4, p0, Lcom/android/server/am/OppoProcessManager;->mBPMStatus:Z

    .line 73
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OppoProcessManager;->mBPMList:Ljava/util/List;

    .line 74
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OppoProcessManager;->mPkgList:Ljava/util/List;

    .line 75
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OppoProcessManager;->mBrdList:Ljava/util/List;

    .line 78
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OppoProcessManager;->mBadList:Ljava/util/List;

    .line 98
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OppoProcessManager;->mAppWidgetList:Ljava/util/List;

    .line 103
    new-instance v2, Lcom/android/server/am/OppoProcessManager$1;

    invoke-direct {v2, p0}, Lcom/android/server/am/OppoProcessManager$1;-><init>(Lcom/android/server/am/OppoProcessManager;)V

    iput-object v2, p0, Lcom/android/server/am/OppoProcessManager;->mHandler:Landroid/os/Handler;

    .line 358
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "ProcessManagerThread"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 359
    .local v0, mThread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 360
    new-instance v2, Lcom/android/server/am/OppoProcessManager$H;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v2, p0, v5}, Lcom/android/server/am/OppoProcessManager$H;-><init>(Lcom/android/server/am/OppoProcessManager;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/am/OppoProcessManager;->mH:Lcom/android/server/am/OppoProcessManager$H;

    .line 361
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/OppoProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    .line 362
    const-string v2, "/data/data_bpm"

    invoke-direct {p0, v2}, Lcom/android/server/am/OppoProcessManager;->initDir(Ljava/lang/String;)V

    .line 364
    const-string v2, "/data/data_bpm/bpm_sts.xml"

    invoke-virtual {p0, v2}, Lcom/android/server/am/OppoProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 365
    .local v1, pl:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 366
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v5, "true"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/am/OppoProcessManager;->mBPMStatus:Z

    .line 369
    :cond_0
    const-string v2, "/data/data_bpm/bpm.xml"

    invoke-virtual {p0, v2}, Lcom/android/server/am/OppoProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/OppoProcessManager;->mBPMList:Ljava/util/List;

    .line 370
    const-string v2, "/data/data_bpm/pkg.xml"

    invoke-virtual {p0, v2}, Lcom/android/server/am/OppoProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/OppoProcessManager;->mPkgList:Ljava/util/List;

    .line 371
    const-string v2, "/data/data_bpm/brd.xml"

    invoke-virtual {p0, v2}, Lcom/android/server/am/OppoProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/OppoProcessManager;->mBrdList:Ljava/util/List;

    .line 372
    const-string v2, "/data/data_bpm/bad_apps.xml"

    invoke-virtual {p0, v2}, Lcom/android/server/am/OppoProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/OppoProcessManager;->mBadList:Ljava/util/List;

    .line 374
    new-instance v2, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;

    const-string v3, "/data/data_bpm/bpm_sts.xml"

    invoke-direct {v2, p0, v3}, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;-><init>(Lcom/android/server/am/OppoProcessManager;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/am/OppoProcessManager;->mBPMSTSFileObserver:Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;

    .line 375
    iget-object v2, p0, Lcom/android/server/am/OppoProcessManager;->mBPMSTSFileObserver:Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;

    invoke-virtual {v2}, Landroid/os/FileObserver;->startWatching()V

    .line 377
    new-instance v2, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;

    const-string v3, "/data/data_bpm/bpm.xml"

    invoke-direct {v2, p0, v3}, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;-><init>(Lcom/android/server/am/OppoProcessManager;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/am/OppoProcessManager;->mBPMFileObserver:Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;

    .line 378
    iget-object v2, p0, Lcom/android/server/am/OppoProcessManager;->mBPMFileObserver:Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;

    invoke-virtual {v2}, Landroid/os/FileObserver;->startWatching()V

    .line 380
    new-instance v2, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;

    const-string v3, "/data/data_bpm/pkg.xml"

    invoke-direct {v2, p0, v3}, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;-><init>(Lcom/android/server/am/OppoProcessManager;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/am/OppoProcessManager;->mPackageFileObserver:Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;

    .line 381
    iget-object v2, p0, Lcom/android/server/am/OppoProcessManager;->mPackageFileObserver:Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;

    invoke-virtual {v2}, Landroid/os/FileObserver;->startWatching()V

    .line 383
    new-instance v2, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;

    const-string v3, "/data/data_bpm/brd.xml"

    invoke-direct {v2, p0, v3}, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;-><init>(Lcom/android/server/am/OppoProcessManager;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/am/OppoProcessManager;->mBroadcastFileObserver:Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;

    .line 384
    iget-object v2, p0, Lcom/android/server/am/OppoProcessManager;->mBroadcastFileObserver:Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;

    invoke-virtual {v2}, Landroid/os/FileObserver;->startWatching()V

    .line 386
    new-instance v2, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;

    const-string v3, "/data/data_bpm/bad_apps.xml"

    invoke-direct {v2, p0, v3}, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;-><init>(Lcom/android/server/am/OppoProcessManager;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/am/OppoProcessManager;->mBadAppFileObserver:Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;

    .line 387
    iget-object v2, p0, Lcom/android/server/am/OppoProcessManager;->mBadAppFileObserver:Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;

    invoke-virtual {v2}, Landroid/os/FileObserver;->startWatching()V

    .line 390
    const-string v2, "/data/data_bpm/appwidgets.xml"

    invoke-virtual {p0, v2}, Lcom/android/server/am/OppoProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/OppoProcessManager;->mAppWidgetList:Ljava/util/List;

    .line 391
    new-instance v2, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;

    const-string v3, "/data/data_bpm/appwidgets.xml"

    invoke-direct {v2, p0, v3}, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;-><init>(Lcom/android/server/am/OppoProcessManager;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/am/OppoProcessManager;->mAppWidgetFileObserver:Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;

    .line 392
    iget-object v2, p0, Lcom/android/server/am/OppoProcessManager;->mAppWidgetFileObserver:Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;

    invoke-virtual {v2}, Landroid/os/FileObserver;->startWatching()V

    .line 393
    return-void

    :cond_1
    move v2, v4

    .line 366
    goto :goto_0
.end method

.method private Logcat(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 1057
    sget-boolean v0, Lcom/android/server/am/OppoProcessManager;->DEBUG_DETAIL:Z

    if-eqz v0, :cond_0

    .line 1058
    const-string v0, "OppoProcessManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/OppoProcessManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/server/am/OppoProcessManager;->mBPMStatus:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/am/OppoProcessManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/server/am/OppoProcessManager;->mBPMStatus:Z

    return p1
.end method

.method static synthetic access$1000(Lcom/android/server/am/OppoProcessManager;)Lcom/android/server/am/ActivityManagerService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/server/am/OppoProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/am/OppoProcessManager;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/server/am/OppoProcessManager;->mBPMList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1100()Z
    .locals 1

    .prologue
    .line 56
    sget-boolean v0, Lcom/android/server/am/OppoProcessManager;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/am/OppoProcessManager;Lcom/android/server/am/ProcessRecord;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/server/am/OppoProcessManager;->checkProcessAdj(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/am/OppoProcessManager;Lcom/android/server/am/ProcessRecord;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/server/am/OppoProcessManager;->checkProcessRecord(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/am/OppoProcessManager;Lcom/android/server/am/ProcessRecord;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/server/am/OppoProcessManager;->isInputMethodApplication(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/am/OppoProcessManager;Lcom/android/server/am/ProcessRecord;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/server/am/OppoProcessManager;->suspendProcess(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/am/OppoProcessManager;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/server/am/OppoProcessManager;->getActiveAudioPids()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/am/OppoProcessManager;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/server/am/OppoProcessManager;->getTouchedWindowsPids()[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/am/OppoProcessManager;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/server/am/OppoProcessManager;->getWakeLockedPids()[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/am/OppoProcessManager;Lcom/android/server/am/ProcessRecord;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/server/am/OppoProcessManager;->cancelNotifications(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/am/OppoProcessManager;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/server/am/OppoProcessManager;->mAppWidgetList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/am/OppoProcessManager;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/server/am/OppoProcessManager;->isLocationApplication(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/am/OppoProcessManager;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/server/am/OppoProcessManager;->mAppWidgetList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/server/am/OppoProcessManager;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/server/am/OppoProcessManager;->checkProcessToast(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/am/OppoProcessManager;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/server/am/OppoProcessManager;->updateProcessStateForChanged(Z)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/server/am/OppoProcessManager;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/server/am/OppoProcessManager;->mBrdList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$502(Lcom/android/server/am/OppoProcessManager;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/server/am/OppoProcessManager;->mPkgList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$602(Lcom/android/server/am/OppoProcessManager;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/server/am/OppoProcessManager;->mBadList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/server/am/OppoProcessManager;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/server/am/OppoProcessManager;->updateProcessStateForWidgetChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/am/OppoProcessManager;Ljava/lang/String;)Lcom/android/server/am/ProcessRecord;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/server/am/OppoProcessManager;->getProcessForPid(Ljava/lang/String;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/am/OppoProcessManager;)Lcom/android/server/am/OppoProcessManager$H;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/server/am/OppoProcessManager;->mH:Lcom/android/server/am/OppoProcessManager$H;

    return-object v0
.end method

.method private cancelNotifications(Lcom/android/server/am/ProcessRecord;)V
    .locals 7
    .parameter "app"

    .prologue
    .line 581
    iget-object v5, p0, Lcom/android/server/am/OppoProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 582
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-lez v4, :cond_0

    .line 583
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 584
    .local v3, pkg:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/am/OppoProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/server/am/OppoProcessManager$2;

    invoke-direct {v6, p0, v3, p1}, Lcom/android/server/am/OppoProcessManager$2;-><init>(Lcom/android/server/am/OppoProcessManager;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {v4, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 583
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 592
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #pkg:Ljava/lang/String;
    :cond_0
    monitor-exit v5

    .line 593
    return-void

    .line 592
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private changeMod()V
    .locals 4

    .prologue
    .line 601
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "chmod 777 /data/data_bpm"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 602
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "chmod 777 /data/data_bpm/bpm.xml"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 603
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "chmod 777 /data/data_bpm/bpm_sts.xml"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 604
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "chmod 777 /data/data_bpm/pkg.xml"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 605
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "chmod 777 /data/data_bpm/brd.xml"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 606
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "chmod 777 /data/data_bpm/bad_apps.xml"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 607
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "chmod 777 /data/data_bpm/appwidgets.xml"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 611
    :goto_0
    return-void

    .line 608
    :catch_0
    move-exception v0

    .line 609
    .local v0, e:Ljava/io/IOException;
    const-string v1, "OppoProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkProcessAdj(Lcom/android/server/am/ProcessRecord;)Z
    .locals 2
    .parameter "app"

    .prologue
    const/4 v0, 0x1

    .line 531
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->setAdj:I

    if-gt v1, v0, :cond_0

    .line 534
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkProcessRecord(Lcom/android/server/am/ProcessRecord;)Z
    .locals 7
    .parameter "app"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 428
    iget-object v4, p0, Lcom/android/server/am/OppoProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 429
    if-nez p1, :cond_0

    .line 430
    :try_start_0
    monitor-exit v4

    .line 475
    :goto_0
    return v2

    .line 433
    :cond_0
    iget v5, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    const/16 v6, 0x2710

    if-ge v5, v6, :cond_2

    .line 434
    sget-boolean v2, Lcom/android/server/am/OppoProcessManager;->DEBUG_DETAIL:Z

    if-eqz v2, :cond_1

    .line 435
    const-string v2, "OppoProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "#1 FIRST_APPLICATION_UID"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :cond_1
    monitor-exit v4

    move v2, v3

    goto :goto_0

    .line 441
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/am/OppoProcessManager;->isHomeProcess(Lcom/android/server/am/ProcessRecord;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 442
    monitor-exit v4

    move v2, v3

    goto :goto_0

    .line 445
    :cond_3
    iget-object v5, p0, Lcom/android/server/am/OppoProcessManager;->mPkgList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 446
    .local v1, pkg:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v1, v5}, Lcom/android/server/am/OppoProcessManager;->isInclude(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 447
    monitor-exit v4

    move v2, v3

    goto :goto_0

    .line 452
    .end local v1           #pkg:Ljava/lang/String;
    :cond_5
    iget-object v5, p0, Lcom/android/server/am/OppoProcessManager;->mBPMList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 453
    .restart local v1       #pkg:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v1, v5}, Lcom/android/server/am/OppoProcessManager;->isInclude(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 454
    monitor-exit v4

    move v2, v3

    goto :goto_0

    .line 459
    .end local v1           #pkg:Ljava/lang/String;
    :cond_7
    iget-object v5, p0, Lcom/android/server/am/OppoProcessManager;->mAppWidgetList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 460
    .restart local v1       #pkg:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v1, v5}, Lcom/android/server/am/OppoProcessManager;->isInclude(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 461
    monitor-exit v4

    move v2, v3

    goto/16 :goto_0

    .line 465
    .end local v1           #pkg:Ljava/lang/String;
    :cond_9
    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_c

    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_c

    .line 467
    iget-object v5, p0, Lcom/android/server/am/OppoProcessManager;->mBadList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 468
    .restart local v1       #pkg:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v1, v5}, Lcom/android/server/am/OppoProcessManager;->isInclude(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 469
    monitor-exit v4

    goto/16 :goto_0

    .line 476
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #pkg:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 472
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_b
    :try_start_1
    monitor-exit v4

    move v2, v3

    goto/16 :goto_0

    .line 475
    :cond_c
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method private checkProcessToast(I)Z
    .locals 1
    .parameter "pid"

    .prologue
    .line 596
    invoke-static {p1}, Lcom/android/server/OppoBPMHelper;->checkProcessToast(I)Z

    move-result v0

    return v0
.end method

.method private copyFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "fromFile"
    .parameter "toFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1048
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1049
    .local v1, targetFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1054
    :goto_0
    return-void

    .line 1052
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1053
    .local v0, sourceFile:Ljava/io/File;
    invoke-static {v0, v1}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    goto :goto_0
.end method

.method private getActiveAudioPids()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 539
    iget-object v1, p0, Lcom/android/server/am/OppoProcessManager;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_0

    .line 540
    iget-object v1, p0, Lcom/android/server/am/OppoProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/server/am/OppoProcessManager;->mAudioManager:Landroid/media/AudioManager;

    .line 544
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/OppoProcessManager;->mAudioManager:Landroid/media/AudioManager;

    const-string v2, "get_pid"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 545
    .local v0, pids:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/server/am/OppoProcessManager;->getActiveAudioPids(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getActiveAudioPids(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .parameter "pids"

    .prologue
    const/4 v0, 0x0

    .line 549
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 558
    :cond_0
    :goto_0
    return-object v0

    .line 553
    :cond_1
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 557
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 558
    .local v0, pid:[Ljava/lang/String;
    goto :goto_0
.end method

.method private getInputMethodList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 842
    const-string v1, "input_method"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/InputMethodManagerService;

    .line 844
    .local v0, imManager:Lcom/android/server/InputMethodManagerService;
    if-eqz v0, :cond_0

    .line 845
    invoke-virtual {v0}, Lcom/android/server/InputMethodManagerService;->getInputMethodList()Ljava/util/List;

    move-result-object v1

    .line 847
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final getInstance()Lcom/android/server/am/OppoProcessManager;
    .locals 1

    .prologue
    .line 396
    sget-object v0, Lcom/android/server/am/OppoProcessManager;->mOppoProcessManager:Lcom/android/server/am/OppoProcessManager;

    if-nez v0, :cond_0

    .line 397
    new-instance v0, Lcom/android/server/am/OppoProcessManager;

    invoke-direct {v0}, Lcom/android/server/am/OppoProcessManager;-><init>()V

    sput-object v0, Lcom/android/server/am/OppoProcessManager;->mOppoProcessManager:Lcom/android/server/am/OppoProcessManager;

    .line 399
    :cond_0
    sget-object v0, Lcom/android/server/am/OppoProcessManager;->mOppoProcessManager:Lcom/android/server/am/OppoProcessManager;

    return-object v0
.end method

.method private getProcessForPid(Ljava/lang/String;)Lcom/android/server/am/ProcessRecord;
    .locals 4
    .parameter "pid"

    .prologue
    .line 952
    iget-object v3, p0, Lcom/android/server/am/OppoProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 953
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/OppoProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 954
    iget-object v2, p0, Lcom/android/server/am/OppoProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 955
    .local v1, rec:Lcom/android/server/am/ProcessRecord;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_0

    iget v2, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 956
    monitor-exit v3

    .line 959
    .end local v1           #rec:Lcom/android/server/am/ProcessRecord;
    :goto_1
    return-object v1

    .line 953
    .restart local v1       #rec:Lcom/android/server/am/ProcessRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 959
    .end local v1           #rec:Lcom/android/server/am/ProcessRecord;
    :cond_1
    const/4 v1, 0x0

    monitor-exit v3

    goto :goto_1

    .line 960
    .end local v0           #i:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getProcessForUid(I)Ljava/util/ArrayList;
    .locals 5
    .parameter "uid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 964
    iget-object v4, p0, Lcom/android/server/am/OppoProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 965
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 966
    .local v2, res:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    iget-object v3, p0, Lcom/android/server/am/OppoProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 967
    iget-object v3, p0, Lcom/android/server/am/OppoProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 968
    .local v1, rec:Lcom/android/server/am/ProcessRecord;
    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_0

    iget v3, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v3, p1, :cond_0

    .line 969
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 966
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 972
    .end local v1           #rec:Lcom/android/server/am/ProcessRecord;
    :cond_1
    monitor-exit v4

    return-object v2

    .line 973
    .end local v0           #i:I
    .end local v2           #res:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private getTouchedWindowsPids()[I
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lcom/android/server/am/OppoProcessManager;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-nez v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/android/server/am/OppoProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iput-object v0, p0, Lcom/android/server/am/OppoProcessManager;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OppoProcessManager;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v0}, Lcom/android/server/OppoBPMHelper;->getTouchedWindowPids(Lcom/android/server/wm/WindowManagerService;)[I

    move-result-object v0

    return-object v0
.end method

.method private getWakeLockedPids()[I
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lcom/android/server/am/OppoProcessManager;->mPower:Lcom/android/server/power/PowerManagerService;

    if-nez v0, :cond_0

    .line 564
    const-string v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/PowerManagerService;

    iput-object v0, p0, Lcom/android/server/am/OppoProcessManager;->mPower:Lcom/android/server/power/PowerManagerService;

    .line 566
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OppoProcessManager;->mPower:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->getWakeLockedPids()[I

    move-result-object v0

    return-object v0
.end method

.method private initDir(Ljava/lang/String;)V
    .locals 5
    .parameter "dir"

    .prologue
    .line 614
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 616
    .local v1, file:Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 617
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 618
    const-string v2, "/system/bpm/pkg.xml"

    const-string v3, "/data/data_bpm/pkg.xml"

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/OppoProcessManager;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    const-string v2, "/system/bpm/brd.xml"

    const-string v3, "/data/data_bpm/brd.xml"

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/OppoProcessManager;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    const-string v2, "/system/bpm/bpm_sts.xml"

    const-string v3, "/data/data_bpm/bpm_sts.xml"

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/OppoProcessManager;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    const-string v2, "/system/bpm/bpm.xml"

    const-string v3, "/data/data_bpm/bpm.xml"

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/OppoProcessManager;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    const-string v2, "/system/bpm/bad_apps.xml"

    const-string v3, "/data/data_bpm/bad_apps.xml"

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/OppoProcessManager;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    const-string v2, "/system/bpm/appwidgets.xml"

    const-string v3, "/data/data_bpm/appwidgets.xml"

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/OppoProcessManager;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    :cond_0
    invoke-direct {p0}, Lcom/android/server/am/OppoProcessManager;->changeMod()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 639
    :goto_0
    return-void

    .line 636
    :catch_0
    move-exception v0

    .line 637
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "OppoProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mkdir failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isHomeProcess(Lcom/android/server/am/ProcessRecord;)Z
    .locals 1
    .parameter "app"

    .prologue
    .line 802
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/am/OppoProcessManager;->isHomeProcess(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isHomeProcess(Ljava/lang/String;)Z
    .locals 4
    .parameter "packageName"

    .prologue
    .line 806
    invoke-direct {p0}, Lcom/android/server/am/OppoProcessManager;->queryHomeResolveInfo()Ljava/util/List;

    move-result-object v1

    .line 807
    .local v1, mHomeList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 808
    .local v2, ri:Landroid/content/pm/ResolveInfo;
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 809
    const/4 v3, 0x1

    .line 812
    .end local v2           #ri:Landroid/content/pm/ResolveInfo;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isInclude(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 6
    .parameter "value"
    .parameter "list"

    .prologue
    const/4 v4, 0x0

    .line 984
    if-eqz p2, :cond_0

    array-length v5, p2

    if-lez v5, :cond_0

    if-nez p1, :cond_1

    .line 993
    :cond_0
    :goto_0
    return v4

    .line 988
    :cond_1
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 989
    .local v3, v:Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 990
    const/4 v4, 0x1

    goto :goto_0

    .line 988
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private isInputMethodApplication(Lcom/android/server/am/ProcessRecord;)Z
    .locals 6
    .parameter "app"

    .prologue
    const/4 v4, 0x0

    .line 824
    if-nez p1, :cond_1

    .line 838
    :cond_0
    :goto_0
    return v4

    .line 828
    :cond_1
    invoke-direct {p0}, Lcom/android/server/am/OppoProcessManager;->getInputMethodList()Ljava/util/List;

    move-result-object v2

    .line 829
    .local v2, imis:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    if-eqz v2, :cond_0

    .line 830
    const/4 v3, 0x0

    .line 831
    .local v3, p:Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 832
    .local v1, im:Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 833
    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->pkgList:Ljava/util/HashSet;

    invoke-virtual {v5, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 834
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private isLocationApplication(I)Z
    .locals 3
    .parameter "uid"

    .prologue
    .line 570
    invoke-static {}, Lcom/android/server/OppoBPMHelper;->getLocationListenersUid()[I

    move-result-object v1

    .line 571
    .local v1, uids:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 572
    aget v2, v1, v0

    if-ne p1, v2, :cond_0

    .line 573
    const/4 v2, 0x1

    .line 576
    :goto_1
    return v2

    .line 571
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 576
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private printList(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/util/List;)V
    .locals 4
    .parameter "preceding"
    .parameter "pw"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/PrintWriter;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1069
    .local p3, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1070
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1071
    .local v1, s:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1073
    .end local v1           #s:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private queryHomeResolveInfo()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 793
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 794
    .local v0, mHomeIntent:Landroid/content/Intent;
    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 795
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x1020

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 798
    .local v1, res:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    return-object v1
.end method

.method private resumeTopProcess(Lcom/android/server/am/ProcessRecord;)V
    .locals 4
    .parameter "app"

    .prologue
    .line 698
    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p0, v3}, Lcom/android/server/am/OppoProcessManager;->resumeProcessByUID(I)V

    .line 700
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->connections:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 701
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->connections:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ConnectionRecord;

    .line 702
    .local v1, cr:Lcom/android/server/am/ConnectionRecord;
    iget-object v3, v1, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v3, v3, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v3, v3, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0, v3}, Lcom/android/server/am/OppoProcessManager;->resumeProcess(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_0

    .line 706
    .end local v1           #cr:Lcom/android/server/am/ConnectionRecord;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_0
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 707
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ContentProviderConnection;

    .line 708
    .local v0, cc:Lcom/android/server/am/ContentProviderConnection;
    iget-object v3, v0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v3, v3, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0, v3}, Lcom/android/server/am/OppoProcessManager;->resumeProcess(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_1

    .line 713
    .end local v0           #cc:Lcom/android/server/am/ContentProviderConnection;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_1
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    instance-of v3, v3, Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_2

    .line 714
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0, v3}, Lcom/android/server/am/OppoProcessManager;->resumeProcess(Lcom/android/server/am/ProcessRecord;)V

    .line 716
    :cond_2
    return-void
.end method

.method private sendMessage(Lcom/android/server/am/ProcessRecord;IJ)V
    .locals 2
    .parameter "app"
    .parameter "what"
    .parameter "delay"

    .prologue
    .line 403
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 404
    .local v0, msg:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 405
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 406
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 407
    iget-object v1, p0, Lcom/android/server/am/OppoProcessManager;->mH:Lcom/android/server/am/OppoProcessManager$H;

    invoke-virtual {v1, v0, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 408
    return-void
.end method

.method private suspendProcess(Lcom/android/server/am/ProcessRecord;)V
    .locals 4
    .parameter "app"

    .prologue
    .line 644
    if-nez p1, :cond_1

    .line 666
    :cond_0
    :goto_0
    return-void

    .line 651
    :cond_1
    :try_start_0
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->curReceiver:Lcom/android/server/am/BroadcastRecord;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->curReceiver:Lcom/android/server/am/BroadcastRecord;

    iget-boolean v1, v1, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    if-eqz v1, :cond_2

    .line 652
    const/16 v1, 0x13f

    const-wide/16 v2, 0x1388

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/server/am/OppoProcessManager;->sendMessage(Lcom/android/server/am/ProcessRecord;IJ)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 663
    :catch_0
    move-exception v0

    .line 664
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "OppoProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "suspend Process failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 656
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/OppoProcessManager;->mH:Lcom/android/server/am/OppoProcessManager$H;

    const/16 v2, 0x13e

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 657
    invoke-virtual {p0, p1}, Lcom/android/server/am/OppoProcessManager;->isProcessSuspended(Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 658
    iget-object v1, p0, Lcom/android/server/am/OppoProcessManager;->mH:Lcom/android/server/am/OppoProcessManager$H;

    const/16 v2, 0x13f

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 661
    const/16 v1, 0x13f

    const-wide/16 v2, 0x1388

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/server/am/OppoProcessManager;->sendMessage(Lcom/android/server/am/ProcessRecord;IJ)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private updateFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "fromFile"
    .parameter "toFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1087
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1088
    .local v1, targetFile:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1089
    .local v0, sourceFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1090
    invoke-static {v0, v1}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 1097
    :cond_0
    :goto_0
    return-void

    .line 1092
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 1093
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1094
    invoke-static {v0, v1}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    goto :goto_0
.end method

.method private updateProcessStateForChanged(Z)V
    .locals 4
    .parameter "rs"

    .prologue
    .line 741
    invoke-direct {p0}, Lcom/android/server/am/OppoProcessManager;->updateWidgets()V

    .line 744
    iget-object v3, p0, Lcom/android/server/am/OppoProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 746
    if-nez p1, :cond_2

    .line 747
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/OppoProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_4

    .line 748
    iget-object v2, p0, Lcom/android/server/am/OppoProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 749
    .local v1, rec:Lcom/android/server/am/ProcessRecord;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_0

    .line 750
    invoke-direct {p0, v1}, Lcom/android/server/am/OppoProcessManager;->checkProcessRecord(Lcom/android/server/am/ProcessRecord;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 751
    invoke-virtual {p0, v1}, Lcom/android/server/am/OppoProcessManager;->resumeProcess(Lcom/android/server/am/ProcessRecord;)V

    .line 747
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 753
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/server/am/OppoProcessManager;->suspendProcess(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_1

    .line 766
    .end local v0           #i:I
    .end local v1           #rec:Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 758
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/OppoProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .restart local v0       #i:I
    :goto_2
    if-ltz v0, :cond_4

    .line 759
    iget-object v2, p0, Lcom/android/server/am/OppoProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 760
    .restart local v1       #rec:Lcom/android/server/am/ProcessRecord;
    if-eqz v1, :cond_3

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_3

    .line 761
    invoke-virtual {p0, v1}, Lcom/android/server/am/OppoProcessManager;->resumeProcess(Lcom/android/server/am/ProcessRecord;)V

    .line 758
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 766
    .end local v1           #rec:Lcom/android/server/am/ProcessRecord;
    :cond_4
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 768
    return-void
.end method

.method private updateProcessStateForWidgetChanged(Ljava/lang/String;)V
    .locals 4
    .parameter "pkg"

    .prologue
    .line 774
    if-eqz p1, :cond_0

    .line 775
    invoke-direct {p0, p1}, Lcom/android/server/am/OppoProcessManager;->updateWidget(Ljava/lang/String;)V

    .line 778
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/OppoProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 779
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/OppoProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_3

    .line 780
    iget-object v2, p0, Lcom/android/server/am/OppoProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 781
    .local v1, rec:Lcom/android/server/am/ProcessRecord;
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_1

    .line 782
    invoke-direct {p0, v1}, Lcom/android/server/am/OppoProcessManager;->checkProcessRecord(Lcom/android/server/am/ProcessRecord;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 783
    invoke-virtual {p0, v1}, Lcom/android/server/am/OppoProcessManager;->resumeProcess(Lcom/android/server/am/ProcessRecord;)V

    .line 779
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 785
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/server/am/OppoProcessManager;->suspendProcess(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_1

    .line 789
    .end local v0           #i:I
    .end local v1           #rec:Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #i:I
    :cond_3
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 790
    return-void
.end method

.method private updateWidget(Ljava/lang/String;)V
    .locals 0
    .parameter "pkg"

    .prologue
    .line 820
    invoke-static {p1}, Lcom/android/server/OppoBPMHelper;->updateProvider(Ljava/lang/String;)V

    .line 821
    return-void
.end method

.method private updateWidgets()V
    .locals 1

    .prologue
    .line 816
    iget-object v0, p0, Lcom/android/server/am/OppoProcessManager;->mAppWidgetList:Ljava/util/List;

    invoke-static {v0}, Lcom/android/server/OppoBPMHelper;->updateProviders(Ljava/util/List;)V

    .line 817
    return-void
.end method


# virtual methods
.method public checkBroadcast(Lcom/android/server/am/BroadcastRecord;)Z
    .locals 3
    .parameter "r"

    .prologue
    .line 880
    iget-object v2, p0, Lcom/android/server/am/OppoProcessManager;->mBrdList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 881
    .local v0, action:Ljava/lang/String;
    iget-object v2, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 882
    const/4 v2, 0x1

    .line 885
    .end local v0           #action:Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public checkPackage(Ljava/lang/String;)Z
    .locals 7
    .parameter "packageName"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 481
    iget-boolean v5, p0, Lcom/android/server/am/OppoProcessManager;->mBPMStatus:Z

    if-nez v5, :cond_1

    .line 518
    :cond_0
    :goto_0
    return v3

    .line 485
    :cond_1
    iget-object v5, p0, Lcom/android/server/am/OppoProcessManager;->mBPMList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 486
    .local v1, pkg:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    .line 492
    .end local v1           #pkg:Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/android/server/am/OppoProcessManager;->mAppWidgetList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 493
    .restart local v1       #pkg:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_0

    .line 498
    .end local v1           #pkg:Ljava/lang/String;
    :cond_5
    const/4 v2, 0x0

    .line 500
    .local v2, pkgInfo:Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/OppoProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 504
    :goto_1
    if-eqz v2, :cond_6

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v5, :cond_7

    .line 505
    :cond_6
    const-string v4, "OppoProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " does not exits!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 509
    :cond_7
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_9

    .line 510
    iget-object v5, p0, Lcom/android/server/am/OppoProcessManager;->mBadList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 511
    .restart local v1       #pkg:Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    move v3, v4

    .line 512
    goto/16 :goto_0

    .end local v1           #pkg:Ljava/lang/String;
    :cond_9
    move v3, v4

    .line 518
    goto/16 :goto_0

    .line 501
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public checkPackageCanStart(Ljava/lang/String;Lcom/android/server/am/BroadcastRecord;)Z
    .locals 3
    .parameter "packageName"
    .parameter "r"

    .prologue
    const/4 v0, 0x0

    .line 851
    iget-boolean v1, p0, Lcom/android/server/am/OppoProcessManager;->mBPMStatus:Z

    if-nez v1, :cond_1

    .line 875
    :cond_0
    :goto_0
    return v0

    .line 856
    :cond_1
    iget v1, p2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    const/16 v2, 0x2710

    if-ge v1, v2, :cond_0

    .line 861
    iget v1, p2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    const/16 v2, 0x7d0

    if-eq v1, v2, :cond_0

    .line 866
    invoke-virtual {p0, p2}, Lcom/android/server/am/OppoProcessManager;->checkBroadcast(Lcom/android/server/am/BroadcastRecord;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 871
    invoke-virtual {p0, p1}, Lcom/android/server/am/OppoProcessManager;->checkPackage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 875
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public checkProcessCanRestart(Lcom/android/server/am/ProcessRecord;)Z
    .locals 4
    .parameter "app"

    .prologue
    const/4 v1, 0x1

    .line 411
    iget-boolean v2, p0, Lcom/android/server/am/OppoProcessManager;->mBPMStatus:Z

    if-nez v2, :cond_0

    .line 424
    :goto_0
    return v1

    .line 416
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/OppoProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 418
    :try_start_0
    invoke-static {}, Lcom/android/server/OppoBPMHelper;->getLivePackageForLiveWallPaper()Ljava/lang/String;

    move-result-object v0

    .line 419
    .local v0, wallpaperPkg:Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/android/server/am/OppoProcessManager;->isInclude(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 420
    monitor-exit v2

    goto :goto_0

    .line 422
    .end local v0           #wallpaperPkg:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0       #wallpaperPkg:Ljava/lang/String;
    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 424
    invoke-direct {p0, p1}, Lcom/android/server/am/OppoProcessManager;->checkProcessRecord(Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    goto :goto_0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .parameter "pw"

    .prologue
    .line 1076
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@The BPM status is : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/am/OppoProcessManager;->mBPMStatus:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1077
    const-string v0, "@The BPM list : "

    iget-object v1, p0, Lcom/android/server/am/OppoProcessManager;->mBPMList:Ljava/util/List;

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/am/OppoProcessManager;->printList(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/util/List;)V

    .line 1078
    const-string v0, "@The PKG list : "

    iget-object v1, p0, Lcom/android/server/am/OppoProcessManager;->mPkgList:Ljava/util/List;

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/am/OppoProcessManager;->printList(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/util/List;)V

    .line 1079
    const-string v0, "@The BRD list : "

    iget-object v1, p0, Lcom/android/server/am/OppoProcessManager;->mBrdList:Ljava/util/List;

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/am/OppoProcessManager;->printList(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/util/List;)V

    .line 1080
    const-string v0, "@The BAD list : "

    iget-object v1, p0, Lcom/android/server/am/OppoProcessManager;->mBadList:Ljava/util/List;

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/am/OppoProcessManager;->printList(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/util/List;)V

    .line 1081
    const-string v0, "@The AppWidget list : "

    iget-object v1, p0, Lcom/android/server/am/OppoProcessManager;->mAppWidgetList:Ljava/util/List;

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/am/OppoProcessManager;->printList(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/util/List;)V

    .line 1082
    const-string v0, "@The suspend list : "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1083
    return-void
.end method

.method public getBPMEnable()Z
    .locals 1

    .prologue
    .line 669
    iget-boolean v0, p0, Lcom/android/server/am/OppoProcessManager;->mBPMStatus:Z

    return v0
.end method

.method public isProcessSuspended(Lcom/android/server/am/ProcessRecord;)Z
    .locals 1
    .parameter "app"

    .prologue
    .line 977
    if-eqz p1, :cond_0

    .line 978
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v0}, Landroid/os/Process;->isProcessSuspend(I)Z

    move-result v0

    .line 980
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadStateLocked(Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .parameter "path"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 997
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 998
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_1

    move-object v3, v10

    .line 1044
    :cond_0
    :goto_0
    return-object v3

    .line 1001
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1002
    .local v3, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 1003
    .local v4, stream:Ljava/io/FileInputStream;
    const/4 v6, 0x0

    .line 1005
    .local v6, success:Z
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_9

    .line 1006
    .end local v4           #stream:Ljava/io/FileInputStream;
    .local v5, stream:Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 1007
    .local v2, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v11, 0x0

    invoke-interface {v2, v5, v11}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1011
    :cond_2
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    .line 1012
    .local v8, type:I
    const/4 v11, 0x2

    if-ne v8, v11, :cond_3

    .line 1013
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 1014
    .local v7, tag:Ljava/lang/String;
    const-string v11, "p"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1015
    const/4 v11, 0x0

    const-string v12, "att"

    invoke-interface {v2, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1016
    .local v9, value:Ljava/lang/String;
    if-eqz v9, :cond_3

    .line 1017
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_c

    .line 1021
    .end local v7           #tag:Ljava/lang/String;
    .end local v9           #value:Ljava/lang/String;
    :cond_3
    const/4 v11, 0x1

    if-ne v8, v11, :cond_2

    .line 1022
    const/4 v6, 0x1

    .line 1035
    if-eqz v5, :cond_4

    .line 1036
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_4
    move-object v4, v5

    .line 1041
    .end local v2           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v5           #stream:Ljava/io/FileInputStream;
    .end local v8           #type:I
    .restart local v4       #stream:Ljava/io/FileInputStream;
    :cond_5
    :goto_1
    if-nez v6, :cond_0

    move-object v3, v10

    .line 1044
    goto :goto_0

    .line 1038
    .end local v4           #stream:Ljava/io/FileInputStream;
    .restart local v2       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5       #stream:Ljava/io/FileInputStream;
    .restart local v8       #type:I
    :catch_0
    move-exception v11

    move-object v4, v5

    .line 1040
    .end local v5           #stream:Ljava/io/FileInputStream;
    .restart local v4       #stream:Ljava/io/FileInputStream;
    goto :goto_1

    .line 1023
    .end local v2           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v8           #type:I
    :catch_1
    move-exception v0

    .line 1024
    .local v0, e:Ljava/lang/NullPointerException;
    :goto_2
    :try_start_3
    const-string v11, "OppoProcessManager"

    const-string v12, "failed parsing "

    invoke-static {v11, v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1035
    if-eqz v4, :cond_5

    .line 1036
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 1038
    :catch_2
    move-exception v11

    goto :goto_1

    .line 1025
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_3
    move-exception v0

    .line 1026
    .local v0, e:Ljava/lang/NumberFormatException;
    :goto_3
    :try_start_5
    const-string v11, "OppoProcessManager"

    const-string v12, "failed parsing "

    invoke-static {v11, v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1035
    if-eqz v4, :cond_5

    .line 1036
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    .line 1038
    :catch_4
    move-exception v11

    goto :goto_1

    .line 1027
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :catch_5
    move-exception v0

    .line 1028
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_4
    :try_start_7
    const-string v11, "OppoProcessManager"

    const-string v12, "failed parsing "

    invoke-static {v11, v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1035
    if-eqz v4, :cond_5

    .line 1036
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_1

    .line 1038
    :catch_6
    move-exception v11

    goto :goto_1

    .line 1029
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_7
    move-exception v0

    .line 1030
    .local v0, e:Ljava/io/IOException;
    :goto_5
    :try_start_9
    const-string v11, "OppoProcessManager"

    const-string v12, "failed parsing "

    invoke-static {v11, v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1035
    if-eqz v4, :cond_5

    .line 1036
    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_1

    .line 1038
    :catch_8
    move-exception v11

    goto :goto_1

    .line 1031
    .end local v0           #e:Ljava/io/IOException;
    :catch_9
    move-exception v0

    .line 1032
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    :goto_6
    :try_start_b
    const-string v11, "OppoProcessManager"

    const-string v12, "failed parsing "

    invoke-static {v11, v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 1035
    if-eqz v4, :cond_5

    .line 1036
    :try_start_c
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a

    goto :goto_1

    .line 1038
    :catch_a
    move-exception v11

    goto :goto_1

    .line 1034
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :catchall_0
    move-exception v10

    .line 1035
    :goto_7
    if-eqz v4, :cond_6

    .line 1036
    :try_start_d
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_b

    .line 1039
    :cond_6
    :goto_8
    throw v10

    .line 1038
    :catch_b
    move-exception v11

    goto :goto_8

    .line 1034
    .end local v4           #stream:Ljava/io/FileInputStream;
    .restart local v5       #stream:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v10

    move-object v4, v5

    .end local v5           #stream:Ljava/io/FileInputStream;
    .restart local v4       #stream:Ljava/io/FileInputStream;
    goto :goto_7

    .line 1031
    .end local v4           #stream:Ljava/io/FileInputStream;
    .restart local v5       #stream:Ljava/io/FileInputStream;
    :catch_c
    move-exception v0

    move-object v4, v5

    .end local v5           #stream:Ljava/io/FileInputStream;
    .restart local v4       #stream:Ljava/io/FileInputStream;
    goto :goto_6

    .line 1029
    .end local v4           #stream:Ljava/io/FileInputStream;
    .restart local v5       #stream:Ljava/io/FileInputStream;
    :catch_d
    move-exception v0

    move-object v4, v5

    .end local v5           #stream:Ljava/io/FileInputStream;
    .restart local v4       #stream:Ljava/io/FileInputStream;
    goto :goto_5

    .line 1027
    .end local v4           #stream:Ljava/io/FileInputStream;
    .restart local v5       #stream:Ljava/io/FileInputStream;
    :catch_e
    move-exception v0

    move-object v4, v5

    .end local v5           #stream:Ljava/io/FileInputStream;
    .restart local v4       #stream:Ljava/io/FileInputStream;
    goto :goto_4

    .line 1025
    .end local v4           #stream:Ljava/io/FileInputStream;
    .restart local v5       #stream:Ljava/io/FileInputStream;
    :catch_f
    move-exception v0

    move-object v4, v5

    .end local v5           #stream:Ljava/io/FileInputStream;
    .restart local v4       #stream:Ljava/io/FileInputStream;
    goto :goto_3

    .line 1023
    .end local v4           #stream:Ljava/io/FileInputStream;
    .restart local v5       #stream:Ljava/io/FileInputStream;
    :catch_10
    move-exception v0

    move-object v4, v5

    .end local v5           #stream:Ljava/io/FileInputStream;
    .restart local v4       #stream:Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public openDebug(Z)V
    .locals 0
    .parameter "on"

    .prologue
    .line 1064
    sput-boolean p1, Lcom/android/server/am/OppoProcessManager;->DEBUG:Z

    .line 1065
    sput-boolean p1, Lcom/android/server/am/OppoProcessManager;->DEBUG_DETAIL:Z

    .line 1066
    return-void
.end method

.method public resumeProcess(Lcom/android/server/am/ProcessRecord;)V
    .locals 4
    .parameter "app"

    .prologue
    .line 673
    if-nez p1, :cond_1

    .line 688
    :cond_0
    :goto_0
    return-void

    .line 678
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OppoProcessManager;->mH:Lcom/android/server/am/OppoProcessManager$H;

    const/16 v2, 0x13f

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 679
    invoke-virtual {p0, p1}, Lcom/android/server/am/OppoProcessManager;->isProcessSuspended(Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 680
    iget-object v1, p0, Lcom/android/server/am/OppoProcessManager;->mH:Lcom/android/server/am/OppoProcessManager$H;

    const/16 v2, 0x13e

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 683
    const/16 v1, 0x13e

    const-wide/16 v2, 0x0

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/server/am/OppoProcessManager;->sendMessage(Lcom/android/server/am/ProcessRecord;IJ)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 685
    :catch_0
    move-exception v0

    .line 686
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "OppoProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resume Process failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public resumeProcessByUID(I)V
    .locals 4
    .parameter "uid"

    .prologue
    .line 691
    invoke-direct {p0, p1}, Lcom/android/server/am/OppoProcessManager;->getProcessForUid(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 692
    .local v1, apps:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/am/ProcessRecord;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 693
    .local v0, app:Lcom/android/server/am/ProcessRecord;
    invoke-virtual {p0, v0}, Lcom/android/server/am/OppoProcessManager;->resumeProcess(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_0

    .line 695
    .end local v0           #app:Lcom/android/server/am/ProcessRecord;
    :cond_0
    return-void
.end method

.method public skipBroadcast(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;Z)Z
    .locals 8
    .parameter "app"
    .parameter "r"
    .parameter "ordered"

    .prologue
    const/4 v3, 0x0

    .line 890
    iget-boolean v4, p0, Lcom/android/server/am/OppoProcessManager;->mBPMStatus:Z

    if-nez v4, :cond_1

    .line 948
    :cond_0
    :goto_0
    return v3

    .line 893
    :cond_1
    if-eqz p1, :cond_0

    .line 899
    if-eqz p3, :cond_3

    .line 900
    sget-boolean v4, Lcom/android/server/am/OppoProcessManager;->DEBUG_DETAIL:Z

    if-eqz v4, :cond_2

    .line 901
    const-string v4, "OppoProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Do not skip order broadcast "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    :cond_2
    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p0, v4}, Lcom/android/server/am/OppoProcessManager;->resumeProcessByUID(I)V

    goto :goto_0

    .line 906
    :cond_3
    iget-object v4, p0, Lcom/android/server/am/OppoProcessManager;->mBrdList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 907
    .local v0, action:Ljava/lang/String;
    iget-object v4, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 908
    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p0, v4}, Lcom/android/server/am/OppoProcessManager;->resumeProcessByUID(I)V

    goto :goto_0

    .line 913
    .end local v0           #action:Ljava/lang/String;
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/am/OppoProcessManager;->checkProcessRecord(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 914
    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p0, v4}, Lcom/android/server/am/OppoProcessManager;->resumeProcessByUID(I)V

    goto :goto_0

    .line 920
    :cond_6
    iget v4, p2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iget v5, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v4, v5, :cond_8

    .line 921
    sget-boolean v4, Lcom/android/server/am/OppoProcessManager;->DEBUG:Z

    if-eqz v4, :cond_7

    .line 922
    const-string v4, "OppoProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not skip broadcast because uid is the same  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    :cond_7
    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p0, v4}, Lcom/android/server/am/OppoProcessManager;->resumeProcessByUID(I)V

    goto/16 :goto_0

    .line 927
    :cond_8
    iget v4, p2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    const/16 v5, 0x2710

    if-lt v4, v5, :cond_a

    .line 928
    sget-boolean v4, Lcom/android/server/am/OppoProcessManager;->DEBUG:Z

    if-eqz v4, :cond_9

    .line 929
    const-string v4, "OppoProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not skip callingUid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " pid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p2, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    :cond_9
    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p0, v4}, Lcom/android/server/am/OppoProcessManager;->resumeProcessByUID(I)V

    goto/16 :goto_0

    .line 937
    :cond_a
    iget-object v4, p0, Lcom/android/server/am/OppoProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityStack;->getTopRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 939
    .local v1, ar:Lcom/android/server/am/ActivityRecord;
    iget-object v4, p0, Lcom/android/server/am/OppoProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 940
    if-eqz v1, :cond_c

    :try_start_0
    iget-object v5, v1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/server/am/OppoProcessManager;->isInclude(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 941
    sget-boolean v5, Lcom/android/server/am/OppoProcessManager;->DEBUG:Z

    if-eqz v5, :cond_b

    .line 942
    const-string v5, "OppoProcessManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Not skip top activity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    :cond_b
    iget v5, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p0, v5}, Lcom/android/server/am/OppoProcessManager;->resumeProcessByUID(I)V

    .line 944
    monitor-exit v4

    goto/16 :goto_0

    .line 946
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_c
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 948
    const/4 v3, 0x1

    goto/16 :goto_0
.end method

.method public updateProcessState(Lcom/android/server/am/ProcessRecord;)V
    .locals 3
    .parameter "app"

    .prologue
    .line 719
    iget-boolean v1, p0, Lcom/android/server/am/OppoProcessManager;->mBPMStatus:Z

    if-eqz v1, :cond_0

    .line 724
    iget-object v1, p0, Lcom/android/server/am/OppoProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStack;->getTopRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 726
    .local v0, r:Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_0

    .line 727
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {p0, v1}, Lcom/android/server/am/OppoProcessManager;->resumeTopProcess(Lcom/android/server/am/ProcessRecord;)V

    .line 728
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 729
    invoke-direct {p0, p1}, Lcom/android/server/am/OppoProcessManager;->suspendProcess(Lcom/android/server/am/ProcessRecord;)V

    .line 733
    .end local v0           #r:Lcom/android/server/am/ActivityRecord;
    :cond_0
    return-void
.end method
