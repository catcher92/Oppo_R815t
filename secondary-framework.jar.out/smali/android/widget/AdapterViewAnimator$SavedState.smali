.class Landroid/widget/AdapterViewAnimator$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "AdapterViewAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AdapterViewAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/widget/AdapterViewAnimator$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field whichChild:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 938
    new-instance v0, Landroid/widget/AdapterViewAnimator$SavedState$1;

    invoke-direct {v0}, Landroid/widget/AdapterViewAnimator$SavedState$1;-><init>()V

    sput-object v0, Landroid/widget/AdapterViewAnimator$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 923
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 924
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/AdapterViewAnimator$SavedState;->whichChild:I

    .line 925
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/widget/AdapterViewAnimator$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 908
    invoke-direct {p0, p1}, Landroid/widget/AdapterViewAnimator$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;I)V
    .locals 0
    .parameter "superState"
    .parameter "whichChild"

    .prologue
    .line 915
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 916
    iput p2, p0, Landroid/widget/AdapterViewAnimator$SavedState;->whichChild:I

    .line 917
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 935
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdapterViewAnimator.SavedState{ whichChild = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/AdapterViewAnimator$SavedState;->whichChild:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 929
    invoke-super {p0, p1, p2}, Landroid/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 930
    iget v0, p0, Landroid/widget/AdapterViewAnimator$SavedState;->whichChild:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 931
    return-void
.end method
