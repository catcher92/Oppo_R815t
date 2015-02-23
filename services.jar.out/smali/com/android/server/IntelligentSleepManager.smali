.class public abstract Lcom/android/server/IntelligentSleepManager;
.super Ljava/lang/Object;
.source "IntelligentSleepManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/IntelligentSleepManager$1;,
        Lcom/android/server/IntelligentSleepManager$MyOrientationEventListener;,
        Lcom/android/server/IntelligentSleepManager$PreviewCallback;
    }
.end annotation


# static fields
.field private static final CAMERA_INTELLIGENT_SLEEP:I = 0x3e9

.field private static final PREVIEW_SIZE_HEIGHT:I = 0x140

.field private static final PREVIEW_SIZE_WIDTH:I = 0x1e0


# instance fields
.field private TAG:Ljava/lang/String;

.field private final face:Landroid/intelligent/EyeDetector;

.field private isProccing:Z

.field private mCamera:Landroid/hardware/Camera;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLastOrientation:I

.field private mOrientationListener:Lcom/android/server/IntelligentSleepManager$MyOrientationEventListener;

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mPreviewCallback:Lcom/android/server/IntelligentSleepManager$PreviewCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, "IntelligentSleepManager"

    iput-object v0, p0, Lcom/android/server/IntelligentSleepManager;->TAG:Ljava/lang/String;

    .line 24
    iput-object v1, p0, Lcom/android/server/IntelligentSleepManager;->mCamera:Landroid/hardware/Camera;

    .line 25
    iput-object v1, p0, Lcom/android/server/IntelligentSleepManager;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 26
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/IntelligentSleepManager;->mHandler:Landroid/os/Handler;

    .line 27
    iput-object v1, p0, Lcom/android/server/IntelligentSleepManager;->mContext:Landroid/content/Context;

    .line 28
    new-instance v0, Landroid/intelligent/EyeDetector;

    invoke-direct {v0}, Landroid/intelligent/EyeDetector;-><init>()V

    iput-object v0, p0, Lcom/android/server/IntelligentSleepManager;->face:Landroid/intelligent/EyeDetector;

    .line 29
    new-instance v0, Lcom/android/server/IntelligentSleepManager$PreviewCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/server/IntelligentSleepManager$PreviewCallback;-><init>(Lcom/android/server/IntelligentSleepManager;Lcom/android/server/IntelligentSleepManager$1;)V

    iput-object v0, p0, Lcom/android/server/IntelligentSleepManager;->mPreviewCallback:Lcom/android/server/IntelligentSleepManager$PreviewCallback;

    .line 30
    iput-object v1, p0, Lcom/android/server/IntelligentSleepManager;->mOrientationListener:Lcom/android/server/IntelligentSleepManager$MyOrientationEventListener;

    .line 31
    iput v2, p0, Lcom/android/server/IntelligentSleepManager;->mLastOrientation:I

    .line 38
    iput-boolean v2, p0, Lcom/android/server/IntelligentSleepManager;->isProccing:Z

    .line 203
    iput-object p1, p0, Lcom/android/server/IntelligentSleepManager;->mContext:Landroid/content/Context;

    .line 204
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/IntelligentSleepManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/server/IntelligentSleepManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/IntelligentSleepManager;[BII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/IntelligentSleepManager;->eyeDected([BII)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/IntelligentSleepManager;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/android/server/IntelligentSleepManager;->roundOrientation(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/IntelligentSleepManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput p1, p0, Lcom/android/server/IntelligentSleepManager;->mLastOrientation:I

    return p1
.end method

.method private eyeDected([BII)V
    .locals 5
    .parameter "data"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 67
    iget-object v2, p0, Lcom/android/server/IntelligentSleepManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mLastOrientation:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/IntelligentSleepManager;->mLastOrientation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const/4 v0, 0x0

    .line 71
    .local v0, Orientation:I
    iget v2, p0, Lcom/android/server/IntelligentSleepManager;->mLastOrientation:I

    if-nez v2, :cond_2

    .line 72
    const/16 v0, 0x10e

    .line 80
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/IntelligentSleepManager;->face:Landroid/intelligent/EyeDetector;

    invoke-virtual {v2, p1, p2, p3, v0}, Landroid/intelligent/EyeDetector;->isHavEye([BIII)I

    move-result v1

    .line 82
    .local v1, facecount:I
    invoke-direct {p0}, Lcom/android/server/IntelligentSleepManager;->stopPreview()V

    .line 84
    iget-object v2, p0, Lcom/android/server/IntelligentSleepManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "facecount:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const/4 v2, 0x1

    if-lt v1, v2, :cond_1

    .line 87
    invoke-direct {p0}, Lcom/android/server/IntelligentSleepManager;->handleEyeDectedResult()V

    .line 89
    :cond_1
    const/4 v1, 0x0

    .line 90
    return-void

    .line 73
    .end local v1           #facecount:I
    :cond_2
    iget v2, p0, Lcom/android/server/IntelligentSleepManager;->mLastOrientation:I

    const/16 v3, 0x5a

    if-ne v2, v3, :cond_3

    .line 74
    const/16 v0, 0xb4

    goto :goto_0

    .line 75
    :cond_3
    iget v2, p0, Lcom/android/server/IntelligentSleepManager;->mLastOrientation:I

    const/16 v3, 0xb4

    if-ne v2, v3, :cond_0

    .line 76
    const/16 v0, 0x5a

    goto :goto_0
.end method

.method private handleEyeDectedResult()V
    .locals 4

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/server/IntelligentSleepManager;->TAG:Ljava/lang/String;

    const-string v1, "handleEyeDectedResult()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lcom/android/server/IntelligentSleepManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "now = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-virtual {p0}, Lcom/android/server/IntelligentSleepManager;->eyeDectedResultCallBack()V

    .line 112
    return-void
.end method

.method private roundOrientation(I)I
    .locals 3
    .parameter "orientationInput"

    .prologue
    .line 226
    move v0, p1

    .line 228
    .local v0, orientation:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 229
    const/4 v0, 0x0

    .line 232
    :cond_0
    rem-int/lit16 v0, v0, 0x168

    .line 235
    const/16 v2, 0x2d

    if-ge v0, v2, :cond_1

    .line 236
    const/4 v1, 0x0

    .line 247
    .local v1, retVal:I
    :goto_0
    return v1

    .line 237
    .end local v1           #retVal:I
    :cond_1
    const/16 v2, 0x87

    if-ge v0, v2, :cond_2

    .line 238
    const/16 v1, 0x5a

    .restart local v1       #retVal:I
    goto :goto_0

    .line 239
    .end local v1           #retVal:I
    :cond_2
    const/16 v2, 0xe1

    if-ge v0, v2, :cond_3

    .line 240
    const/16 v1, 0xb4

    .restart local v1       #retVal:I
    goto :goto_0

    .line 241
    .end local v1           #retVal:I
    :cond_3
    const/16 v2, 0x13b

    if-ge v0, v2, :cond_4

    .line 242
    const/16 v1, 0x10e

    .restart local v1       #retVal:I
    goto :goto_0

    .line 244
    .end local v1           #retVal:I
    :cond_4
    const/4 v1, 0x0

    .restart local v1       #retVal:I
    goto :goto_0
.end method

.method private declared-synchronized startPreview()V
    .locals 6

    .prologue
    .line 115
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/IntelligentSleepManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isProccing:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/IntelligentSleepManager;->isProccing:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const/4 v2, 0x0

    .line 117
    .local v2, rotation:I
    iget-boolean v3, p0, Lcom/android/server/IntelligentSleepManager;->isProccing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 119
    const/16 v3, 0x3e9

    :try_start_1
    invoke-static {v3}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/IntelligentSleepManager;->mCamera:Landroid/hardware/Camera;

    .line 120
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/IntelligentSleepManager;->isProccing:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 132
    :cond_0
    :goto_0
    :try_start_2
    iget-boolean v3, p0, Lcom/android/server/IntelligentSleepManager;->isProccing:Z

    if-eqz v3, :cond_2

    .line 133
    iget-object v3, p0, Lcom/android/server/IntelligentSleepManager;->TAG:Ljava/lang/String;

    const-string v4, "isProccing ..."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 170
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 121
    :catch_0
    move-exception v0

    .line 123
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    iget-object v3, p0, Lcom/android/server/IntelligentSleepManager;->TAG:Ljava/lang/String;

    const-string v4, "open failed"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/IntelligentSleepManager;->isProccing:Z

    .line 125
    iget-object v3, p0, Lcom/android/server/IntelligentSleepManager;->mOrientationListener:Lcom/android/server/IntelligentSleepManager$MyOrientationEventListener;

    if-eqz v3, :cond_0

    .line 126
    iget-object v3, p0, Lcom/android/server/IntelligentSleepManager;->mOrientationListener:Lcom/android/server/IntelligentSleepManager$MyOrientationEventListener;

    invoke-virtual {v3}, Lcom/android/server/IntelligentSleepManager$MyOrientationEventListener;->disable()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 115
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #rotation:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 136
    .restart local v2       #rotation:I
    :cond_2
    const/4 v3, 0x1

    :try_start_4
    iput-boolean v3, p0, Lcom/android/server/IntelligentSleepManager;->isProccing:Z

    .line 139
    iget-object v3, p0, Lcom/android/server/IntelligentSleepManager;->mOrientationListener:Lcom/android/server/IntelligentSleepManager$MyOrientationEventListener;

    if-eqz v3, :cond_3

    .line 140
    iget-object v3, p0, Lcom/android/server/IntelligentSleepManager;->mOrientationListener:Lcom/android/server/IntelligentSleepManager$MyOrientationEventListener;

    invoke-virtual {v3}, Lcom/android/server/IntelligentSleepManager$MyOrientationEventListener;->enable()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 145
    :cond_3
    :try_start_5
    iget-object v3, p0, Lcom/android/server/IntelligentSleepManager;->mCamera:Landroid/hardware/Camera;

    if-nez v3, :cond_4

    .line 146
    const/16 v3, 0x3e9

    invoke-static {v3}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/IntelligentSleepManager;->mCamera:Landroid/hardware/Camera;

    .line 149
    :cond_4
    iget-object v3, p0, Lcom/android/server/IntelligentSleepManager;->mCamera:Landroid/hardware/Camera;

    if-eqz v3, :cond_1

    .line 151
    iget-object v3, p0, Lcom/android/server/IntelligentSleepManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/IntelligentSleepManager;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 152
    iget-object v3, p0, Lcom/android/server/IntelligentSleepManager;->mParameters:Landroid/hardware/Camera$Parameters;

    const/16 v4, 0x1e0

    const/16 v5, 0x140

    invoke-virtual {v3, v4, v5}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 153
    iget-object v3, p0, Lcom/android/server/IntelligentSleepManager;->mParameters:Landroid/hardware/Camera$Parameters;

    const/16 v4, 0x1e0

    const/16 v5, 0x140

    invoke-virtual {v3, v4, v5}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 154
    iget-object v3, p0, Lcom/android/server/IntelligentSleepManager;->mCamera:Landroid/hardware/Camera;

    iget-object v4, p0, Lcom/android/server/IntelligentSleepManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v4}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 156
    iget-object v3, p0, Lcom/android/server/IntelligentSleepManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->startPreview()V

    .line 157
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/IntelligentSleepManager;->isProccing:Z

    .line 159
    iget-object v3, p0, Lcom/android/server/IntelligentSleepManager;->mCamera:Landroid/hardware/Camera;

    iget-object v4, p0, Lcom/android/server/IntelligentSleepManager;->mPreviewCallback:Lcom/android/server/IntelligentSleepManager$PreviewCallback;

    invoke-virtual {v3, v4}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 161
    :catch_1
    move-exception v1

    .line 162
    .local v1, ex:Ljava/lang/Exception;
    const/4 v3, 0x0

    :try_start_6
    iput-object v3, p0, Lcom/android/server/IntelligentSleepManager;->mCamera:Landroid/hardware/Camera;

    .line 163
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/IntelligentSleepManager;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 164
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/IntelligentSleepManager;->isProccing:Z

    .line 166
    iget-object v3, p0, Lcom/android/server/IntelligentSleepManager;->mOrientationListener:Lcom/android/server/IntelligentSleepManager$MyOrientationEventListener;

    if-eqz v3, :cond_1

    .line 167
    iget-object v3, p0, Lcom/android/server/IntelligentSleepManager;->mOrientationListener:Lcom/android/server/IntelligentSleepManager$MyOrientationEventListener;

    invoke-virtual {v3}, Lcom/android/server/IntelligentSleepManager$MyOrientationEventListener;->disable()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1
.end method

.method private stopPreview()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 173
    iget-object v0, p0, Lcom/android/server/IntelligentSleepManager;->TAG:Ljava/lang/String;

    const-string v1, "stopPreview()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v0, p0, Lcom/android/server/IntelligentSleepManager;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/server/IntelligentSleepManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 176
    iget-object v0, p0, Lcom/android/server/IntelligentSleepManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 177
    iget-object v0, p0, Lcom/android/server/IntelligentSleepManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 178
    iput-object v2, p0, Lcom/android/server/IntelligentSleepManager;->mCamera:Landroid/hardware/Camera;

    .line 179
    iput-object v2, p0, Lcom/android/server/IntelligentSleepManager;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/android/server/IntelligentSleepManager;->mOrientationListener:Lcom/android/server/IntelligentSleepManager$MyOrientationEventListener;

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/android/server/IntelligentSleepManager;->mOrientationListener:Lcom/android/server/IntelligentSleepManager$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/android/server/IntelligentSleepManager$MyOrientationEventListener;->disable()V

    .line 184
    iput-object v2, p0, Lcom/android/server/IntelligentSleepManager;->mOrientationListener:Lcom/android/server/IntelligentSleepManager$MyOrientationEventListener;

    .line 187
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/IntelligentSleepManager;->isProccing:Z

    .line 188
    return-void
.end method


# virtual methods
.method protected abstract eyeDectedResultCallBack()V
.end method

.method public startEyeDected()V
    .locals 4

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/server/IntelligentSleepManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "now = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v0, p0, Lcom/android/server/IntelligentSleepManager;->mOrientationListener:Lcom/android/server/IntelligentSleepManager$MyOrientationEventListener;

    if-nez v0, :cond_0

    .line 193
    new-instance v0, Lcom/android/server/IntelligentSleepManager$MyOrientationEventListener;

    iget-object v1, p0, Lcom/android/server/IntelligentSleepManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/IntelligentSleepManager$MyOrientationEventListener;-><init>(Lcom/android/server/IntelligentSleepManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/IntelligentSleepManager;->mOrientationListener:Lcom/android/server/IntelligentSleepManager$MyOrientationEventListener;

    .line 195
    :cond_0
    invoke-direct {p0}, Lcom/android/server/IntelligentSleepManager;->startPreview()V

    .line 196
    return-void
.end method

.method public stopEyeDected()V
    .locals 0

    .prologue
    .line 199
    invoke-direct {p0}, Lcom/android/server/IntelligentSleepManager;->stopPreview()V

    .line 200
    return-void
.end method
