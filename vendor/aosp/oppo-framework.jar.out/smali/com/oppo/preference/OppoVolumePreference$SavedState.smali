.class Lcom/oppo/preference/OppoVolumePreference$SavedState;
.super Lcom/oppo/preference/OppoPreference$BaseSavedState;
.source "OppoVolumePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/preference/OppoVolumePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/oppo/preference/OppoVolumePreference$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mVolumeStore:Lcom/oppo/preference/OppoVolumePreference$VolumeStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 230
    new-instance v0, Lcom/oppo/preference/OppoVolumePreference$SavedState$1;

    invoke-direct {v0}, Lcom/oppo/preference/OppoVolumePreference$SavedState$1;-><init>()V

    sput-object v0, Lcom/oppo/preference/OppoVolumePreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "source"

    .prologue
    .line 210
    invoke-direct {p0, p1}, Lcom/oppo/preference/OppoPreference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 207
    new-instance v0, Lcom/oppo/preference/OppoVolumePreference$VolumeStore;

    invoke-direct {v0}, Lcom/oppo/preference/OppoVolumePreference$VolumeStore;-><init>()V

    iput-object v0, p0, Lcom/oppo/preference/OppoVolumePreference$SavedState;->mVolumeStore:Lcom/oppo/preference/OppoVolumePreference$VolumeStore;

    .line 211
    iget-object v0, p0, Lcom/oppo/preference/OppoVolumePreference$SavedState;->mVolumeStore:Lcom/oppo/preference/OppoVolumePreference$VolumeStore;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/oppo/preference/OppoVolumePreference$VolumeStore;->volume:I

    .line 212
    iget-object v0, p0, Lcom/oppo/preference/OppoVolumePreference$SavedState;->mVolumeStore:Lcom/oppo/preference/OppoVolumePreference$VolumeStore;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/oppo/preference/OppoVolumePreference$VolumeStore;->originalVolume:I

    .line 213
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 1
    .parameter "superState"

    .prologue
    .line 227
    invoke-direct {p0, p1}, Lcom/oppo/preference/OppoPreference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 207
    new-instance v0, Lcom/oppo/preference/OppoVolumePreference$VolumeStore;

    invoke-direct {v0}, Lcom/oppo/preference/OppoVolumePreference$VolumeStore;-><init>()V

    iput-object v0, p0, Lcom/oppo/preference/OppoVolumePreference$SavedState;->mVolumeStore:Lcom/oppo/preference/OppoVolumePreference$VolumeStore;

    .line 228
    return-void
.end method


# virtual methods
.method getVolumeStore()Lcom/oppo/preference/OppoVolumePreference$VolumeStore;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/oppo/preference/OppoVolumePreference$SavedState;->mVolumeStore:Lcom/oppo/preference/OppoVolumePreference$VolumeStore;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 217
    invoke-super {p0, p1, p2}, Landroid/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 218
    iget-object v0, p0, Lcom/oppo/preference/OppoVolumePreference$SavedState;->mVolumeStore:Lcom/oppo/preference/OppoVolumePreference$VolumeStore;

    iget v0, v0, Lcom/oppo/preference/OppoVolumePreference$VolumeStore;->volume:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    iget-object v0, p0, Lcom/oppo/preference/OppoVolumePreference$SavedState;->mVolumeStore:Lcom/oppo/preference/OppoVolumePreference$VolumeStore;

    iget v0, v0, Lcom/oppo/preference/OppoVolumePreference$VolumeStore;->originalVolume:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    return-void
.end method
