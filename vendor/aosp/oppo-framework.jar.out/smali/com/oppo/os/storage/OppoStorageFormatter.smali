.class public Lcom/oppo/os/storage/OppoStorageFormatter;
.super Landroid/app/Service;
.source "OppoStorageFormatter.java"


# static fields
.field public static final COMPONENT_NAME:Landroid/content/ComponentName; = null

.field private static final MSG_FORAMT_DATA:I = 0x3

.field private static final MSG_FORAMT_EXTERNAL:I = 0x2

.field private static final MSG_FORAMT_INTERNAL:I = 0x1

.field public static final OPPO_FORMAT_ACTION_EXTRA:Ljava/lang/String; = "com.oppo.storage.format.ACTION_EXTRA"

.field public static final OPPO_FORMAT_DATA:I = 0x4

.field public static final OPPO_FORMAT_EXTERNAL_SD:I = 0x2

.field public static final OPPO_FORMAT_INTERNAL_SD:I = 0x1

.field public static final OPPO_FORMAT_NULL:I = 0x0

.field private static final OPPO_FORMAT_TIMESPACE:I = 0x2710

.field private static final OPPO_FORMAT_TRIES:I = 0x5

.field static final TAG:Ljava/lang/String; = "OppoStorageFormatter"


# instance fields
.field private externalSdDir:Ljava/lang/String;

.field private internalSdDir:Ljava/lang/String;

.field private mFormatData_Require:Z

.field private mFormatExter:I

.field private mFormatExternalSD_OK:Z

.field private mFormatExternalSD_Require:Z

.field private mFormatExternalSD_Tries:I

.field private mFormatInter:I

.field private mFormatInternalSD_OK:Z

.field private mFormatInternalSD_Require:Z

.field private mFormatInternalSD_Tries:I

.field private mFormatParam:I

.field private mHandler:Landroid/os/Handler;

.field private mHasSD:Z

.field mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 77
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "oppo"

    const-class v2, Lcom/oppo/os/storage/OppoStorageFormatter;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oppo/os/storage/OppoStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 50
    iput-object v1, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->internalSdDir:Ljava/lang/String;

    .line 51
    iput-object v1, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->externalSdDir:Ljava/lang/String;

    .line 58
    iput-boolean v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatInternalSD_Require:Z

    .line 59
    iput-boolean v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatExternalSD_Require:Z

    .line 60
    iput-boolean v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatData_Require:Z

    .line 62
    iput-boolean v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatInternalSD_OK:Z

    .line 63
    iput-boolean v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatExternalSD_OK:Z

    .line 80
    iput v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatParam:I

    .line 82
    iput v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatInter:I

    .line 83
    iput v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatExter:I

    .line 84
    iput-boolean v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mHasSD:Z

    .line 85
    iput v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatInternalSD_Tries:I

    .line 86
    iput v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatExternalSD_Tries:I

    .line 89
    iput-object v1, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 93
    new-instance v0, Lcom/oppo/os/storage/OppoStorageFormatter$1;

    invoke-direct {v0, p0}, Lcom/oppo/os/storage/OppoStorageFormatter$1;-><init>(Lcom/oppo/os/storage/OppoStorageFormatter;)V

    iput-object v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mHandler:Landroid/os/Handler;

    .line 134
    new-instance v0, Lcom/oppo/os/storage/OppoStorageFormatter$2;

    invoke-direct {v0, p0}, Lcom/oppo/os/storage/OppoStorageFormatter$2;-><init>(Lcom/oppo/os/storage/OppoStorageFormatter;)V

    iput-object v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mStorageListener:Landroid/os/storage/StorageEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/oppo/os/storage/OppoStorageFormatter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatInternalSD_Require:Z

    return v0
.end method

