.class Lcom/oppo/preference/OppoDialogPreference$SavedState;
.super Lcom/oppo/preference/OppoPreference$BaseSavedState;
.source "OppoDialogPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/preference/OppoDialogPreference;
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
            "Lcom/oppo/preference/OppoDialogPreference$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field dialogBundle:Landroid/os/Bundle;

.field isDialogShowing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 465
    new-instance v0, Lcom/oppo/preference/OppoDialogPreference$SavedState$1;

    invoke-direct {v0}, Lcom/oppo/preference/OppoDialogPreference$SavedState$1;-><init>()V

    sput-object v0, Lcom/oppo/preference/OppoDialogPreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "source"

    .prologue
    const/4 v0, 0x1

    .line 449
    invoke-direct {p0, p1}, Lcom/oppo/preference/OppoPreference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 450
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/oppo/preference/OppoDialogPreference$SavedState;->isDialogShowing:Z

    .line 451
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/preference/OppoDialogPreference$SavedState;->dialogBundle:Landroid/os/Bundle;

    .line 452
    return-void

    .line 450
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .parameter "superState"

    .prologue
    .line 462
    invoke-direct {p0, p1}, Lcom/oppo/preference/OppoPreference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 463
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 456
    invoke-super {p0, p1, p2}, Landroid/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 457
    iget-boolean v0, p0, Lcom/oppo/preference/OppoDialogPreference$SavedState;->isDialogShowing:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 458
    iget-object v0, p0, Lcom/oppo/preference/OppoDialogPreference$SavedState;->dialogBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 459
    return-void

    .line 457
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method