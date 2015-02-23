.class public Landroid/media/CamcorderProfile;
.super Ljava/lang/Object;
.source "CamcorderProfile.java"


# static fields
.field public static final QUALITY_1080P:I = 0x6

.field public static final QUALITY_480P:I = 0x4

.field public static final QUALITY_720P:I = 0x5

.field public static final QUALITY_CIF:I = 0x3

.field public static final QUALITY_HIGH:I = 0x1

.field private static final QUALITY_LIST_END:I = 0x7

.field private static final QUALITY_LIST_START:I = 0x0

.field public static final QUALITY_LOW:I = 0x0

.field public static final QUALITY_MTK_1080P:I = 0x12

.field public static final QUALITY_MTK_FINE:I = 0xb

.field public static final QUALITY_MTK_H264_HIGH:I = 0x11

.field public static final QUALITY_MTK_HIGH:I = 0xa

.field public static final QUALITY_MTK_LIST_END:I = 0x12

.field public static final QUALITY_MTK_LIVE_EFFECT:I = 0x10

.field public static final QUALITY_MTK_LOW:I = 0x8

.field public static final QUALITY_MTK_MEDIUM:I = 0x9

.field public static final QUALITY_MTK_NIGHT_FINE:I = 0xf

.field public static final QUALITY_MTK_NIGHT_HIGH:I = 0xe

.field public static final QUALITY_MTK_NIGHT_LOW:I = 0xc

.field public static final QUALITY_MTK_NIGHT_MEDIUM:I = 0xd

.field private static final QUALITY_MTK_TIME_LAPSE_LIST_END:I = 0x3fa

.field public static final QUALITY_MTK_TIME_LAPSE_LIVE_EFFECT:I = 0x3f8

.field public static final QUALITY_QCIF:I = 0x2

.field public static final QUALITY_QVGA:I = 0x7

.field public static final QUALITY_TIME_LAPSE_1080P:I = 0x3ee

.field public static final QUALITY_TIME_LAPSE_480P:I = 0x3ec

.field public static final QUALITY_TIME_LAPSE_720P:I = 0x3ed

.field public static final QUALITY_TIME_LAPSE_CIF:I = 0x3eb

.field public static final QUALITY_TIME_LAPSE_HIGH:I = 0x3e9

.field private static final QUALITY_TIME_LAPSE_LIST_END:I = 0x3ef

.field private static final QUALITY_TIME_LAPSE_LIST_START:I = 0x3e8

.field public static final QUALITY_TIME_LAPSE_LOW:I = 0x3e8

.field public static final QUALITY_TIME_LAPSE_QCIF:I = 0x3ea

.field public static final QUALITY_TIME_LAPSE_QVGA:I = 0x3ef


# instance fields
.field public audioBitRate:I

.field public audioChannels:I

.field public audioCodec:I

.field public audioSampleRate:I

.field public duration:I

.field public fileFormat:I

.field public quality:I

.field public videoBitRate:I

.field public videoCodec:I

.field public videoFrameHeight:I

.field public videoFrameRate:I

.field public videoFrameWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 422
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 423
    invoke-static {}, Landroid/media/CamcorderProfile;->native_init()V

    .line 424
    return-void
.end method

.method private constructor <init>(IIIIIIIIIIII)V
    .locals 0
    .parameter "duration"
    .parameter "quality"
    .parameter "fileFormat"
    .parameter "videoCodec"
    .parameter "videoBitRate"
    .parameter "videoFrameRate"
    .parameter "videoWidth"
    .parameter "videoHeight"
    .parameter "audioCodec"
    .parameter "audioBitRate"
    .parameter "audioSampleRate"
    .parameter "audioChannels"

    .prologue
    .line 438
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 440
    iput p1, p0, Landroid/media/CamcorderProfile;->duration:I

    .line 441
    iput p2, p0, Landroid/media/CamcorderProfile;->quality:I

    .line 442
    iput p3, p0, Landroid/media/CamcorderProfile;->fileFormat:I

    .line 443
    iput p4, p0, Landroid/media/CamcorderProfile;->videoCodec:I

    .line 444
    iput p5, p0, Landroid/media/CamcorderProfile;->videoBitRate:I

    .line 445
    iput p6, p0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    .line 446
    iput p7, p0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 447
    iput p8, p0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 448
    iput p9, p0, Landroid/media/CamcorderProfile;->audioCodec:I

    .line 449
    iput p10, p0, Landroid/media/CamcorderProfile;->audioBitRate:I

    .line 450
    iput p11, p0, Landroid/media/CamcorderProfile;->audioSampleRate:I

    .line 451
    iput p12, p0, Landroid/media/CamcorderProfile;->audioChannels:I

    .line 452
    return-void
