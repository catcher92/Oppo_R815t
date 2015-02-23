.class public final Lcom/oppo/preference/OppoPreferenceActivity$Header;
.super Ljava/lang/Object;
.source "OppoPreferenceActivity.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/preference/OppoPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Header"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/oppo/preference/OppoPreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public breadCrumbShortTitle:Ljava/lang/CharSequence;

.field public breadCrumbShortTitleRes:I

.field public breadCrumbTitle:Ljava/lang/CharSequence;

.field public breadCrumbTitleRes:I

.field public extras:Landroid/os/Bundle;

.field public fragment:Ljava/lang/String;

.field public fragmentArguments:Landroid/os/Bundle;

.field public iconRes:I

.field public id:J

.field public intent:Landroid/content/Intent;

.field public layoutResid:I

.field public overlap:I

.field public summary:Ljava/lang/CharSequence;

.field public summaryRes:I

.field public title:Ljava/lang/CharSequence;

.field public titleRes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 567
    new-instance v0, Lcom/oppo/preference/OppoPreferenceActivity$Header$1;

    invoke-direct {v0}, Lcom/oppo/preference/OppoPreferenceActivity$Header$1;-><init>()V

    sput-object v0, Lcom/oppo/preference/OppoPreferenceActivity$Header;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 348
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/oppo/preference/OppoPreferenceActivity$Header;->id:J

    .line 449
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 563
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 348
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/oppo/preference/OppoPreferenceActivity$Header;->id:J

    .line 564
    invoke-virtual {p0, p1}, Lcom/oppo/preference/OppoPreferenceActivity$Header;->readFromParcel(Landroid/os/Parcel;)V

    .line 565
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 513
    const/4 v0, 0x0

    return v0
.end method

.method public getBreadCrumbShortTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "res"

    .prologue
    .line 505
    iget v0, p0, Lcom/oppo/preference/OppoPreferenceActivity$Header;->breadCrumbShortTitleRes:I

    if-eqz v0, :cond_0

    .line 506
    iget v0, p0, Lcom/oppo/preference/OppoPreferenceActivity$Header;->breadCrumbShortTitleRes:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 508
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity$Header;->breadCrumbShortTitle:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public getBreadCrumbTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "res"

    .prologue
    .line 493
    iget v0, p0, Lcom/oppo/preference/OppoPreferenceActivity$Header;->breadCrumbTitleRes:I

    if-eqz v0, :cond_0

    .line 494
    iget v0, p0, Lcom/oppo/preference/OppoPreferenceActivity$Header;->breadCrumbTitleRes:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 496
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity$Header;->breadCrumbTitle:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public getLayoutResid()I
    .locals 1

    .prologue
    .line 462
    iget v0, p0, Lcom/oppo/preference/OppoPreferenceActivity$Header;->layoutResid:I

    return v0
.end method

.method public getOverlap()I
    .locals 1

    .prologue
    .line 455
    iget v0, p0, Lcom/oppo/preference/OppoPreferenceActivity$Header;->overlap:I

    return v0
.end method

.method public getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "res"

    .prologue
    .line 481
    iget v0, p0, Lcom/oppo/preference/OppoPreferenceActivity$Header;->summaryRes:I

    if-eqz v0, :cond_0

    .line 482
    iget v0, p0, Lcom/oppo/preference/OppoPreferenceActivity$Header;->summaryRes:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 484
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "res"

    .prologue
    .line 470
    iget v0, p0, Lcom/oppo/preference/OppoPreferenceActivity$Header;->titleRes:I

    if-eqz v0, :cond_0

    .line 471
    iget v0, p0, Lcom/oppo/preference/OppoPreferenceActivity$Header;->titleRes:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 473
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 545
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oppo/preference/OppoPreferenceActivity$Header;->id:J

    .line 546
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oppo/preference/OppoPreferenceActivity$Header;->titleRes:I

    .line 547
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 548
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oppo/preference/OppoPreferenceActivity$Header;->summaryRes:I

    .line 549
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    .line 550
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oppo/preference/OppoPreferenceActivity$Header;->breadCrumbTitleRes:I

    .line 551
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity$Header;->breadCrumbTitle:Ljava/lang/CharSequence;

    .line 552
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oppo/preference/OppoPreferenceActivity$Header;->breadCrumbShortTitleRes:I

    .line 553
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity$Header;->breadCrumbShortTitle:Ljava/lang/CharSequence;

    .line 554
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oppo/preference/OppoPreferenceActivity$Header;->iconRes:I

    .line 555
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 556
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 557
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 558
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 560
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity$Header;->extras:Landroid/os/Bundle;

    .line 561
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 518
    iget-wide v0, p0, Lcom/oppo/preference/OppoPreferenceActivity$Header;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 519
    iget v0, p0, Lcom/oppo/preference/OppoPreferenceActivity$Header;->titleRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 520
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 521
    iget v0, p0, Lcom/oppo/preference/OppoPreferenceActivity$Header;->summaryRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 522
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 523
    iget v0, p0, Lcom/oppo/preference/OppoPreferenceActivity$Header;->breadCrumbTitleRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 524
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity$Header;->breadCrumbTitle:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 525
    iget v0, p0, Lcom/oppo/preference/OppoPreferenceActivity$Header;->breadCrumbShortTitleRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 526
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity$Header;->breadCrumbShortTitle:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 527
    iget v0, p0, Lcom/oppo/preference/OppoPreferenceActivity$Header;->iconRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 528
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity$Header;->fragment:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 529
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 530
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 531
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 532
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity$Header;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 536
    :goto_0
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity$Header;->extras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 537
    return-void

    .line 534
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
