.class public abstract Lcom/oppo/preference/OppoTwoStatePreference;
.super Lcom/oppo/preference/OppoPreference;
.source "OppoTwoStatePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/preference/OppoTwoStatePreference$SavedState;
    }
.end annotation


# instance fields
.field mChecked:Z

.field private mDisableDependentsState:Z

.field private mSendClickAccessibilityEvent:Z

.field private mSummaryOff:Ljava/lang/CharSequence;

.field private mSummaryOn:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/preference/OppoTwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/preference/OppoTwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/preference/OppoPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method


# virtual methods
.method public getDisableDependentsState()Z
    .locals 1

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/oppo/preference/OppoTwoStatePreference;->mDisableDependentsState:Z

    return v0
.end method

.method public getSummaryOff()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/oppo/preference/OppoTwoStatePreference;->mSummaryOff:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSummaryOn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/oppo/preference/OppoTwoStatePreference;->mSummaryOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/oppo/preference/OppoTwoStatePreference;->mChecked:Z

    return v0
.end method

.method protected onClick()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 61
    invoke-super {p0}, Lcom/oppo/preference/OppoPreference;->onClick()V

    .line 63
    invoke-virtual {p0}, Lcom/oppo/preference/OppoTwoStatePreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 65
    .local v0, newValue:Z
    :goto_0
    iput-boolean v1, p0, Lcom/oppo/preference/OppoTwoStatePreference;->mSendClickAccessibilityEvent:Z

    .line 67
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oppo/preference/OppoPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 72
    :goto_1
    return-void

    .line 63
    .end local v0           #newValue:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 71
    .restart local v0       #newValue:Z
    :cond_1
    invoke-virtual {p0, v0}, Lcom/oppo/preference/OppoTwoStatePreference;->setChecked(Z)V

    goto :goto_1
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .parameter "a"
    .parameter "index"

    .prologue
    .line 184
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
    .line 259
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/oppo/preference/OppoTwoStatePreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 261
    :cond_0
    invoke-super {p0, p1}, Lcom/oppo/preference/OppoPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 268
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 265
    check-cast v0, Lcom/oppo/preference/OppoTwoStatePreference$SavedState;

    .line 266
    .local v0, myState:Lcom/oppo/preference/OppoTwoStatePreference$SavedState;
    invoke-virtual {v0}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/oppo/preference/OppoPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 267
    iget-boolean v1, v0, Lcom/oppo/preference/OppoTwoStatePreference$SavedState;->checked:Z

    invoke-virtual {p0, v1}, Lcom/oppo/preference/OppoTwoStatePreference;->setChecked(Z)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 246
    invoke-super {p0}, Lcom/oppo/preference/OppoPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 247
    .local v1, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 254
    .end local v1           #superState:Landroid/os/Parcelable;
    :goto_0
    return-object v1

    .line 252
    .restart local v1       #superState:Landroid/os/Parcelable;
    :cond_0
    new-instance v0, Lcom/oppo/preference/OppoTwoStatePreference$SavedState;

    invoke-direct {v0, v1}, Lcom/oppo/preference/OppoTwoStatePreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 253
    .local v0, myState:Lcom/oppo/preference/OppoTwoStatePreference$SavedState;
    invoke-virtual {p0}, Lcom/oppo/preference/OppoTwoStatePreference;->isChecked()Z

    move-result v2

    iput-boolean v2, v0, Lcom/oppo/preference/OppoTwoStatePreference$SavedState;->checked:Z

    move-object v1, v0

    .line 254
    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .parameter "restoreValue"
    .parameter "defaultValue"

    .prologue
    .line 189
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/oppo/preference/OppoTwoStatePreference;->mChecked:Z

    invoke-virtual {p0, v0}, Lcom/oppo/preference/OppoPreference;->getPersistedBoolean(Z)Z

    move-result v0

    .end local p2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/oppo/preference/OppoTwoStatePreference;->setChecked(Z)V

    .line 190
    return-void

    .line 189
    .restart local p2
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method sendAccessibilityEvent(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 197
    .local v0, accessibilityManager:Landroid/view/accessibility/AccessibilityManager;
    iget-boolean v2, p0, Lcom/oppo/preference/OppoTwoStatePreference;->mSendClickAccessibilityEvent:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 198
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 199
    .local v1, event:Landroid/view/accessibility/AccessibilityEvent;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 200
    invoke-virtual {p1, v1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 201
    invoke-virtual {p1, v1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 202
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 204
    .end local v1           #event:Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/oppo/preference/OppoTwoStatePreference;->mSendClickAccessibilityEvent:Z

    .line 205
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/oppo/preference/OppoTwoStatePreference;->mChecked:Z

    if-eq v0, p1, :cond_0

    .line 81
    iput-boolean p1, p0, Lcom/oppo/preference/OppoTwoStatePreference;->mChecked:Z

    .line 82
    invoke-virtual {p0, p1}, Lcom/oppo/preference/OppoPreference;->persistBoolean(Z)Z

    .line 83
    invoke-virtual {p0}, Lcom/oppo/preference/OppoTwoStatePreference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/preference/OppoPreference;->notifyDependencyChange(Z)V

    .line 84
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->notifyChanged()V

    .line 86
    :cond_0
    return-void
.end method

.method public setDisableDependentsState(Z)V
    .locals 0
    .parameter "disableDependentsState"

    .prologue
    .line 179
    iput-boolean p1, p0, Lcom/oppo/preference/OppoTwoStatePreference;->mDisableDependentsState:Z

    .line 180
    return-void
.end method

.method public setSummaryOff(I)V
    .locals 1
    .parameter "summaryResId"

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/preference/OppoTwoStatePreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 150
    return-void
.end method

.method public setSummaryOff(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "summary"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/oppo/preference/OppoTwoStatePreference;->mSummaryOff:Ljava/lang/CharSequence;

    .line 139
    invoke-virtual {p0}, Lcom/oppo/preference/OppoTwoStatePreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->notifyChanged()V

    .line 142
    :cond_0
    return-void
.end method

.method public setSummaryOn(I)V
    .locals 1
    .parameter "summaryResId"

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/preference/OppoTwoStatePreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 121
    return-void
.end method

.method public setSummaryOn(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "summary"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/oppo/preference/OppoTwoStatePreference;->mSummaryOn:Ljava/lang/CharSequence;

    .line 110
    invoke-virtual {p0}, Lcom/oppo/preference/OppoTwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->notifyChanged()V

    .line 113
    :cond_0
    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 99
    iget-boolean v3, p0, Lcom/oppo/preference/OppoTwoStatePreference;->mDisableDependentsState:Z

    if-eqz v3, :cond_2

    iget-boolean v0, p0, Lcom/oppo/preference/OppoTwoStatePreference;->mChecked:Z

    .line 100
    .local v0, shouldDisable:Z
    :goto_0
    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/oppo/preference/OppoPreference;->shouldDisableDependents()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1

    .line 99
    .end local v0           #shouldDisable:Z
    :cond_2
    iget-boolean v3, p0, Lcom/oppo/preference/OppoTwoStatePreference;->mChecked:Z

    if-nez v3, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method syncSummaryView(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 214
    const v4, 0xc020007

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 215
    .local v2, summaryView:Landroid/widget/TextView;
    if-eqz v2, :cond_3

    .line 216
    const/4 v3, 0x1

    .line 217
    .local v3, useDefaultSummary:Z
    iget-boolean v4, p0, Lcom/oppo/preference/OppoTwoStatePreference;->mChecked:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/oppo/preference/OppoTwoStatePreference;->mSummaryOn:Ljava/lang/CharSequence;

    if-eqz v4, :cond_4

    .line 218
    iget-object v4, p0, Lcom/oppo/preference/OppoTwoStatePreference;->mSummaryOn:Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    const/4 v3, 0x0

    .line 225
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 226
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    .line 227
    .local v1, summary:Ljava/lang/CharSequence;
    if-eqz v1, :cond_1

    .line 228
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    const/4 v3, 0x0

    .line 233
    .end local v1           #summary:Ljava/lang/CharSequence;
    :cond_1
    const/16 v0, 0x8

    .line 234
    .local v0, newVisibility:I
    if-nez v3, :cond_2

    .line 236
    const/4 v0, 0x0

    .line 238
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v0, v4, :cond_3

    .line 239
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 242
    .end local v0           #newVisibility:I
    .end local v3           #useDefaultSummary:Z
    :cond_3
    return-void

    .line 220
    .restart local v3       #useDefaultSummary:Z
    :cond_4
    iget-boolean v4, p0, Lcom/oppo/preference/OppoTwoStatePreference;->mChecked:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/oppo/preference/OppoTwoStatePreference;->mSummaryOff:Ljava/lang/CharSequence;

    if-eqz v4, :cond_0

    .line 221
    iget-object v4, p0, Lcom/oppo/preference/OppoTwoStatePreference;->mSummaryOff:Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    const/4 v3, 0x0

    goto :goto_0
.end method
