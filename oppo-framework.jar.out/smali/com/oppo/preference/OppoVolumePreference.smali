.class public Lcom/oppo/preference/OppoVolumePreference;
.super Lcom/oppo/preference/OppoSeekBarDialogPreference;
.source "OppoVolumePreference.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Lcom/oppo/preference/OppoPreferenceManager$OnActivityStopListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;,
        Lcom/oppo/preference/OppoVolumePreference$SavedState;,
        Lcom/oppo/preference/OppoVolumePreference$VolumeStore;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OppoVolumePreference"


# instance fields
.field private mSeekBarVolumizer:Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;

.field private mStreamType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/oppo/preference/OppoSeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    sget-object v1, Landroid/R$styleable;->VolumePreference:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 65
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/oppo/preference/OppoVolumePreference;->mStreamType:I

    .line 66
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 67
    return-void
.end method

.method private cleanup()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 136
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->getPreferenceManager()Lcom/oppo/preference/OppoPreferenceManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/oppo/preference/OppoPreferenceManager;->unregisterOnActivityStopListener(Lcom/oppo/preference/OppoPreferenceManager$OnActivityStopListener;)V

    .line 138
    iget-object v2, p0, Lcom/oppo/preference/OppoVolumePreference;->mSeekBarVolumizer:Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;

    if-eqz v2, :cond_2

    .line 139
    invoke-virtual {p0}, Lcom/oppo/preference/OppoDialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 140
    .local v0, dialog:Landroid/app/Dialog;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 141
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const v3, 0xc020009

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 142
    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 143
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 145
    :cond_0
    iget-object v2, p0, Lcom/oppo/preference/OppoVolumePreference;->mSeekBarVolumizer:Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;

    invoke-virtual {v2}, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->revertVolume()V

    .line 147
    .end local v1           #view:Landroid/view/View;
    :cond_1
    iget-object v2, p0, Lcom/oppo/preference/OppoVolumePreference;->mSeekBarVolumizer:Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;

    invoke-virtual {v2}, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->stop()V

    .line 148
    iput-object v4, p0, Lcom/oppo/preference/OppoVolumePreference;->mSeekBarVolumizer:Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;

    .line 151
    .end local v0           #dialog:Landroid/app/Dialog;
    :cond_2
    return-void
.end method


