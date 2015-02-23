.class public Lcom/android/server/usb/OppoUsbManager;
.super Ljava/lang/Object;
.source "OppoUsbManager.java"


# annotations
.annotation build Landroid/annotation/OppoHook;
    level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_CLASS:Landroid/annotation/OppoHook$OppoHookType;
    note = "TongXi.Li@Plf.Framework modify for oppo_usb "
    property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/OppoUsbManager$UsbSelectionHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final DEBUG:Z = true

.field public static final EXTRA_USB_SELECTED_TYPE:Ljava/lang/String; = "UsbSelectedType"

.field private static final IPO_POWER_OFF:Ljava/lang/String; = "android.intent.action.ACTION_SHUTDOWN_IPO"

.field private static final IPO_POWER_ON:Ljava/lang/String; = "android.intent.action.ACTION_BOOT_IPO"

.field private static final MESSAGE_USB_SELECTION_TYPE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "OppoUsbManager"

.field public static final USB_CHARGE:I = 0x0

.field public static final USB_MTP:I = 0x2

.field public static final USB_SELECTED_ACTION:Ljava/lang/String; = "android.intent.action.ACTION_USB_SELECED"

.field public static final USB_SELECTED_FINISH_ACTION:Ljava/lang/String; = "android.intent.action.ACTION_USB_SELECED_FINISH"

.field public static final USB_SELECT_ACTION:Ljava/lang/String; = "android.intent.action.ACTION_USB_SELECTION"

.field public static final USB_STORAGE:I = 0x1


# instance fields
.field private final BOOTCOMPLETE_DELAY_TIME:J

.field private final BOOTIPO_DELAY_TIME:J

.field private Imei:Ljava/lang/String;

.field private IsShutdownIpo:Z

.field private LastPlugUsbType:Z

.field private final MESSAGE_BOOT:I

.field private bootComplete:Z

.field externalStorageDir:Ljava/io/File;

.field private mAm:Landroid/app/IActivityManager;

.field private final mBootHandler:Landroid/os/Handler;

.field private final mContext:Landroid/content/Context;

.field private final mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

.field private mInterruptTimer:Ljava/util/Timer;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mProcessing:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mStateQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mTimerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Timer;",
            ">;"
        }
    .end annotation
.end field

.field private mUmsProcessing:Z

.field private mUsbConnected:Z

.field private mUsbNotification:Landroid/app/Notification;

.field private mUsbSelected:I

.field private mUsbSelectionHandler:Lcom/android/server/usb/OppoUsbManager$UsbSelectionHandler;

.field private mUsbSelectionReceiver:Landroid/content/BroadcastReceiver;

.field private mUsbSelectionThread:Landroid/os/HandlerThread;

.field private mUsbStateReceiver:Landroid/content/BroadcastReceiver;