.end method

.method public static get(I)Landroid/media/CamcorderProfile;
    .locals 4
    .parameter "quality"

    .prologue
    .line 280
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    .line 281
    .local v2, numberOfCameras:I
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 282
    .local v0, cameraInfo:Landroid/hardware/Camera$CameraInfo;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 283
    invoke-static {v1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 284
    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v3, :cond_0

    .line 285
    invoke-static {v1, p0}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v3

    .line 288
    :goto_1
    return-object v3

    .line 282
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 288
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static get(II)Landroid/media/CamcorderProfile;
    .locals 3
    .parameter "cameraId"
    .parameter "quality"

    .prologue
    .line 331
    if-ltz p1, :cond_0

    const/4 v1, 0x7

    if-le p1, v1, :cond_2

    :cond_0
    const/16 v1, 0x3e8

    if-lt p1, v1, :cond_1

    const/16 v1, 0x3ef

    if-le p1, v1, :cond_2

    .line 335
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported quality level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, errMessage:Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 338
    .end local v0           #errMessage:Ljava/lang/String;
    :cond_2
    invoke-static {p0, p1}, Landroid/media/CamcorderProfile;->native_get_camcorder_profile(II)Landroid/media/CamcorderProfile;

    move-result-object v1

    return-object v1
.end method

.method public static getMtk(I)Landroid/media/CamcorderProfile;
    .locals 4
    .parameter "quality"

    .prologue
    .line 345
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    .line 346
    .local v2, numberOfCameras:I
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 347
    .local v0, cameraInfo:Landroid/hardware/Camera$CameraInfo;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 348
    invoke-static {v1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 349
    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v3, :cond_0

    .line 350
    invoke-static {v1, p0}, Landroid/media/CamcorderProfile;->getMtk(II)Landroid/media/CamcorderProfile;

    move-result-object v3

    .line 353
    :goto_1
    return-object v3

    .line 347
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 353
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static getMtk(II)Landroid/media/CamcorderProfile;
    .locals 3
    .parameter "cameraId"
    .parameter "quality"

    .prologue
    .line 360
    if-ltz p1, :cond_0

    const/16 v1, 0x12

    if-le p1, v1, :cond_2

    :cond_0
    const/16 v1, 0x3e8

    if-lt p1, v1, :cond_1

    const/16 v1, 0x3fa

    if-le p1, v1, :cond_2

    .line 364
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported quality level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 365
    .local v0, errMessage:Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 367
    .end local v0           #errMessage:Ljava/lang/String;
    :cond_2
    invoke-static {p0, p1}, Landroid/media/CamcorderProfile;->native_get_camcorder_profile(II)Landroid/media/CamcorderProfile;

    move-result-object v1

    return-object v1
.end method

.method public static hasProfile(I)Z
    .locals 4
    .parameter "quality"

    .prologue
    .line 376
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    .line 377
    .local v2, numberOfCameras:I
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 378
    .local v0, cameraInfo:Landroid/hardware/Camera$CameraInfo;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 379
    invoke-static {v1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 380
    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v3, :cond_0

    .line 381
    invoke-static {v1, p0}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v3

    .line 384
    :goto_1
    return v3

    .line 378
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 384
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static hasProfile(II)Z
    .locals 1
    .parameter "cameraId"
    .parameter "quality"

    .prologue
    .line 394
    invoke-static {p0, p1}, Landroid/media/CamcorderProfile;->native_has_camcorder_profile(II)Z

    move-result v0

    return v0
.end method

.method private static final native native_get_camcorder_profile(II)Landroid/media/CamcorderProfile;
.end method

.method private static final native native_get_camcorder_profile_caps(I)Ljava/lang/String;
.end method

.method private static final native native_has_camcorder_profile(II)Z
.end method

.method private static final native native_init()V
.end method

.method private splitString(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .parameter "str"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 405
    if-nez p1, :cond_1

    move-object v0, v3

    .line 418
    :cond_0
    :goto_0
    return-object v0

    .line 409
    :cond_1
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v4, ","

    invoke-direct {v2, p1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    .local v2, tokenizer:Ljava/util/StringTokenizer;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 411
    .local v0, substrings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 412
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 413
    .local v1, token:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 415
    .end local v1           #token:Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    move-object v0, v3

    .line 416
    goto :goto_0
.end method


# virtual methods
.method public getSupportedVideoQuality(I)Ljava/util/List;
    .locals 2
    .parameter "cameraId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 400
    invoke-static {p1}, Landroid/media/CamcorderProfile;->native_get_camcorder_profile_caps(I)Ljava/lang/String;

    move-result-object v0

    .line 401
    .local v0, str:Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/media/CamcorderProfile;->splitString(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method