.method static synthetic access$100(Lcom/oppo/os/storage/OppoStorageFormatter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatInternalSD_OK:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/oppo/os/storage/OppoStorageFormatter;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oppo/os/storage/OppoStorageFormatter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatInternalSD_Tries:I

    return v0
.end method

.method static synthetic access$208(Lcom/oppo/os/storage/OppoStorageFormatter;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatInternalSD_Tries:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatInternalSD_Tries:I

    return v0
.end method

.method static synthetic access$300(Lcom/oppo/os/storage/OppoStorageFormatter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatInter:I

    return v0
.end method

.method static synthetic access$400(Lcom/oppo/os/storage/OppoStorageFormatter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatExternalSD_Require:Z

    return v0
.end method

.method static synthetic access$500(Lcom/oppo/os/storage/OppoStorageFormatter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatExternalSD_OK:Z

    return v0
.end method

.method static synthetic access$600(Lcom/oppo/os/storage/OppoStorageFormatter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mHasSD:Z

    return v0
.end method

.method static synthetic access$700(Lcom/oppo/os/storage/OppoStorageFormatter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatExternalSD_Tries:I

    return v0
.end method

.method static synthetic access$708(Lcom/oppo/os/storage/OppoStorageFormatter;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatExternalSD_Tries:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatExternalSD_Tries:I

    return v0
.end method

.method static synthetic access$800(Lcom/oppo/os/storage/OppoStorageFormatter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatExter:I

    return v0
.end method

.method static synthetic access$900(Lcom/oppo/os/storage/OppoStorageFormatter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatData_Require:Z

    return v0
.end method


# virtual methods
.method doOppoFormat()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 195
    iget v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatExter:I

    if-lez v0, :cond_0

    .line 196
    iput-boolean v3, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mHasSD:Z

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 200
    return-void
.end method

.method formatExternalSD(I)V
    .locals 11
    .parameter "formatNo"

    .prologue
    const/4 v10, 0x1

    .line 254
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.MEDIA_PRE_SHARED"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 255
    new-instance v2, Landroid/content/Intent;

    const-string v7, "com.android.internal.os.storage.FORMAT_ONLY"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 256
    .local v2, intent:Landroid/content/Intent;
    iget-object v7, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v7}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v4

    .line 257
    .local v4, storageVolumes:[Landroid/os/storage/StorageVolume;
    const/4 v5, 0x0

    .line 258
    .local v5, temp:I
    const-string v7, "OppoStorageFormatter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "in formatExSd begin formatNo: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    move-object v0, v4

    .local v0, arr$:[Landroid/os/storage/StorageVolume;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v6, v0, v1

    .line 260
    .local v6, volume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p0, v6}, Lcom/oppo/os/storage/OppoStorageFormatter;->isMounted(Landroid/os/storage/StorageVolume;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 261
    add-int/lit8 v5, v5, 0x1

    .line 262
    if-ne v5, p1, :cond_2

    .line 264
    const-string v7, "storage_volume"

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 265
    sget-object v7, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 266
    invoke-virtual {p0, v2}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 267
    const-string v7, "OppoStorageFormatter"

    const-string v8, "in formatExSd start extenalformatter "

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget v7, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatExter:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatExter:I

    .line 273
    .end local v6           #volume:Landroid/os/storage/StorageVolume;
    :cond_0
    if-gt p1, v10, :cond_1

    .line 274
    iput-boolean v10, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatExternalSD_OK:Z

    .line 275
    const-string v7, "OppoStorageFormatter"

    const-string v8, "in formatExSd end format ok"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_1
    return-void

    .line 259
    .restart local v6       #volume:Landroid/os/storage/StorageVolume;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method formatInternalSD(I)V
    .locals 10
    .parameter "formatNo"

    .prologue
    const/4 v9, 0x1

    .line 231
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.MEDIA_PRE_SHARED"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 232
    new-instance v2, Landroid/content/Intent;

    const-string v7, "com.android.internal.os.storage.FORMAT_ONLY"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 233
    .local v2, intent:Landroid/content/Intent;
    iget-object v7, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v7}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v4

    .line 234
    .local v4, storageVolumes:[Landroid/os/storage/StorageVolume;
    const/4 v5, 0x0

    .line 235
    .local v5, temp:I
    move-object v0, v4

    .local v0, arr$:[Landroid/os/storage/StorageVolume;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v6, v0, v1

    .line 236
    .local v6, volume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v7

    if-nez v7, :cond_2

    .line 237
    add-int/lit8 v5, v5, 0x1

    .line 238
    if-ne v5, p1, :cond_2

    .line 239
    const-string v7, "storage_volume"

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 240
    sget-object v7, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 241
    invoke-virtual {p0, v2}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 242
    iget v7, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatInter:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatInter:I

    .line 247
    .end local v6           #volume:Landroid/os/storage/StorageVolume;
    :cond_0
    if-gt p1, v9, :cond_1

    .line 248
    iput-boolean v9, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatInternalSD_OK:Z

    .line 251
    :cond_1
    return-void

    .line 235
    .restart local v6       #volume:Landroid/os/storage/StorageVolume;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method init()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 281
    iput v5, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatExter:I

    .line 282
    iput v5, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatInter:I

    .line 283
    iget-object v5, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v5}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v4

    .line 285
    .local v4, volumes:[Landroid/os/storage/StorageVolume;
    move-object v0, v4

    .local v0, arr$:[Landroid/os/storage/StorageVolume;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 286
    .local v3, volume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0, v3}, Lcom/oppo/os/storage/OppoStorageFormatter;->isMounted(Landroid/os/storage/StorageVolume;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 287
    iget v5, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatExter:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatExter:I

    .line 285
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 288
    :cond_1
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v5

    if-nez v5, :cond_0

    .line 289
    iget v5, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatInter:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatInter:I

    goto :goto_1

    .line 292
    .end local v3           #volume:Landroid/os/storage/StorageVolume;
    :cond_2
    return-void
.end method

.method isMounted(Landroid/os/storage/StorageVolume;)Z
    .locals 3
    .parameter "volume"

    .prologue
    .line 295
    const-string v0, "mounted"

    iget-object v1, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 227
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 146
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 148
    iget-object v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_0

    .line 149
    const-string v0, "storage"

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 150
    iget-object v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 153
    :cond_0
    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "ExternalStorageFormatter"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 155
    iget-object v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 156
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 204
    iput-boolean v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatInternalSD_Require:Z

    .line 205
    iput-boolean v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatExternalSD_Require:Z

    .line 206
    iput-boolean v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatData_Require:Z

    .line 208
    iput-boolean v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatInternalSD_OK:Z

    .line 209
    iput-boolean v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatExternalSD_OK:Z

    .line 211
    iput v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatInter:I

    .line 212
    iput v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatExter:I

    .line 214
    iput v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatInternalSD_Tries:I

    .line 215
    iput v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatExternalSD_Tries:I

    .line 217
    iget-object v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 222
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 223
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 160
    iput-boolean v3, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatInternalSD_Require:Z

    .line 161
    iput-boolean v3, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatExternalSD_Require:Z

    .line 162
    iput-boolean v3, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatData_Require:Z

    .line 164
    iput-boolean v3, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatInternalSD_OK:Z

    .line 165
    iput-boolean v3, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatExternalSD_OK:Z

    .line 167
    iput v3, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatInternalSD_Tries:I

    .line 168
    iput v3, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatExternalSD_Tries:I

    .line 170
    invoke-virtual {p0}, Lcom/oppo/os/storage/OppoStorageFormatter;->init()V

    .line 171
    const-string v0, "OppoStorageFormatter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFormatInter sd count is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatInter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mFormatExter sd count is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatExter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const-string v0, "com.oppo.storage.format.ACTION_EXTRA"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatParam:I

    .line 175
    const-string v0, "OppoStorageFormatter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFormatParam = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatParam:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatParam:I

    and-int/lit8 v0, v0, 0x1

    if-ne v4, v0, :cond_0

    .line 178
    iput-boolean v4, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatInternalSD_Require:Z

    .line 181
    :cond_0
    const/4 v0, 0x2

    iget v1, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatParam:I

    and-int/lit8 v1, v1, 0x2

    if-ne v0, v1, :cond_1

    .line 182
    iput-boolean v4, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatExternalSD_Require:Z

    .line 185
    :cond_1
    const/4 v0, 0x4

    iget v1, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatParam:I

    and-int/lit8 v1, v1, 0x4

    if-ne v0, v1, :cond_2

    .line 186
    iput-boolean v4, p0, Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatData_Require:Z

    .line 189
    :cond_2
    invoke-virtual {p0}, Lcom/oppo/os/storage/OppoStorageFormatter;->doOppoFormat()V

    .line 191
    const/4 v0, 0x3

    return v0
.end method
