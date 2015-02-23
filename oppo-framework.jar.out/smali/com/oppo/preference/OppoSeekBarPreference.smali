.class public Lcom/oppo/preference/OppoSeekBarPreference;
.super Lcom/oppo/preference/OppoPreference;
.source "OppoSeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/preference/OppoSeekBarPreference$SavedState;
    }
.end annotation


# instance fields
.field private mMax:I

.field private mProgress:I

.field private mTrackingTouch:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/preference/OppoSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/preference/OppoSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/preference/OppoPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    sget-object v1, Landroid/R$styleable;->ProgressBar:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 50
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x2

    iget v2, p0, Lcom/oppo/preference/OppoSeekBarPreference;->mMax:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oppo/preference/OppoSeekBarPreference;->setMax(I)V

    .line 51
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 52
    const v1, 0xc09041a

    invoke-virtual {p0, v1}, Lcom/oppo/preference/OppoPreference;->setLayoutResource(I)V

    .line 53
    return-void
.end method

.method private setProgress(IZ)V
    .locals 1
    .parameter "progress"
    .parameter "notifyChanged"

    .prologue
    .line 118
    iget v0, p0, Lcom/oppo/preference/OppoSeekBarPreference;->mMax:I

    if-le p1, v0, :cond_0

    .line 119
    iget p1, p0, Lcom/oppo/preference/OppoSeekBarPreference;->mMax:I

    .line 121
    :cond_0
    if-gez p1, :cond_1

    .line 122
    const/4 p1, 0x0

    .line 124
    :cond_1
    iget v0, p0, Lcom/oppo/preference/OppoSeekBarPreference;->mProgress:I

    if-eq p1, v0, :cond_2

    .line 125
    iput p1, p0, Lcom/oppo/preference/OppoSeekBarPreference;->mProgress:I

    .line 126
    invoke-virtual {p0, p1}, Lcom/oppo/preference/OppoPreference;->persistInt(I)Z

    .line 127
    if-eqz p2, :cond_2

    .line 128
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->notifyChanged()V

    .line 131
    :cond_2
    return-void
.end method


