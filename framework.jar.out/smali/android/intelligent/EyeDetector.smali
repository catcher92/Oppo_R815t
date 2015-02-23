.class public Landroid/intelligent/EyeDetector;
.super Ljava/lang/Object;
.source "EyeDetector.java"


# static fields
.field private static sInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    const/4 v1, 0x0

    sput-boolean v1, Landroid/intelligent/EyeDetector;->sInitialized:Z

    .line 43
    :try_start_0
    const-string/jumbo v1, "libintel_jni"

    const-string/jumbo v2, "opencv libintel_jni begin"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    const-string v1, "intel_jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 45
    const-string/jumbo v1, "libintel_jni"

    const-string/jumbo v2, "opencv libintel_jni end"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-static {}, Landroid/intelligent/EyeDetector;->nativeClassInit()V

    .line 47
    const/4 v1, 0x1

    sput-boolean v1, Landroid/intelligent/EyeDetector;->sInitialized:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .local v0, e:Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 48
    .end local v0           #e:Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 49
    .restart local v0       #e:Ljava/lang/UnsatisfiedLinkError;
    const-string/jumbo v1, "libintel_jni"

    const-string v2, "eye detection library not found!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method private native eye_detect(Landroid/graphics/Bitmap;)I
.end method

.method private native eye_detect(Ljava/lang/String;)I
.end method

.method private native eye_detect([BIII)I
.end method

.method private native eye_detect_destroy()V
.end method

.method private static native nativeClassInit()V
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/intelligent/EyeDetector;->eye_detect_destroy()V

    .line 18
    return-void
.end method

.method public isHavEye(Landroid/graphics/Bitmap;)I
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/intelligent/EyeDetector;->eye_detect(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public isHavEye(Ljava/lang/String;)I
    .locals 1
    .parameter "path"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/intelligent/EyeDetector;->eye_detect(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public isHavEye([BIII)I
    .locals 1
    .parameter "data"
    .parameter "width"
    .parameter "height"
    .parameter "angle"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/intelligent/EyeDetector;->eye_detect([BIII)I

    move-result v0

    return v0
.end method
