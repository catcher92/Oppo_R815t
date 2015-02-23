.class Lcom/oppo/widget/OppoLockPatternView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "OppoLockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoLockPatternView;
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
            "Lcom/oppo/widget/OppoLockPatternView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDisplayMode:I

.field private final mInStealthMode:Z

.field private final mInputEnabled:Z

.field private final mSerializedPattern:Ljava/lang/String;

.field private final mTactileFeedbackEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1268
    new-instance v0, Lcom/oppo/widget/OppoLockPatternView$SavedState$1;

    invoke-direct {v0}, Lcom/oppo/widget/OppoLockPatternView$SavedState$1;-><init>()V

    sput-object v0, Lcom/oppo/widget/OppoLockPatternView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    const/4 v1, 0x0

    .line 1230
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1231
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoLockPatternView$SavedState;->mSerializedPattern:Ljava/lang/String;

    .line 1232
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoLockPatternView$SavedState;->mDisplayMode:I

    .line 1233
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoLockPatternView$SavedState;->mInputEnabled:Z

    .line 1234
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoLockPatternView$SavedState;->mInStealthMode:Z

    .line 1235
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoLockPatternView$SavedState;->mTactileFeedbackEnabled:Z

    .line 1236
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/oppo/widget/OppoLockPatternView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1205
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoLockPatternView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;Ljava/lang/String;IZZZ)V
    .locals 0
    .parameter "superState"
    .parameter "serializedPattern"
    .parameter "displayMode"
    .parameter "inputEnabled"
    .parameter "inStealthMode"
    .parameter "tactileFeedbackEnabled"

    .prologue
    .line 1218
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1219
    iput-object p2, p0, Lcom/oppo/widget/OppoLockPatternView$SavedState;->mSerializedPattern:Ljava/lang/String;

    .line 1220
    iput p3, p0, Lcom/oppo/widget/OppoLockPatternView$SavedState;->mDisplayMode:I

    .line 1221
    iput-boolean p4, p0, Lcom/oppo/widget/OppoLockPatternView$SavedState;->mInputEnabled:Z

    .line 1222
    iput-boolean p5, p0, Lcom/oppo/widget/OppoLockPatternView$SavedState;->mInStealthMode:Z

    .line 1223
    iput-boolean p6, p0, Lcom/oppo/widget/OppoLockPatternView$SavedState;->mTactileFeedbackEnabled:Z

    .line 1224
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;Ljava/lang/String;IZZZLcom/oppo/widget/OppoLockPatternView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 1205
    invoke-direct/range {p0 .. p6}, Lcom/oppo/widget/OppoLockPatternView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/lang/String;IZZZ)V

    return-void
.end method


# virtual methods
.method public getDisplayMode()I
    .locals 1

    .prologue
    .line 1243
    iget v0, p0, Lcom/oppo/widget/OppoLockPatternView$SavedState;->mDisplayMode:I

    return v0
.end method

.method public getSerializedPattern()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1239
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView$SavedState;->mSerializedPattern:Ljava/lang/String;

    return-object v0
.end method

.method public isInStealthMode()Z
    .locals 1

    .prologue
    .line 1251
    iget-boolean v0, p0, Lcom/oppo/widget/OppoLockPatternView$SavedState;->mInStealthMode:Z

    return v0
.end method

.method public isInputEnabled()Z
    .locals 1

    .prologue
    .line 1247
    iget-boolean v0, p0, Lcom/oppo/widget/OppoLockPatternView$SavedState;->mInputEnabled:Z

    return v0
.end method

.method public isTactileFeedbackEnabled()Z
    .locals 1

    .prologue
    .line 1255
    iget-boolean v0, p0, Lcom/oppo/widget/OppoLockPatternView$SavedState;->mTactileFeedbackEnabled:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 1260
    invoke-super {p0, p1, p2}, Landroid/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1261
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView$SavedState;->mSerializedPattern:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1262
    iget v0, p0, Lcom/oppo/widget/OppoLockPatternView$SavedState;->mDisplayMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1263
    iget-boolean v0, p0, Lcom/oppo/widget/OppoLockPatternView$SavedState;->mInputEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 1264
    iget-boolean v0, p0, Lcom/oppo/widget/OppoLockPatternView$SavedState;->mInStealthMode:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 1265
    iget-boolean v0, p0, Lcom/oppo/widget/OppoLockPatternView$SavedState;->mTactileFeedbackEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 1266
    return-void
.end method
