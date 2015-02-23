.class public Landroid/content/res/OppoClassFactory;
.super Ljava/lang/Object;
.source "OppoClassFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OppoClassFactory"


# instance fields
.field private final DEBUG:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/OppoClassFactory;->DEBUG:Z

    .line 32
    const-string v0, "OppoClassFactory"

    const-string v1, "the OppoClassFactory is called !!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    return-void
.end method

.method public static newResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 37
    new-instance v0, Landroid/content/res/Resources;

    invoke-direct {v0}, Landroid/content/res/Resources;-><init>()V

    return-object v0
.end method

.method public static newResources(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)Landroid/content/res/Resources;
    .locals 1
    .parameter "assetmanager"
    .parameter "displaymetrics"
    .parameter "configuration"

    .prologue
    .line 42
    new-instance v0, Landroid/content/res/Resources;

    invoke-direct {v0, p0, p1, p2}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    return-object v0
.end method

.method public static newResources(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Resources;
    .locals 1
    .parameter "assetmanager"
    .parameter "displaymetrics"
    .parameter "configuration"
    .parameter "compatibilityinfo"

    .prologue
    .line 47
    new-instance v0, Landroid/content/res/Resources;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    return-object v0
.end method
