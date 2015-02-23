.class public Lcom/oppo/preference/OppoMultiSelectListPreference;
.super Lcom/oppo/preference/OppoDialogPreference;
.source "OppoMultiSelectListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/preference/OppoMultiSelectListPreference$SavedState;
    }
.end annotation


# instance fields
.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private mNewValues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferenceChanged:Z

.field private mValues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/preference/OppoMultiSelectListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/oppo/preference/OppoDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/oppo/preference/OppoMultiSelectListPreference;->mValues:Ljava/util/Set;

    .line 49
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/oppo/preference/OppoMultiSelectListPreference;->mNewValues:Ljava/util/Set;

    .line 55
    sget-object v1, Landroid/R$styleable;->MultiSelectListPreference:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 57
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/preference/OppoMultiSelectListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 58
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/preference/OppoMultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 59
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 60
    return-void
.end method

.method static synthetic access$076(Lcom/oppo/preference/OppoMultiSelectListPreference;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/oppo/preference/OppoMultiSelectListPreference;->mPreferenceChanged:Z

    or-int/2addr v0, p1

    int-to-byte v0, v0

    iput-boolean v0, p0, Lcom/oppo/preference/OppoMultiSelectListPreference;->mPreferenceChanged:Z

    return v0
.end method

.method static synthetic access$100(Lcom/oppo/preference/OppoMultiSelectListPreference;)[Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/oppo/preference/OppoMultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oppo/preference/OppoMultiSelectListPreference;)Ljava/util/Set;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/oppo/preference/OppoMultiSelectListPreference;->mNewValues:Ljava/util/Set;

    return-object v0
.end method

.method private getSelectedItems()[Z
    .locals 6

    .prologue
    .line 186
    iget-object v0, p0, Lcom/oppo/preference/OppoMultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 187
    .local v0, entries:[Ljava/lang/CharSequence;
    array-length v1, v0

    .line 188
    .local v1, entryCount:I
    iget-object v4, p0, Lcom/oppo/preference/OppoMultiSelectListPreference;->mValues:Ljava/util/Set;

    .line 189
    .local v4, values:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    new-array v3, v1, [Z

    .line 191
    .local v3, result:[Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 192
    aget-object v5, v0, v2

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    aput-boolean v5, v3, v2

    .line 191
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 195
    :cond_0
    return-object v3
.end method


# virtual methods
.method public findIndexOfValue(Ljava/lang/String;)I
    .locals 2
    .parameter "value"

    .prologue
    .line 149
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/oppo/preference/OppoMultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 150
    iget-object v1, p0, Lcom/oppo/preference/OppoMultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 151
    iget-object v1, p0, Lcom/oppo/preference/OppoMultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    .end local v0           #i:I
    :goto_1
    return v0

    .line 150
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 156
    .end local v0           #i:I
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getEntries()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/oppo/preference/OppoMultiSelectListPreference;->mEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getEntryValues()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/oppo/preference/OppoMultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getValues()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Lcom/oppo/preference/OppoMultiSelectListPreference;->mValues:Ljava/util/Set;

    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .locals 2
    .parameter "positiveResult"

    .prologue
    .line 200
    invoke-super {p0, p1}, Lcom/oppo/preference/OppoDialogPreference;->onDialogClosed(Z)V

    .line 202
    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/oppo/preference/OppoMultiSelectListPreference;->mPreferenceChanged:Z

    if-eqz v1, :cond_0

    .line 203
    iget-object v0, p0, Lcom/oppo/preference/OppoMultiSelectListPreference;->mNewValues:Ljava/util/Set;

    .line 204
    .local v0, values:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0, v0}, Lcom/oppo/preference/OppoPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 205
    invoke-virtual {p0, v0}, Lcom/oppo/preference/OppoMultiSelectListPreference;->setValues(Ljava/util/Set;)V

    .line 208
    .end local v0           #values:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/preference/OppoMultiSelectListPreference;->mPreferenceChanged:Z

    .line 209
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 5
    .parameter "a"
    .parameter "index"

    .prologue
    .line 213
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 214
    .local v0, defaultValues:[Ljava/lang/CharSequence;
    array-length v3, v0

    .line 215
    .local v3, valueCount:I
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 217
    .local v2, result:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 218
    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 217
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 221
    :cond_0
    return-object v2
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 3
    .parameter "builder"

    .prologue
    .line 161
    invoke-super {p0, p1}, Lcom/oppo/preference/OppoDialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 163
    iget-object v1, p0, Lcom/oppo/preference/OppoMultiSelectListPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/preference/OppoMultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-nez v1, :cond_1

    .line 164
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "MultiSelectListPreference requires an entries array and an entryValues array."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 169
    :cond_1
    invoke-direct {p0}, Lcom/oppo/preference/OppoMultiSelectListPreference;->getSelectedItems()[Z

    move-result-object v0

    .line 170
    .local v0, checkedItems:[Z
    iget-object v1, p0, Lcom/oppo/preference/OppoMultiSelectListPreference;->mEntries:[Ljava/lang/CharSequence;

    new-instance v2, Lcom/oppo/preference/OppoMultiSelectListPreference$1;

    invoke-direct {v2, p0}, Lcom/oppo/preference/OppoMultiSelectListPreference$1;-><init>(Lcom/oppo/preference/OppoMultiSelectListPreference;)V

    invoke-virtual {p1, v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 181
    iget-object v1, p0, Lcom/oppo/preference/OppoMultiSelectListPreference;->mNewValues:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 182
    iget-object v1, p0, Lcom/oppo/preference/OppoMultiSelectListPreference;->mNewValues:Ljava/util/Set;

    iget-object v2, p0, Lcom/oppo/preference/OppoMultiSelectListPreference;->mValues:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 183
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 231
    invoke-super {p0}, Lcom/oppo/preference/OppoDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 232
    .local v1, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 239
    .end local v1           #superState:Landroid/os/Parcelable;
    :goto_0
    return-object v1

    .line 237
    .restart local v1       #superState:Landroid/os/Parcelable;
    :cond_0
    new-instance v0, Lcom/oppo/preference/OppoMultiSelectListPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/oppo/preference/OppoMultiSelectListPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 238
    .local v0, myState:Lcom/oppo/preference/OppoMultiSelectListPreference$SavedState;
    invoke-virtual {p0}, Lcom/oppo/preference/OppoMultiSelectListPreference;->getValues()Ljava/util/Set;

    move-result-object v2

    iput-object v2, v0, Lcom/oppo/preference/OppoMultiSelectListPreference$SavedState;->values:Ljava/util/Set;

    move-object v1, v0

    .line 239
    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .parameter "restoreValue"
    .parameter "defaultValue"

    .prologue
    .line 226
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/oppo/preference/OppoMultiSelectListPreference;->mValues:Ljava/util/Set;

    invoke-virtual {p0, v0}, Lcom/oppo/preference/OppoPreference;->getPersistedStringSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    .end local p2
    :goto_0
    invoke-virtual {p0, p2}, Lcom/oppo/preference/OppoMultiSelectListPreference;->setValues(Ljava/util/Set;)V

    .line 227
    return-void

    .line 226
    .restart local p2
    :cond_0
    check-cast p2, Ljava/util/Set;

    goto :goto_0
.end method

.method public setEntries(I)V
    .locals 1
    .parameter "entriesResId"

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/preference/OppoMultiSelectListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 85
    return-void
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "entries"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/oppo/preference/OppoMultiSelectListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 77
    return-void
.end method

.method public setEntryValues(I)V
    .locals 1
    .parameter "entryValuesResId"

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/preference/OppoMultiSelectListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 113
    return-void
.end method

.method public setEntryValues([Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "entryValues"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/oppo/preference/OppoMultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 105
    return-void
.end method

.method public setValues(Ljava/util/Set;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p1, values:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/oppo/preference/OppoMultiSelectListPreference;->mValues:Ljava/util/Set;

    .line 132
    invoke-virtual {p0, p1}, Lcom/oppo/preference/OppoPreference;->persistStringSet(Ljava/util/Set;)Z

    .line 133
    return-void
.end method
