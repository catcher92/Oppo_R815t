.class public Lcom/oppo/preference/OppoYesNoPreference;
.super Lcom/oppo/preference/OppoDialogPreference;
.source "OppoYesNoPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/preference/OppoYesNoPreference$SavedState;
    }
.end annotation


# instance fields
.field private mWasPositiveResult:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/preference/OppoYesNoPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 46
    const v0, 0xc01040d

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/preference/OppoYesNoPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/preference/OppoDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method


# virtual methods
.method public getValue()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/oppo/preference/OppoYesNoPreference;->mWasPositiveResult:Z

    return v0
.end method

.method protected onDialogClosed(Z)V
    .locals 1
    .parameter "positiveResult"

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/oppo/preference/OppoDialogPreference;->onDialogClosed(Z)V

    .line 57
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/preference/OppoPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p0, p1}, Lcom/oppo/preference/OppoYesNoPreference;->setValue(Z)V

    .line 60
    :cond_0
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .parameter "a"
    .parameter "index"

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 115
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/oppo/preference/OppoYesNoPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 117
    invoke-super {p0, p1}, Lcom/oppo/preference/OppoDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 124
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 121
    check-cast v0, Lcom/oppo/preference/OppoYesNoPreference$SavedState;

    .line 122
    .local v0, myState:Lcom/oppo/preference/OppoYesNoPreference$SavedState;
    invoke-virtual {v0}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/oppo/preference/OppoDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 123
    iget-boolean v1, v0, Lcom/oppo/preference/OppoYesNoPreference$SavedState;->wasPositiveResult:Z

    invoke-virtual {p0, v1}, Lcom/oppo/preference/OppoYesNoPreference;->setValue(Z)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 102
    invoke-super {p0}, Lcom/oppo/preference/OppoDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 103
    .local v1, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    .end local v1           #superState:Landroid/os/Parcelable;
    :goto_0
    return-object v1

    .line 108
    .restart local v1       #superState:Landroid/os/Parcelable;
    :cond_0
    new-instance v0, Lcom/oppo/preference/OppoYesNoPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/oppo/preference/OppoYesNoPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 109
    .local v0, myState:Lcom/oppo/preference/OppoYesNoPreference$SavedState;
    invoke-virtual {p0}, Lcom/oppo/preference/OppoYesNoPreference;->getValue()Z

    move-result v2

    iput-boolean v2, v0, Lcom/oppo/preference/OppoYesNoPreference$SavedState;->wasPositiveResult:Z

    move-object v1, v0

    .line 110
    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .parameter "restorePersistedValue"
    .parameter "defaultValue"

    .prologue
    .line 91
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/oppo/preference/OppoYesNoPreference;->mWasPositiveResult:Z

    invoke-virtual {p0, v0}, Lcom/oppo/preference/OppoPreference;->getPersistedBoolean(Z)Z

    move-result v0

    .end local p2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/oppo/preference/OppoYesNoPreference;->setValue(Z)V

    .line 93
    return-void

    .line 91
    .restart local p2
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public setValue(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/oppo/preference/OppoYesNoPreference;->mWasPositiveResult:Z

    .line 70
    invoke-virtual {p0, p1}, Lcom/oppo/preference/OppoPreference;->persistBoolean(Z)Z

    .line 72
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/oppo/preference/OppoPreference;->notifyDependencyChange(Z)V

    .line 73
    return-void

    .line 72
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldDisableDependents()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/oppo/preference/OppoYesNoPreference;->mWasPositiveResult:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/oppo/preference/OppoPreference;->shouldDisableDependents()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
