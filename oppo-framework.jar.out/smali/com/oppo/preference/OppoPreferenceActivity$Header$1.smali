.class final Lcom/oppo/preference/OppoPreferenceActivity$Header$1;
.super Ljava/lang/Object;
.source "OppoPreferenceActivity.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/preference/OppoPreferenceActivity$Header;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/oppo/preference/OppoPreferenceActivity$Header;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 567
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/oppo/preference/OppoPreferenceActivity$Header;
    .locals 1
    .parameter "source"

    .prologue
    .line 570
    new-instance v0, Lcom/oppo/preference/OppoPreferenceActivity$Header;

    invoke-direct {v0, p1}, Lcom/oppo/preference/OppoPreferenceActivity$Header;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 567
    invoke-virtual {p0, p1}, Lcom/oppo/preference/OppoPreferenceActivity$Header$1;->createFromParcel(Landroid/os/Parcel;)Lcom/oppo/preference/OppoPreferenceActivity$Header;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/oppo/preference/OppoPreferenceActivity$Header;
    .locals 1
    .parameter "size"

    .prologue
    .line 574
    new-array v0, p1, [Lcom/oppo/preference/OppoPreferenceActivity$Header;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 567
    invoke-virtual {p0, p1}, Lcom/oppo/preference/OppoPreferenceActivity$Header$1;->newArray(I)[Lcom/oppo/preference/OppoPreferenceActivity$Header;

    move-result-object v0

    return-object v0
.end method
