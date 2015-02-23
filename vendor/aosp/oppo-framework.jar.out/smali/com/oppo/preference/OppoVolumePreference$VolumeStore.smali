.class public Lcom/oppo/preference/OppoVolumePreference$VolumeStore;
.super Ljava/lang/Object;
.source "OppoVolumePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/preference/OppoVolumePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VolumeStore"
.end annotation


# instance fields
.field public originalVolume:I

.field public volume:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    iput v0, p0, Lcom/oppo/preference/OppoVolumePreference$VolumeStore;->volume:I

    .line 202
    iput v0, p0, Lcom/oppo/preference/OppoVolumePreference$VolumeStore;->originalVolume:I

    return-void
.end method