# virtual methods
.method public getProgress()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/oppo/preference/OppoSeekBarPreference;->mProgress:I

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/oppo/preference/OppoPreference;->onBindView(Landroid/view/View;)V

    .line 66
    const v1, 0xc020009

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 67
    .local v0, seekBar:Landroid/widget/SeekBar;
    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 68
    iget v1, p0, Lcom/oppo/preference/OppoSeekBarPreference;->mMax:I

    invoke-virtual {v0, v1}, Landroid/widget/AbsSeekBar;->setMax(I)V

    .line 69
    iget v1, p0, Lcom/oppo/preference/OppoSeekBarPreference;->mProgress:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 70
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 71
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .parameter "a"
    .parameter "index"

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 90
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-eq v1, v0, :cond_2

    .line 91
    const/16 v1, 0x51

    if-eq p2, v1, :cond_0

    const/16 v1, 0x46

    if-ne p2, v1, :cond_1

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/preference/OppoSeekBarPreference;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/oppo/preference/OppoSeekBarPreference;->setProgress(I)V

    .line 100
    :goto_0
    return v0

    .line 95
    :cond_1
    const/16 v1, 0x45

    if-ne p2, v1, :cond_2

    .line 96
    invoke-virtual {p0}, Lcom/oppo/preference/OppoSeekBarPreference;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/oppo/preference/OppoSeekBarPreference;->setProgress(I)V

    goto :goto_0

    .line 100
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 154
    if-eqz p3, :cond_0

    iget-boolean v0, p0, Lcom/oppo/preference/OppoSeekBarPreference;->mTrackingTouch:Z

    if-nez v0, :cond_0

    .line 155
    invoke-virtual {p0, p1}, Lcom/oppo/preference/OppoSeekBarPreference;->syncProgress(Landroid/widget/SeekBar;)V

    .line 157
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 195
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/oppo/preference/OppoSeekBarPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 197
    invoke-super {p0, p1}, Lcom/oppo/preference/OppoPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 207
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 202
    check-cast v0, Lcom/oppo/preference/OppoSeekBarPreference$SavedState;

    .line 203
    .local v0, myState:Lcom/oppo/preference/OppoSeekBarPreference$SavedState;
    invoke-virtual {v0}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/oppo/preference/OppoPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 204
    iget v1, v0, Lcom/oppo/preference/OppoSeekBarPreference$SavedState;->progress:I

    iput v1, p0, Lcom/oppo/preference/OppoSeekBarPreference;->mProgress:I

    .line 205
    iget v1, v0, Lcom/oppo/preference/OppoSeekBarPreference$SavedState;->max:I

    iput v1, p0, Lcom/oppo/preference/OppoSeekBarPreference;->mMax:I

    .line 206
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->notifyChanged()V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 180
    invoke-super {p0}, Lcom/oppo/preference/OppoPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 181
    .local v1, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 190
    .end local v1           #superState:Landroid/os/Parcelable;
    :goto_0
    return-object v1

    .line 187
    .restart local v1       #superState:Landroid/os/Parcelable;
    :cond_0
    new-instance v0, Lcom/oppo/preference/OppoSeekBarPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/oppo/preference/OppoSeekBarPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 188
    .local v0, myState:Lcom/oppo/preference/OppoSeekBarPreference$SavedState;
    iget v2, p0, Lcom/oppo/preference/OppoSeekBarPreference;->mProgress:I

    iput v2, v0, Lcom/oppo/preference/OppoSeekBarPreference$SavedState;->progress:I

    .line 189
    iget v2, p0, Lcom/oppo/preference/OppoSeekBarPreference;->mMax:I

    iput v2, v0, Lcom/oppo/preference/OppoSeekBarPreference$SavedState;->max:I

    move-object v1, v0

    .line 190
    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .parameter "restoreValue"
    .parameter "defaultValue"

    .prologue
    .line 80
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/oppo/preference/OppoSeekBarPreference;->mProgress:I

    invoke-virtual {p0, v0}, Lcom/oppo/preference/OppoPreference;->getPersistedInt(I)I

    move-result v0

    .end local p2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/oppo/preference/OppoSeekBarPreference;->setProgress(I)V

    .line 81
    return-void

    .line 80
    .restart local p2
    :cond_0
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .parameter "seekBar"

    .prologue
    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/preference/OppoSeekBarPreference;->mTrackingTouch:Z

    .line 162
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "seekBar"

    .prologue
    .line 166
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/preference/OppoSeekBarPreference;->mTrackingTouch:Z

    .line 167
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    iget v1, p0, Lcom/oppo/preference/OppoSeekBarPreference;->mProgress:I

    if-eq v0, v1, :cond_0

    .line 168
    invoke-virtual {p0, p1}, Lcom/oppo/preference/OppoSeekBarPreference;->syncProgress(Landroid/widget/SeekBar;)V

    .line 170
    :cond_0
    return-void
.end method

.method public setMax(I)V
    .locals 1
    .parameter "max"

    .prologue
    .line 107
    iget v0, p0, Lcom/oppo/preference/OppoSeekBarPreference;->mMax:I

    if-eq p1, v0, :cond_0

    .line 108
    iput p1, p0, Lcom/oppo/preference/OppoSeekBarPreference;->mMax:I

    .line 109
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->notifyChanged()V

    .line 111
    :cond_0
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 114
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/oppo/preference/OppoSeekBarPreference;->setProgress(IZ)V

    .line 115
    return-void
.end method

.method syncProgress(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "seekBar"

    .prologue
    .line 142
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    .line 143
    .local v0, progress:I
    iget v1, p0, Lcom/oppo/preference/OppoSeekBarPreference;->mProgress:I

    if-eq v0, v1, :cond_0

    .line 144
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oppo/preference/OppoPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 145
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oppo/preference/OppoSeekBarPreference;->setProgress(IZ)V

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    iget v1, p0, Lcom/oppo/preference/OppoSeekBarPreference;->mProgress:I

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0
.end method
