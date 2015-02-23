.class Lcom/oppo/preference/OppoEditTextPreference$SavedState;
.super Lcom/oppo/preference/OppoPreference$BaseSavedState;
.source "OppoEditTextPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/preference/OppoEditTextPreference;
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
            "Lcom/oppo/preference/OppoEditTextPreference$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 232
    new-instance v0, Lcom/oppo/preference/OppoEditTextPreference$SavedState$1;

    invoke-direct {v0}, Lcom/oppo/preference/OppoEditTextPreference$SavedState$1;-><init>()V

    sput-object v0, Lcom/oppo/preference/OppoEditTextPreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 218
    invoke-direct {p0, p1}, Lcom/oppo/preference/OppoPreference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/preference/OppoEditTextPreference$SavedState;->text:Ljava/lang/String;

    .line 220
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .parameter "superState"

    .prologue
    .line 229
    invoke-direct {p0, p1}, Lcom/oppo/preference/OppoPreference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 230
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 224
    invoke-super {p0, p1, p2}, Landroid/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 225
    iget-object v0, p0, Lcom/oppo/preference/OppoEditTextPreference$SavedState;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 226
    return-void
.end method