.field private usbFlag:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/usb/UsbDeviceManager;)V
    .locals 10
    .parameter "context"
    .parameter "deviceManager"

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-boolean v8, p0, Lcom/android/server/usb/OppoUsbManager;->mUsbConnected:Z

    .line 76
    iput-object v7, p0, Lcom/android/server/usb/OppoUsbManager;->mInterruptTimer:Ljava/util/Timer;

    .line 77
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/server/usb/OppoUsbManager;->mTimerList:Ljava/util/List;

    .line 78
    iput-boolean v8, p0, Lcom/android/server/usb/OppoUsbManager;->mProcessing:Z

    .line 79
    iput-boolean v8, p0, Lcom/android/server/usb/OppoUsbManager;->mUmsProcessing:Z

    .line 81
    iput-object v7, p0, Lcom/android/server/usb/OppoUsbManager;->mUsbNotification:Landroid/app/Notification;

    .line 82
    const/4 v6, -0x1

    iput v6, p0, Lcom/android/server/usb/OppoUsbManager;->mUsbSelected:I

    .line 83
    iput v8, p0, Lcom/android/server/usb/OppoUsbManager;->usbFlag:I

    .line 84
    iput-boolean v8, p0, Lcom/android/server/usb/OppoUsbManager;->bootComplete:Z

    .line 86
    iput-object v7, p0, Lcom/android/server/usb/OppoUsbManager;->externalStorageDir:Ljava/io/File;

    .line 89
    iput-boolean v8, p0, Lcom/android/server/usb/OppoUsbManager;->LastPlugUsbType:Z

    .line 90
    iput-object v7, p0, Lcom/android/server/usb/OppoUsbManager;->Imei:Ljava/lang/String;

    .line 91
    iput v8, p0, Lcom/android/server/usb/OppoUsbManager;->MESSAGE_BOOT:I

    .line 92
    const-wide/16 v6, 0xbb8

    iput-wide v6, p0, Lcom/android/server/usb/OppoUsbManager;->BOOTCOMPLETE_DELAY_TIME:J

    .line 93
    const-wide/16 v6, 0x7d0

    iput-wide v6, p0, Lcom/android/server/usb/OppoUsbManager;->BOOTIPO_DELAY_TIME:J

    .line 94
    iput-boolean v8, p0, Lcom/android/server/usb/OppoUsbManager;->IsShutdownIpo:Z

    .line 144
    new-instance v6, Lcom/android/server/usb/OppoUsbManager$1;

    invoke-direct {v6, p0}, Lcom/android/server/usb/OppoUsbManager$1;-><init>(Lcom/android/server/usb/OppoUsbManager;)V

    iput-object v6, p0, Lcom/android/server/usb/OppoUsbManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 163
    new-instance v6, Lcom/android/server/usb/OppoUsbManager$2;

    invoke-direct {v6, p0}, Lcom/android/server/usb/OppoUsbManager$2;-><init>(Lcom/android/server/usb/OppoUsbManager;)V

    iput-object v6, p0, Lcom/android/server/usb/OppoUsbManager;->mBootHandler:Landroid/os/Handler;

    .line 180
    new-instance v6, Lcom/android/server/usb/OppoUsbManager$3;

    invoke-direct {v6, p0}, Lcom/android/server/usb/OppoUsbManager$3;-><init>(Lcom/android/server/usb/OppoUsbManager;)V

    iput-object v6, p0, Lcom/android/server/usb/OppoUsbManager;->mUsbStateReceiver:Landroid/content/BroadcastReceiver;

    .line 197
    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v7, 0x64

    invoke-direct {v6, v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v6, p0, Lcom/android/server/usb/OppoUsbManager;->mStateQueue:Ljava/util/concurrent/BlockingQueue;

    .line 199
    new-instance v6, Lcom/android/server/usb/OppoUsbManager$4;

    invoke-direct {v6, p0}, Lcom/android/server/usb/OppoUsbManager$4;-><init>(Lcom/android/server/usb/OppoUsbManager;)V

    iput-object v6, p0, Lcom/android/server/usb/OppoUsbManager;->mUsbSelectionReceiver:Landroid/content/BroadcastReceiver;

    .line 106
    iput-object p1, p0, Lcom/android/server/usb/OppoUsbManager;->mContext:Landroid/content/Context;

    .line 107
    iput-object p2, p0, Lcom/android/server/usb/OppoUsbManager;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    .line 108
    iget-object v6, p0, Lcom/android/server/usb/OppoUsbManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 110
    .local v3, pm:Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 111
    .local v5, userId:I
    new-instance v0, Landroid/os/Environment$UserEnvironment;

    invoke-direct {v0, v5}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .line 112
    .local v0, currentUser:Landroid/os/Environment$UserEnvironment;
    invoke-virtual {v0}, Landroid/os/Environment$UserEnvironment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/usb/OppoUsbManager;->externalStorageDir:Ljava/io/File;

    .line 114
    iget-object v6, p0, Lcom/android/server/usb/OppoUsbManager;->mContext:Landroid/content/Context;

    const-string v7, "storage"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/StorageManager;

    iput-object v6, p0, Lcom/android/server/usb/OppoUsbManager;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 115
    iget-object v6, p0, Lcom/android/server/usb/OppoUsbManager;->mContext:Landroid/content/Context;

    const-string v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    iput-object v6, p0, Lcom/android/server/usb/OppoUsbManager;->mNotificationManager:Landroid/app/NotificationManager;

    .line 116
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/usb/OppoUsbManager;->mAm:Landroid/app/IActivityManager;

    .line 118
    iget-object v6, p0, Lcom/android/server/usb/OppoUsbManager;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/usb/OppoUsbManager;->mUsbStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 120
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 121
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.ACTION_USB_SELECED_FINISH"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    const-string v6, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    const-string v6, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 124
    const-string v6, "android.intent.action.IPO_DONE"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 125
    const-string v6, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    iget-object v6, p0, Lcom/android/server/usb/OppoUsbManager;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/usb/OppoUsbManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 128
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 129
    .local v4, usbFilter:Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.ACTION_USB_SELECED"

    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    iget-object v6, p0, Lcom/android/server/usb/OppoUsbManager;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/usb/OppoUsbManager;->mUsbSelectionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 131
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 132
    .local v2, mediaFilter:Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    const-string v6, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 134
    const-string v6, "file"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 135
    iget-object v6, p0, Lcom/android/server/usb/OppoUsbManager;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/usb/OppoUsbManager;->mUsbSelectionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 137
    new-instance v6, Landroid/os/HandlerThread;

    const-string v7, "OppoUsbManager"

    invoke-direct {v6, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/server/usb/OppoUsbManager;->mUsbSelectionThread:Landroid/os/HandlerThread;

    .line 138
    iget-object v6, p0, Lcom/android/server/usb/OppoUsbManager;->mUsbSelectionThread:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->start()V

    .line 139
    new-instance v6, Lcom/android/server/usb/OppoUsbManager$UsbSelectionHandler;

    iget-object v7, p0, Lcom/android/server/usb/OppoUsbManager;->mUsbSelectionThread:Landroid/os/HandlerThread;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Lcom/android/server/usb/OppoUsbManager$UsbSelectionHandler;-><init>(Lcom/android/server/usb/OppoUsbManager;Landroid/os/Looper;)V

    iput-object v6, p0, Lcom/android/server/usb/OppoUsbManager;->mUsbSelectionHandler:Lcom/android/server/usb/OppoUsbManager$UsbSelectionHandler;

    .line 141
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/usb/OppoUsbManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/server/usb/OppoUsbManager;->mBootHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/usb/OppoUsbManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/server/usb/OppoUsbManager;->mProcessing:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/usb/OppoUsbManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/server/usb/OppoUsbManager;->mProcessing:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/server/usb/OppoUsbManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/server/usb/OppoUsbManager;->IsShutdownIpo:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/usb/OppoUsbManager;)Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/server/usb/OppoUsbManager;->mStateQueue:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/usb/OppoUsbManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/server/usb/OppoUsbManager;->handleUsbSelected(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/usb/OppoUsbManager;)Landroid/os/HandlerThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/server/usb/OppoUsbManager;->mUsbSelectionThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/server/usb/OppoUsbManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/server/usb/OppoUsbManager;->mUmsProcessing:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/server/usb/OppoUsbManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/server/usb/OppoUsbManager;->bootComplete:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/usb/OppoUsbManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/server/usb/OppoUsbManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/usb/OppoUsbManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput p1, p0, Lcom/android/server/usb/OppoUsbManager;->usbFlag:I

    return p1
.end method

.method static synthetic access$502(Lcom/android/server/usb/OppoUsbManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput p1, p0, Lcom/android/server/usb/OppoUsbManager;->mUsbSelected:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/usb/OppoUsbManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/server/usb/OppoUsbManager;->handleUsbSelectedStart(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/usb/OppoUsbManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/server/usb/OppoUsbManager;->startUsbSelectionActivity()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/usb/OppoUsbManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/server/usb/OppoUsbManager;->mUsbConnected:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/usb/OppoUsbManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/server/usb/OppoUsbManager;->mUsbConnected:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/usb/OppoUsbManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/server/usb/OppoUsbManager;->LastPlugUsbType:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/usb/OppoUsbManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/server/usb/OppoUsbManager;->LastPlugUsbType:Z

    return p1
.end method

.method private disableUMS()V
    .locals 3

    .prologue
    .line 455
    const-string v0, "OppoUsbManager"

    const-string v1, "5. disableUMS"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    iget-object v0, p0, Lcom/android/server/usb/OppoUsbManager;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/usb/OppoUsbManager;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->isUsbMassStorageEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/android/server/usb/OppoUsbManager;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->disableUsbMassStorage()V

    .line 460
    const-string v0, "OppoUsbManager"

    const-string v1, "before latency wait Intent.ACTION_MEDIA_UNSHARED"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    const-string v0, "android.intent.action.MEDIA_UNSHARED"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/usb/OppoUsbManager;->externalStorageDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/usb/OppoUsbManager;->latency(Ljava/lang/String;Ljava/lang/String;)Z

    .line 464
    :cond_0
    return-void
.end method

.method private enableUMS()V
    .locals 5

    .prologue
    .line 430
    const-string v2, "OppoUsbManager"

    const-string v3, "16. enableUMS"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    .line 432
    const-string v2, "persist.oppo.formating"

    const-string v3, "no"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 433
    .local v1, isFormating:Ljava/lang/String;
    const-string v2, "OppoUsbManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isFormating = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    const-string v2, "no"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 442
    .end local v1           #isFormating:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/server/usb/OppoUsbManager;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/usb/OppoUsbManager;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->isUsbMassStorageEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 444
    iget-object v2, p0, Lcom/android/server/usb/OppoUsbManager;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->enableUsbMassStorage()V

    .line 446
    const-string v2, "OppoUsbManager"

    const-string v3, "before latency wait Intent.ACTION_MEDIA_SHARED"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    const-string v2, "android.intent.action.MEDIA_SHARED"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/usb/OppoUsbManager;->externalStorageDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/usb/OppoUsbManager;->latency(Ljava/lang/String;Ljava/lang/String;)Z

    .line 451
    :cond_1
    return-void

    .line 437
    .restart local v1       #isFormating:Ljava/lang/String;
    :cond_2
    :try_start_0
    const-string v2, "OppoUsbManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SDcard is Formating!sleep! i="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 439
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private getTitleId()I
    .locals 3

    .prologue
    .line 511
    const-string v1, "OppoUsbManager"

    const-string v2, "8. getTitleId"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    const v0, 0xc040435

    .line 513
    .local v0, id:I
    iget v1, p0, Lcom/android/server/usb/OppoUsbManager;->mUsbSelected:I

    packed-switch v1, :pswitch_data_0

    .line 530
    const v0, 0xc040435

    .line 534
    :goto_0
    return v0

    .line 515
    :pswitch_0
    const v0, 0xc040435

    .line 517
    goto :goto_0

    .line 520
    :pswitch_1
    const v0, 0xc040436

    .line 522
    goto :goto_0

    .line 525
    :pswitch_2
    const v0, 0xc04043a

    .line 527
    goto :goto_0

    .line 513
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private handleUsbSelected(I)V
    .locals 5
    .parameter "type"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 351
    const-string v0, "OppoUsbManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "15. handleUsbSelected TYPE= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mProcessing 1 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/usb/OppoUsbManager;->mProcessing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iput-boolean v3, p0, Lcom/android/server/usb/OppoUsbManager;->mProcessing:Z

    .line 353
    invoke-direct {p0}, Lcom/android/server/usb/OppoUsbManager;->usbSelectionInit()V

    .line 355
    iget-object v0, p0, Lcom/android/server/usb/OppoUsbManager;->mStateQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 356
    iget-boolean v0, p0, Lcom/android/server/usb/OppoUsbManager;->mUsbConnected:Z

    if-ne v0, v3, :cond_0

    .line 357
    invoke-direct {p0}, Lcom/android/server/usb/OppoUsbManager;->updateUsbNotification()V

    .line 359
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 375
    iget-object v0, p0, Lcom/android/server/usb/OppoUsbManager;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    const-string v1, "mass_storage"

    invoke-virtual {v0, v1, v3}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(Ljava/lang/String;Z)V

    .line 378
    :goto_0
    iput-boolean v4, p0, Lcom/android/server/usb/OppoUsbManager;->mProcessing:Z

    .line 380
    const-string v0, "OppoUsbManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleUsbSelected mProcessing 2 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/usb/OppoUsbManager;->mProcessing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    invoke-direct {p0}, Lcom/android/server/usb/OppoUsbManager;->stopInterruptTimer()V

    .line 382
    invoke-direct {p0}, Lcom/android/server/usb/OppoUsbManager;->updateUsbSelection()V

    .line 383
    return-void

    .line 361
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/usb/OppoUsbManager;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    const-string v1, "mass_storage"

    invoke-virtual {v0, v1, v3}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(Ljava/lang/String;Z)V

    .line 362
    invoke-direct {p0}, Lcom/android/server/usb/OppoUsbManager;->enableUMS()V

    .line 363
    iput-boolean v4, p0, Lcom/android/server/usb/OppoUsbManager;->mUmsProcessing:Z

    goto :goto_0

    .line 367
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/usb/OppoUsbManager;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    const-string v1, "mtp"

    invoke-virtual {v0, v1, v3}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(Ljava/lang/String;Z)V

    goto :goto_0

    .line 371
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/usb/OppoUsbManager;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    const-string v1, "mass_storage"

    invoke-virtual {v0, v1, v3}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(Ljava/lang/String;Z)V

    goto :goto_0

    .line 359
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleUsbSelectedStart(I)V
    .locals 5
    .parameter "type"

    .prologue
    const/4 v4, 0x1

    .line 313
    iget v1, p0, Lcom/android/server/usb/OppoUsbManager;->mUsbSelected:I

    if-eq v1, p1, :cond_1

    .line 314
    iput p1, p0, Lcom/android/server/usb/OppoUsbManager;->mUsbSelected:I

    .line 316
    const-string v1, "OppoUsbManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "12. USB_SELECTED_ACTION type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    if-ne v4, p1, :cond_0

    .line 318
    iget-object v1, p0, Lcom/android/server/usb/OppoUsbManager;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_PRE_SHARED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 320
    iput-boolean v4, p0, Lcom/android/server/usb/OppoUsbManager;->mUmsProcessing:Z

    .line 322
    :cond_0
    iget-object v1, p0, Lcom/android/server/usb/OppoUsbManager;->mUsbSelectionHandler:Lcom/android/server/usb/OppoUsbManager$UsbSelectionHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v4, p1, v2}, Lcom/android/server/usb/OppoUsbManager$UsbSelectionHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 323
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/usb/OppoUsbManager;->mUsbSelectionHandler:Lcom/android/server/usb/OppoUsbManager$UsbSelectionHandler;

    invoke-virtual {v1, v4}, Lcom/android/server/usb/OppoUsbManager$UsbSelectionHandler;->removeMessages(I)V

    .line 324
    invoke-direct {p0}, Lcom/android/server/usb/OppoUsbManager;->startInterruptTimer()V

    .line 325
    iget-object v1, p0, Lcom/android/server/usb/OppoUsbManager;->mUsbSelectionHandler:Lcom/android/server/usb/OppoUsbManager$UsbSelectionHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/usb/OppoUsbManager$UsbSelectionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 329
    .end local v0           #msg:Landroid/os/Message;
    :goto_0
    return-void

    .line 327
    :cond_1
    const-string v1, "OppoUsbManager"

    const-string v2, "The same as before"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private latency(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "action"
    .parameter "extra"

    .prologue
    const/4 v2, 0x0

    .line 469
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/usb/OppoUsbManager;->mStateQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 471
    .local v1, i:Landroid/content/Intent;
    const-string v3, "OppoUsbManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Request action : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " extra : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    const-string v3, "OppoUsbManager"

    const-string v4, "latency intent : "

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    const-string v3, "OppoUsbManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Component: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    const-string v3, "OppoUsbManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Aciton: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    const-string v3, "OppoUsbManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Categories: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const-string v3, "OppoUsbManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    const-string v3, "OppoUsbManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  DataType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    const-string v3, "OppoUsbManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  DataSchema: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 481
    if-eqz p2, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {v1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 482
    :cond_1
    const-string v3, "OppoUsbManager"

    const-string v4, "latency finished"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    const/4 v2, 0x1

    .line 489
    .end local v1           #i:Landroid/content/Intent;
    :goto_0
    return v2

    .line 486
    :catch_0
    move-exception v0

    .line 487
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v3, "OppoUsbManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to get action : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 488
    invoke-direct {p0, v2}, Lcom/android/server/usb/OppoUsbManager;->handleUsbSelectedStart(I)V

    goto :goto_0
.end method

.method private startActivity()V
    .locals 2

    .prologue
    .line 278
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_USB_SELECTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 279
    .local v0, usbIntent:Landroid/content/Intent;
    const/high16 v1, 0x1024

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 282
    iget-object v1, p0, Lcom/android/server/usb/OppoUsbManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 283
    return-void
.end method

.method private startInterruptTimer()V
    .locals 4

    .prologue
    .line 387
    const-string v1, "OppoUsbManager"

    const-string v2, "13. startInterruptTimer"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/android/server/usb/OppoUsbManager;->mInterruptTimer:Ljava/util/Timer;

    .line 389
    new-instance v0, Lcom/android/server/usb/OppoUsbManager$5;

    invoke-direct {v0, p0}, Lcom/android/server/usb/OppoUsbManager$5;-><init>(Lcom/android/server/usb/OppoUsbManager;)V

    .line 400
    .local v0, task:Ljava/util/TimerTask;
    iget-object v1, p0, Lcom/android/server/usb/OppoUsbManager;->mInterruptTimer:Ljava/util/Timer;

    const-wide/32 v2, 0x493e0

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 401
    iget-object v1, p0, Lcom/android/server/usb/OppoUsbManager;->mTimerList:Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/usb/OppoUsbManager;->mInterruptTimer:Ljava/util/Timer;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    return-void
.end method

.method private startUsbSelectionActivity()V
    .locals 9

    .prologue
    const v8, 0xc040439

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 222
    const-string v4, "OppoUsbManager"

    const-string v5, "2. startUsbSelectionActivity()"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v4, p0, Lcom/android/server/usb/OppoUsbManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 224
    .local v0, cr:Landroid/content/ContentResolver;
    if-eqz v0, :cond_5

    const-string v4, "usb_no_ask_again"

    invoke-static {v0, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_5

    .line 225
    iget-boolean v4, p0, Lcom/android/server/usb/OppoUsbManager;->mUsbConnected:Z

    if-ne v4, v7, :cond_3

    iget-boolean v4, p0, Lcom/android/server/usb/OppoUsbManager;->bootComplete:Z

    if-eqz v4, :cond_3

    .line 226
    const-string v4, "phone"

    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 228
    .local v2, phoneServ:Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_2

    .line 230
    :try_start_0
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v4

    if-nez v4, :cond_0

    .line 231
    invoke-direct {p0}, Lcom/android/server/usb/OppoUsbManager;->startActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 245
    :cond_0
    :goto_0
    iget-boolean v4, p0, Lcom/android/server/usb/OppoUsbManager;->mProcessing:Z

    if-nez v4, :cond_1

    .line 246
    invoke-direct {p0}, Lcom/android/server/usb/OppoUsbManager;->updateUsbNotification()V

    .line 275
    .end local v2           #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :cond_1
    :goto_1
    return-void

    .line 233
    .restart local v2       #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 234
    .local v1, e:Landroid/os/RemoteException;
    const-string v4, "OppoUsbManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Phone sevices remoteException"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 235
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 236
    .local v1, e:Landroid/content/ActivityNotFoundException;
    const-string v4, "OppoUsbManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Start usb selection activity threw ActivityNotFoundException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 240
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/usb/OppoUsbManager;->startActivity()V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 241
    :catch_2
    move-exception v1

    .line 242
    .restart local v1       #e:Landroid/content/ActivityNotFoundException;
    const-string v4, "OppoUsbManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Start usb selection activity threw ActivityNotFoundException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 248
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    .end local v2           #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :cond_3
    iget v4, p0, Lcom/android/server/usb/OppoUsbManager;->usbFlag:I

    if-ne v4, v7, :cond_4

    iget-boolean v4, p0, Lcom/android/server/usb/OppoUsbManager;->mUsbConnected:Z

    if-ne v4, v7, :cond_4

    iget-boolean v4, p0, Lcom/android/server/usb/OppoUsbManager;->bootComplete:Z

    if-eqz v4, :cond_4

    .line 250
    :try_start_2
    const-string v4, "OppoUsbManager"

    const-string v5, "the first IPO complete usbselectActivity"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-direct {p0}, Lcom/android/server/usb/OppoUsbManager;->startActivity()V

    .line 252
    invoke-direct {p0}, Lcom/android/server/usb/OppoUsbManager;->updateUsbNotification()V

    .line 253
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/usb/OppoUsbManager;->usbFlag:I
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    .line 254
    :catch_3
    move-exception v1

    .line 255
    .restart local v1       #e:Landroid/content/ActivityNotFoundException;
    const-string v4, "OppoUsbManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Start usb selection activity threw ActivityNotFoundException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 257
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    :cond_4
    iget-boolean v4, p0, Lcom/android/server/usb/OppoUsbManager;->bootComplete:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/server/usb/OppoUsbManager;->mUsbConnected:Z

    if-nez v4, :cond_1

    .line 258
    iget-object v4, p0, Lcom/android/server/usb/OppoUsbManager;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v4, v8}, Landroid/app/NotificationManager;->cancel(I)V

    .line 259
    invoke-direct {p0, v6}, Lcom/android/server/usb/OppoUsbManager;->handleUsbSelectedStart(I)V

    goto/16 :goto_1

    .line 261
    :cond_5
    if-eqz v0, :cond_1

    const-string v4, "usb_no_ask_again"

    invoke-static {v0, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    .line 262
    const-string v4, "OppoUsbManager"

    const-string v5, "second"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-boolean v4, p0, Lcom/android/server/usb/OppoUsbManager;->mUsbConnected:Z

    if-eqz v4, :cond_6

    iget-boolean v4, p0, Lcom/android/server/usb/OppoUsbManager;->bootComplete:Z

    if-eqz v4, :cond_6

    .line 264
    const-string v4, "usb_remeber_selection"

    invoke-static {v0, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 265
    .local v3, selectTmp:I
    const-string v4, "OppoUsbManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "selectTmp= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-direct {p0, v3}, Lcom/android/server/usb/OppoUsbManager;->handleUsbSelectedStart(I)V

    .line 267
    if-nez v3, :cond_1

    iget-boolean v4, p0, Lcom/android/server/usb/OppoUsbManager;->mUsbConnected:Z

    if-ne v4, v7, :cond_1

    .line 268
    invoke-direct {p0}, Lcom/android/server/usb/OppoUsbManager;->updateUsbNotification()V

    goto/16 :goto_1

    .line 270
    .end local v3           #selectTmp:I
    :cond_6
    iget-boolean v4, p0, Lcom/android/server/usb/OppoUsbManager;->mUsbConnected:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/android/server/usb/OppoUsbManager;->bootComplete:Z

    if-eqz v4, :cond_1

    .line 271
    iget-object v4, p0, Lcom/android/server/usb/OppoUsbManager;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v4, v8}, Landroid/app/NotificationManager;->cancel(I)V

    .line 272
    invoke-direct {p0, v6}, Lcom/android/server/usb/OppoUsbManager;->handleUsbSelectedStart(I)V

    goto/16 :goto_1
.end method

.method private stopInterruptTimer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 406
    const-string v0, "OppoUsbManager"

    const-string v1, "stopInterruptTimer"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object v0, p0, Lcom/android/server/usb/OppoUsbManager;->mTimerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/android/server/usb/OppoUsbManager;->mTimerList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Timer;

    iput-object v0, p0, Lcom/android/server/usb/OppoUsbManager;->mInterruptTimer:Ljava/util/Timer;

    .line 409
    iget-object v0, p0, Lcom/android/server/usb/OppoUsbManager;->mInterruptTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/android/server/usb/OppoUsbManager;->mInterruptTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 411
    iget-object v0, p0, Lcom/android/server/usb/OppoUsbManager;->mTimerList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 414
    :cond_0
    return-void
.end method

.method private updateUsbNotification()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const v9, 0xc040439

    const/4 v8, 0x0

    .line 286
    iget-object v5, p0, Lcom/android/server/usb/OppoUsbManager;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v5, :cond_0

    .line 287
    iget-object v5, p0, Lcom/android/server/usb/OppoUsbManager;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v5, v9}, Landroid/app/NotificationManager;->cancel(I)V

    .line 288
    iget-object v5, p0, Lcom/android/server/usb/OppoUsbManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 289
    .local v2, r:Landroid/content/res/Resources;
    invoke-direct {p0}, Lcom/android/server/usb/OppoUsbManager;->getTitleId()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 290
    .local v3, title:Ljava/lang/CharSequence;
    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 291
    .local v0, message:Ljava/lang/CharSequence;
    const-string v5, "OppoUsbManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "9. title="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  message="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v5, p0, Lcom/android/server/usb/OppoUsbManager;->mUsbNotification:Landroid/app/Notification;

    if-nez v5, :cond_1

    .line 293
    new-instance v5, Landroid/app/Notification;

    invoke-direct {v5}, Landroid/app/Notification;-><init>()V

    iput-object v5, p0, Lcom/android/server/usb/OppoUsbManager;->mUsbNotification:Landroid/app/Notification;

    .line 294
    iget-object v5, p0, Lcom/android/server/usb/OppoUsbManager;->mUsbNotification:Landroid/app/Notification;

    if-nez v5, :cond_1

    .line 310
    .end local v0           #message:Ljava/lang/CharSequence;
    .end local v2           #r:Landroid/content/res/Resources;
    .end local v3           #title:Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return-void

    .line 297
    .restart local v0       #message:Ljava/lang/CharSequence;
    .restart local v2       #r:Landroid/content/res/Resources;
    .restart local v3       #title:Ljava/lang/CharSequence;
    :cond_1
    iget-object v5, p0, Lcom/android/server/usb/OppoUsbManager;->mUsbNotification:Landroid/app/Notification;

    const v6, 0xc080454

    iput v6, v5, Landroid/app/Notification;->icon:I

    .line 298
    iget-object v5, p0, Lcom/android/server/usb/OppoUsbManager;->mUsbNotification:Landroid/app/Notification;

    const-wide/16 v6, 0x0

    iput-wide v6, v5, Landroid/app/Notification;->when:J

    .line 299
    iget-object v5, p0, Lcom/android/server/usb/OppoUsbManager;->mUsbNotification:Landroid/app/Notification;

    const/4 v6, 0x2

    iput v6, v5, Landroid/app/Notification;->flags:I

    .line 300
    iget-object v5, p0, Lcom/android/server/usb/OppoUsbManager;->mUsbNotification:Landroid/app/Notification;

    iput-object v3, v5, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 301
    iget-object v5, p0, Lcom/android/server/usb/OppoUsbManager;->mUsbNotification:Landroid/app/Notification;

    iput v8, v5, Landroid/app/Notification;->defaults:I

    .line 302
    iget-object v5, p0, Lcom/android/server/usb/OppoUsbManager;->mUsbNotification:Landroid/app/Notification;

    iput-object v10, v5, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 303
    iget-object v5, p0, Lcom/android/server/usb/OppoUsbManager;->mUsbNotification:Landroid/app/Notification;

    iput-object v10, v5, Landroid/app/Notification;->vibrate:[J

    .line 304
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.ACTION_USB_SELECTION"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 305
    .local v4, usbIntent:Landroid/content/Intent;
    const/high16 v5, 0x1020

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 306
    iget-object v5, p0, Lcom/android/server/usb/OppoUsbManager;->mContext:Landroid/content/Context;

    invoke-static {v5, v8, v4, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 307
    .local v1, pi:Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/android/server/usb/OppoUsbManager;->mUsbNotification:Landroid/app/Notification;

    iget-object v6, p0, Lcom/android/server/usb/OppoUsbManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, v3, v0, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 308
    iget-object v5, p0, Lcom/android/server/usb/OppoUsbManager;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v6, p0, Lcom/android/server/usb/OppoUsbManager;->mUsbNotification:Landroid/app/Notification;

    invoke-virtual {v5, v9, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method private updateUsbSelection()V
    .locals 4

    .prologue
    .line 418
    const-string v1, "OppoUsbManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateUsbSelection= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/usb/OppoUsbManager;->mUsbSelected:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_USB_SELECED_FINISH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 420
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "UsbSelectedType"

    iget v2, p0, Lcom/android/server/usb/OppoUsbManager;->mUsbSelected:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 421
    iget-object v1, p0, Lcom/android/server/usb/OppoUsbManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 422
    return-void
.end method

.method private usbSelectionInit()V
    .locals 0

    .prologue
    .line 425
    invoke-direct {p0}, Lcom/android/server/usb/OppoUsbManager;->disableUMS()V

    .line 426
    return-void
.end method


# virtual methods
.method public getUsbSeletcedType()I
    .locals 1

    .prologue
    .line 503
    iget v0, p0, Lcom/android/server/usb/OppoUsbManager;->mUsbSelected:I

    return v0
.end method

.method public isUmsProcessing()Z
    .locals 1

    .prologue
    .line 495
    iget-boolean v0, p0, Lcom/android/server/usb/OppoUsbManager;->mUmsProcessing:Z

    return v0
.end method

.method public isUsbConnected()Z
    .locals 1

    .prologue
    .line 507
    iget-boolean v0, p0, Lcom/android/server/usb/OppoUsbManager;->mUsbConnected:Z

    return v0
.end method

.method public isUsbSelectionProcessing()Z
    .locals 1

    .prologue
    .line 499
    iget-boolean v0, p0, Lcom/android/server/usb/OppoUsbManager;->mProcessing:Z

    return v0
.end method
