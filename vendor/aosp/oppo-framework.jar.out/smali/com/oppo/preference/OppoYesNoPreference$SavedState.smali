.class Lcom/oppo/preference/OppoYesNoPreference$SavedState;
.super Lcom/oppo/preference/OppoPreference$BaseSavedState;
.source "OppoYesNoPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/preference/OppoYesNoPreference;
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
            "Lcom/oppo/preference/OppoYesNoPreference$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field wasPositiveResult:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 145
    new-instance v0, Lcom/oppo/preference/OppoYesNoPreference$SavedState$1;

    invoke-direct {v0}, Lcom/oppo/preference/OppoYesNoPreference$SavedState$1;-><init>()V

    sput-object v0, Lcom/oppo/preference/OppoYesNoPreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "source"

    .prologue
    const/4 v0, 0x1

    .line 131
    invoke-direct {p0, p1}, Lcom/oppo/preference/OppoPreference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/oppo/preference/OppoYesNoPreference$SavedState;->wasPositiveResult:Z

    .line 133
    return-void

    .line 132
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .parameter "superState"

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lcom/oppo/preference/OppoPreference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 143
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 137
    invoke-super {p0, p1, p2}, Landroid/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 138
    iget-boolean v0, p0, Lcom/oppo/preference/OppoYesNoPreference$SavedState;->wasPositiveResult:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    return-void

    .line 138
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