# virtual methods
.method public onActivityStop()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/oppo/preference/OppoVolumePreference;->mSeekBarVolumizer:Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/oppo/preference/OppoVolumePreference;->mSeekBarVolumizer:Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;

    invoke-virtual {v0}, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->stopSample()V

    .line 130
    :cond_0
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/oppo/preference/OppoSeekBarDialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 77
    const v1, 0xc020009

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 78
    .local v0, seekBar:Landroid/widget/SeekBar;
    new-instance v1, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;

    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/oppo/preference/OppoVolumePreference;->mStreamType:I

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;-><init>(Lcom/oppo/preference/OppoVolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;I)V

    iput-object v1, p0, Lcom/oppo/preference/OppoVolumePreference;->mSeekBarVolumizer:Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;

    .line 80
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->getPreferenceManager()Lcom/oppo/preference/OppoPreferenceManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/oppo/preference/OppoPreferenceManager;->registerOnActivityStopListener(Lcom/oppo/preference/OppoPreferenceManager$OnActivityStopListener;)V

    .line 84
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 85
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 86
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 87
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 1
    .parameter "positiveResult"

    .prologue
    .line 117
    invoke-super {p0, p1}, Lcom/oppo/preference/OppoDialogPreference;->onDialogClosed(Z)V

    .line 119
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/oppo/preference/OppoVolumePreference;->mSeekBarVolumizer:Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/oppo/preference/OppoVolumePreference;->mSeekBarVolumizer:Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;

    invoke-virtual {v0}, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->revertVolume()V

    .line 123
    :cond_0
    invoke-direct {p0}, Lcom/oppo/preference/OppoVolumePreference;->cleanup()V

    .line 124
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 91
    iget-object v3, p0, Lcom/oppo/preference/OppoVolumePreference;->mSeekBarVolumizer:Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;

    if-nez v3, :cond_1

    .line 111
    :cond_0
    :goto_0
    return v1

    .line 93
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2

    move v0, v1

    .line 94
    .local v0, isdown:Z
    :goto_1
    sparse-switch p2, :sswitch_data_0

    move v1, v2

    .line 111
    goto :goto_0

    .end local v0           #isdown:Z
    :cond_2
    move v0, v2

    .line 93
    goto :goto_1

    .line 96
    .restart local v0       #isdown:Z
    :sswitch_0
    if-eqz v0, :cond_0

    .line 97
    iget-object v2, p0, Lcom/oppo/preference/OppoVolumePreference;->mSeekBarVolumizer:Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->changeVolumeBy(I)V

    goto :goto_0

    .line 101
    :sswitch_1
    if-eqz v0, :cond_0

    .line 102
    iget-object v2, p0, Lcom/oppo/preference/OppoVolumePreference;->mSeekBarVolumizer:Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;

    invoke-virtual {v2, v1}, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->changeVolumeBy(I)V

    goto :goto_0

    .line 106
    :sswitch_2
    if-eqz v0, :cond_0

    .line 107
    iget-object v2, p0, Lcom/oppo/preference/OppoVolumePreference;->mSeekBarVolumizer:Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;

    invoke-virtual {v2}, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->muteVolume()V

    goto :goto_0

    .line 94
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_1
        0x19 -> :sswitch_0
        0xa4 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 176
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/oppo/preference/OppoVolumePreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 178
    :cond_0
    invoke-super {p0, p1}, Lcom/oppo/preference/OppoDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 187
    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object v0, p1

    .line 182
    check-cast v0, Lcom/oppo/preference/OppoVolumePreference$SavedState;

    .line 183
    .local v0, myState:Lcom/oppo/preference/OppoVolumePreference$SavedState;
    invoke-virtual {v0}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/oppo/preference/OppoDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 184
    iget-object v1, p0, Lcom/oppo/preference/OppoVolumePreference;->mSeekBarVolumizer:Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;

    if-eqz v1, :cond_1

    .line 185
    iget-object v1, p0, Lcom/oppo/preference/OppoVolumePreference;->mSeekBarVolumizer:Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;

    invoke-virtual {v0}, Lcom/oppo/preference/OppoVolumePreference$SavedState;->getVolumeStore()Lcom/oppo/preference/OppoVolumePreference$VolumeStore;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->onRestoreInstanceState(Lcom/oppo/preference/OppoVolumePreference$VolumeStore;)V

    goto :goto_0
.end method

.method protected onSampleStarting(Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;)V
    .locals 1
    .parameter "volumizer"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/oppo/preference/OppoVolumePreference;->mSeekBarVolumizer:Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/preference/OppoVolumePreference;->mSeekBarVolumizer:Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;

    if-eq p1, v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/oppo/preference/OppoVolumePreference;->mSeekBarVolumizer:Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;

    invoke-virtual {v0}, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->stopSample()V

    .line 157
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 161
    invoke-super {p0}, Lcom/oppo/preference/OppoDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 162
    .local v1, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 171
    .end local v1           #superState:Landroid/os/Parcelable;
    :goto_0
    return-object v1

    .line 167
    .restart local v1       #superState:Landroid/os/Parcelable;
    :cond_0
    new-instance v0, Lcom/oppo/preference/OppoVolumePreference$SavedState;

    invoke-direct {v0, v1}, Lcom/oppo/preference/OppoVolumePreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 168
    .local v0, myState:Lcom/oppo/preference/OppoVolumePreference$SavedState;
    iget-object v2, p0, Lcom/oppo/preference/OppoVolumePreference;->mSeekBarVolumizer:Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;

    if-eqz v2, :cond_1

    .line 169
    iget-object v2, p0, Lcom/oppo/preference/OppoVolumePreference;->mSeekBarVolumizer:Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;

    invoke-virtual {v0}, Lcom/oppo/preference/OppoVolumePreference$SavedState;->getVolumeStore()Lcom/oppo/preference/OppoVolumePreference$VolumeStore;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->onSaveInstanceState(Lcom/oppo/preference/OppoVolumePreference$VolumeStore;)V

    :cond_1
    move-object v1, v0

    .line 171
    goto :goto_0
.end method

.method public setStreamType(I)V
    .locals 0
    .parameter "streamType"

    .prologue
    .line 70
    iput p1, p0, Lcom/oppo/preference/OppoVolumePreference;->mStreamType:I

    .line 71
    return-void
.end method
