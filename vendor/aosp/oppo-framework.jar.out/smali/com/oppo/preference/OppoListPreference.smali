.class public Lcom/oppo/preference/OppoListPreference;
.super Lcom/oppo/preference/OppoDialogPreference;
.source "OppoListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/preference/OppoListPreference$SavedState;
    }
.end annotation


# instance fields
.field private mClickedDialogEntryIndex:I

.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private mSummary:Ljava/lang/String;

.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/preference/OppoListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/oppo/preference/OppoDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    sget-object v1, Landroid/R$styleable;->ListPreference:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 53
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/preference/OppoListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 54
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/preference/OppoListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 55
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 60
    sget-object v1, Landroid/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 61
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/preference/OppoListPreference;->mSummary:Ljava/lang/String;

    .line 62
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 63
    return-void
.end method

.method static synthetic access$002(Lcom/oppo/preference/OppoListPreference;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput p1, p0, Lcom/oppo/preference/OppoListPreference;->mClickedDialogEntryIndex:I

    return p1
.end method

.method private getValueIndex()I
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/oppo/preference/OppoListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/oppo/preference/OppoListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public findIndexOfValue(Ljava/lang/String;)I
    .locals 2
    .parameter "value"

    .prologue
    .line 209
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/oppo/preference/OppoListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 210
    iget-object v1, p0, Lcom/oppo/preference/OppoListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 211
    iget-object v1, p0, Lcom/oppo/preference/OppoListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    .end local v0           #i:I
    :goto_1
    return v0

    .line 210
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 216
    .end local v0           #i:I
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getEntries()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/oppo/preference/OppoListPreference;->mEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getEntry()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 198
    invoke-direct {p0}, Lcom/oppo/preference/OppoListPreference;->getValueIndex()I

    move-result v0

    .line 199
    .local v0, index:I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/oppo/preference/OppoListPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/preference/OppoListPreference;->mEntries:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEntryValues()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/oppo/preference/OppoListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/oppo/preference/OppoListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    .line 148
    .local v0, entry:Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/oppo/preference/OppoListPreference;->mSummary:Ljava/lang/String;

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 149
    :cond_0
    invoke-super {p0}, Lcom/oppo/preference/OppoPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    .line 151
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/oppo/preference/OppoListPreference;->mSummary:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/oppo/preference/OppoListPreference;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .locals 3
    .parameter "positiveResult"

    .prologue
    .line 258
    invoke-super {p0, p1}, Lcom/oppo/preference/OppoDialogPreference;->onDialogClosed(Z)V

    .line 260
    if-eqz p1, :cond_0

    iget v1, p0, Lcom/oppo/preference/OppoListPreference;->mClickedDialogEntryIndex:I

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/preference/OppoListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 261
    iget-object v1, p0, Lcom/oppo/preference/OppoListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    iget v2, p0, Lcom/oppo/preference/OppoListPreference;->mClickedDialogEntryIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, value:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/oppo/preference/OppoPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 263
    invoke-virtual {p0, v0}, Lcom/oppo/preference/OppoListPreference;->setValue(Ljava/lang/String;)V

    .line 266
    .end local v0           #value:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .parameter "a"
    .parameter "index"

    .prologue
    .line 270
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 4
    .parameter "builder"

    .prologue
    const/4 v3, 0x0

    .line 225
    invoke-super {p0, p1}, Lcom/oppo/preference/OppoDialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 227
    iget-object v0, p0, Lcom/oppo/preference/OppoListPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/preference/OppoListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    .line 228
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ListPreference requires an entries array and an entryValues array."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_1
    invoke-direct {p0}, Lcom/oppo/preference/OppoListPreference;->getValueIndex()I

    move-result v0

    iput v0, p0, Lcom/oppo/preference/OppoListPreference;->mClickedDialogEntryIndex:I

    .line 233
    iget-object v0, p0, Lcom/oppo/preference/OppoListPreference;->mEntries:[Ljava/lang/CharSequence;

    iget v1, p0, Lcom/oppo/preference/OppoListPreference;->mClickedDialogEntryIndex:I

    new-instance v2, Lcom/oppo/preference/OppoListPreference$1;

    invoke-direct {v2, p0}, Lcom/oppo/preference/OppoListPreference$1;-><init>(Lcom/oppo/preference/OppoListPreference;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 253
    invoke-virtual {p1, v3, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 254
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 293
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/oppo/preference/OppoListPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 295
    :cond_0
    invoke-super {p0, p1}, Lcom/oppo/preference/OppoDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 302
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 299
    check-cast v0, Lcom/oppo/preference/OppoListPreference$SavedState;

    .line 300
    .local v0, myState:Lcom/oppo/preference/OppoListPreference$SavedState;
    invoke-virtual {v0}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/oppo/preference/OppoDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 301
    iget-object v1, v0, Lcom/oppo/preference/OppoListPreference$SavedState;->value:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/oppo/preference/OppoListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 280
    invoke-super {p0}, Lcom/oppo/preference/OppoDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 281
    .local v1, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 288
    .end local v1           #superState:Landroid/os/Parcelable;
    :goto_0
    return-object v1

    .line 286
    .restart local v1       #superState:Landroid/os/Parcelable;
    :cond_0
    new-instance v0, Lcom/oppo/preference/OppoListPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/oppo/preference/OppoListPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 287
    .local v0, myState:Lcom/oppo/preference/OppoListPreference$SavedState;
    invoke-virtual {p0}, Lcom/oppo/preference/OppoListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/oppo/preference/OppoListPreference$SavedState;->value:Ljava/lang/String;

    move-object v1, v0

    .line 288
    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .parameter "restoreValue"
    .parameter "defaultValue"

    .prologue
    .line 275
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/oppo/preference/OppoListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/oppo/preference/OppoPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .end local p2
    :goto_0
    invoke-virtual {p0, p2}, Lcom/oppo/preference/OppoListPreference;->setValue(Ljava/lang/String;)V

    .line 276
    return-void

    .line 275
    .restart local p2
    :cond_0
    check-cast p2, Ljava/lang/String;

    goto :goto_0
.end method

.method public setEntries(I)V
    .locals 1
    .parameter "entriesResId"

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/preference/OppoListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 88
    return-void
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "entries"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/oppo/preference/OppoListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 80
    return-void
.end method

.method public setEntryValues(I)V
    .locals 1
    .parameter "entryValuesResId"

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/preference/OppoListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 116
    return-void
.end method

.method public setEntryValues([Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "entryValues"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/oppo/preference/OppoListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 108
    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "summary"

    .prologue
    .line 164
    invoke-super {p0, p1}, Lcom/oppo/preference/OppoPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 165
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/oppo/preference/OppoListPreference;->mSummary:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/preference/OppoListPreference;->mSummary:Ljava/lang/String;

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/oppo/preference/OppoListPreference;->mSummary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/preference/OppoListPreference;->mSummary:Ljava/lang/String;

    goto :goto_0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/oppo/preference/OppoListPreference;->mValue:Ljava/lang/String;

    .line 135
    invoke-virtual {p0, p1}, Lcom/oppo/preference/OppoPreference;->persistString(Ljava/lang/String;)Z

    .line 136
    return-void
.end method

.method public setValueIndex(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/oppo/preference/OppoListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/oppo/preference/OppoListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/preference/OppoListPreference;->setValue(Ljava/lang/String;)V

    .line 181
    :cond_0
    return-void
.end method
