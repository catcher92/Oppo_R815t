.class public Lcom/oppo/preference/OppoEditTextPreference;
.super Lcom/oppo/preference/OppoDialogPreference;
.source "OppoEditTextPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/preference/OppoEditTextPreference$SavedState;
    }
.end annotation


# instance fields
.field private mEditText:Lcom/oppo/widget/OppoEditText;

.field private mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/preference/OppoEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 81
    const v0, 0xc01040f

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/preference/OppoEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/preference/OppoDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    new-instance v0, Lcom/oppo/widget/OppoEditText;

    invoke-direct {v0, p1, p2}, Lcom/oppo/widget/OppoEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/oppo/preference/OppoEditTextPreference;->mEditText:Lcom/oppo/widget/OppoEditText;

    .line 69
    iget-object v0, p0, Lcom/oppo/preference/OppoEditTextPreference;->mEditText:Lcom/oppo/widget/OppoEditText;

    const v1, 0x1020003

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 77
    iget-object v0, p0, Lcom/oppo/preference/OppoEditTextPreference;->mEditText:Lcom/oppo/widget/OppoEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 78
    return-void
.end method


# virtual methods
.method public getEditText()Lcom/oppo/widget/OppoEditText;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/oppo/preference/OppoEditTextPreference;->mEditText:Lcom/oppo/widget/OppoEditText;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/oppo/preference/OppoEditTextPreference;->mText:Ljava/lang/String;

    return-object v0
.end method

.method protected needInputMethod()Z
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x1

    return v0
.end method

.method protected onAddEditTextToDialogView(Landroid/view/View;Lcom/oppo/widget/OppoEditText;)V
    .locals 3
    .parameter "dialogView"
    .parameter "editText"

    .prologue
    .line 137
    const v1, 0xc020008

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 138
    .local v0, container:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 139
    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, p2, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 142
    :cond_0
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 117
    invoke-super {p0, p1}, Lcom/oppo/preference/OppoDialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 119
    iget-object v0, p0, Lcom/oppo/preference/OppoEditTextPreference;->mEditText:Lcom/oppo/widget/OppoEditText;

    .line 120
    .local v0, editText:Lcom/oppo/widget/OppoEditText;
    invoke-virtual {p0}, Lcom/oppo/preference/OppoEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 123
    .local v1, oldParent:Landroid/view/ViewParent;
    if-eq v1, p1, :cond_1

    .line 124
    if-eqz v1, :cond_0

    .line 125
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1           #oldParent:Landroid/view/ViewParent;
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 127
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/oppo/preference/OppoEditTextPreference;->onAddEditTextToDialogView(Landroid/view/View;Lcom/oppo/widget/OppoEditText;)V

    .line 129
    :cond_1
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 2
    .parameter "positiveResult"

    .prologue
    .line 146
    invoke-super {p0, p1}, Lcom/oppo/preference/OppoDialogPreference;->onDialogClosed(Z)V

    .line 148
    if-eqz p1, :cond_0

    .line 149
    iget-object v1, p0, Lcom/oppo/preference/OppoEditTextPreference;->mEditText:Lcom/oppo/widget/OppoEditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, value:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/oppo/preference/OppoPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    invoke-virtual {p0, v0}, Lcom/oppo/preference/OppoEditTextPreference;->setText(Ljava/lang/String;)V

    .line 154
    .end local v0           #value:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .parameter "a"
    .parameter "index"

    .prologue
    .line 158
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 202
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/oppo/preference/OppoEditTextPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 204
    :cond_0
    invoke-super {p0, p1}, Lcom/oppo/preference/OppoDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 211
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 208
    check-cast v0, Lcom/oppo/preference/OppoEditTextPreference$SavedState;

    .line 209
    .local v0, myState:Lcom/oppo/preference/OppoEditTextPreference$SavedState;
    invoke-virtual {v0}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/oppo/preference/OppoDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 210
    iget-object v1, v0, Lcom/oppo/preference/OppoEditTextPreference$SavedState;->text:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/oppo/preference/OppoEditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 189
    invoke-super {p0}, Lcom/oppo/preference/OppoDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 190
    .local v1, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 197
    .end local v1           #superState:Landroid/os/Parcelable;
    :goto_0
    return-object v1

    .line 195
    .restart local v1       #superState:Landroid/os/Parcelable;
    :cond_0
    new-instance v0, Lcom/oppo/preference/OppoEditTextPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/oppo/preference/OppoEditTextPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 196
    .local v0, myState:Lcom/oppo/preference/OppoEditTextPreference$SavedState;
    invoke-virtual {p0}, Lcom/oppo/preference/OppoEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/oppo/preference/OppoEditTextPreference$SavedState;->text:Ljava/lang/String;

    move-object v1, v0

    .line 197
    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .parameter "restoreValue"
    .parameter "defaultValue"

    .prologue
    .line 163
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/oppo/preference/OppoEditTextPreference;->mText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/oppo/preference/OppoPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .end local p2
    :goto_0
    invoke-virtual {p0, p2}, Lcom/oppo/preference/OppoEditTextPreference;->setText(Ljava/lang/String;)V

    .line 164
    return-void

    .line 163
    .restart local p2
    :cond_0
    check-cast p2, Ljava/lang/String;

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/oppo/preference/OppoEditTextPreference;->shouldDisableDependents()Z

    move-result v1

    .line 96
    .local v1, wasBlocking:Z
    iput-object p1, p0, Lcom/oppo/preference/OppoEditTextPreference;->mText:Ljava/lang/String;

    .line 98
    invoke-virtual {p0, p1}, Lcom/oppo/preference/OppoPreference;->persistString(Ljava/lang/String;)Z

    .line 100
    invoke-virtual {p0}, Lcom/oppo/preference/OppoEditTextPreference;->shouldDisableDependents()Z

    move-result v0

    .line 101
    .local v0, isBlocking:Z
    if-eq v0, v1, :cond_0

    .line 102
    invoke-virtual {p0, v0}, Lcom/oppo/preference/OppoPreference;->notifyDependencyChange(Z)V

    .line 104
    :cond_0
    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/oppo/preference/OppoEditTextPreference;->mText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

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
