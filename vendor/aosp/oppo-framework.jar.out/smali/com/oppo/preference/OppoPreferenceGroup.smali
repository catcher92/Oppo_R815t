.class public abstract Lcom/oppo/preference/OppoPreferenceGroup;
.super Lcom/oppo/preference/OppoPreference;
.source "OppoPreferenceGroup.java"

# interfaces
.implements Lcom/oppo/preference/OppoGenericInflater$Parent;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oppo/preference/OppoPreference;",
        "Lcom/oppo/preference/OppoGenericInflater$Parent",
        "<",
        "Lcom/oppo/preference/OppoPreference;",
        ">;"
    }
.end annotation


# instance fields
.field private mAttachedToActivity:Z

.field private mCurrentPreferenceOrder:I

.field private mOrderingAsAdded:Z

.field private mPreferenceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/preference/OppoPreference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/preference/OppoPreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/preference/OppoPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oppo/preference/OppoPreferenceGroup;->mOrderingAsAdded:Z

    .line 55
    iput v2, p0, Lcom/oppo/preference/OppoPreferenceGroup;->mCurrentPreferenceOrder:I

    .line 57
    iput-boolean v2, p0, Lcom/oppo/preference/OppoPreferenceGroup;->mAttachedToActivity:Z

    .line 62
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oppo/preference/OppoPreferenceGroup;->mPreferenceList:Ljava/util/List;

    .line 64
    sget-object v1, Landroid/R$styleable;->PreferenceGroup:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 66
    .local v0, a:Landroid/content/res/TypedArray;
    iget-boolean v1, p0, Lcom/oppo/preference/OppoPreferenceGroup;->mOrderingAsAdded:Z

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oppo/preference/OppoPreferenceGroup;->mOrderingAsAdded:Z

    .line 68
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 69
    return-void
.end method

.method private removePreferenceInt(Lcom/oppo/preference/OppoPreference;)Z
    .locals 1
    .parameter "preference"

    .prologue
    .line 188
    monitor-enter p0

    .line 189
    :try_start_0
    invoke-virtual {p1}, Lcom/oppo/preference/OppoPreference;->onPrepareForRemoval()V

    .line 190
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public addItemFromInflater(Lcom/oppo/preference/OppoPreference;)V
    .locals 0
    .parameter "oppoPreference"

    .prologue
    .line 104
    invoke-virtual {p0, p1}, Lcom/oppo/preference/OppoPreferenceGroup;->addPreference(Lcom/oppo/preference/OppoPreference;)Z

    .line 105
    return-void
.end method

.method public bridge synthetic addItemFromInflater(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    check-cast p1, Lcom/oppo/preference/OppoPreference;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/oppo/preference/OppoPreferenceGroup;->addItemFromInflater(Lcom/oppo/preference/OppoPreference;)V

    return-void
.end method

.method public addPreference(Lcom/oppo/preference/OppoPreference;)Z
    .locals 4
    .parameter "preference"

    .prologue
    const/4 v2, 0x1

    .line 134
    iget-object v1, p0, Lcom/oppo/preference/OppoPreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 172
    :goto_0
    return v1

    .line 139
    :cond_0
    invoke-virtual {p1}, Lcom/oppo/preference/OppoPreference;->getOrder()I

    move-result v1

    const v3, 0x7fffffff

    if-ne v1, v3, :cond_2

    .line 140
    iget-boolean v1, p0, Lcom/oppo/preference/OppoPreferenceGroup;->mOrderingAsAdded:Z

    if-eqz v1, :cond_1

    .line 141
    iget v1, p0, Lcom/oppo/preference/OppoPreferenceGroup;->mCurrentPreferenceOrder:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/oppo/preference/OppoPreferenceGroup;->mCurrentPreferenceOrder:I

    invoke-virtual {p1, v1}, Lcom/oppo/preference/OppoPreference;->setOrder(I)V

    .line 144
    :cond_1
    instance-of v1, p1, Lcom/oppo/preference/OppoPreferenceGroup;

    if-eqz v1, :cond_2

    move-object v1, p1

    .line 147
    check-cast v1, Lcom/oppo/preference/OppoPreferenceGroup;

    iget-boolean v3, p0, Lcom/oppo/preference/OppoPreferenceGroup;->mOrderingAsAdded:Z

    invoke-virtual {v1, v3}, Lcom/oppo/preference/OppoPreferenceGroup;->setOrderingAsAdded(Z)V

    .line 151
    :cond_2
    iget-object v1, p0, Lcom/oppo/preference/OppoPreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-static {v1, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 152
    .local v0, insertionIndex:I
    if-gez v0, :cond_3

    .line 153
    mul-int/lit8 v1, v0, -0x1

    add-int/lit8 v0, v1, -0x1

    .line 156
    :cond_3
    invoke-virtual {p0, p1}, Lcom/oppo/preference/OppoPreferenceGroup;->onPrepareAddPreference(Lcom/oppo/preference/OppoPreference;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 157
    const/4 v1, 0x0

    goto :goto_0

    .line 160
    :cond_4
    monitor-enter p0

    .line 161
    :try_start_0
    iget-object v1, p0, Lcom/oppo/preference/OppoPreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 162
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->getPreferenceManager()Lcom/oppo/preference/OppoPreferenceManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/oppo/preference/OppoPreference;->onAttachedToHierarchy(Lcom/oppo/preference/OppoPreferenceManager;)V

    .line 166
    iget-boolean v1, p0, Lcom/oppo/preference/OppoPreferenceGroup;->mAttachedToActivity:Z

    if-eqz v1, :cond_5

    .line 167
    invoke-virtual {p1}, Lcom/oppo/preference/OppoPreference;->onAttachedToActivity()V

    .line 170
    :cond_5
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->notifyHierarchyChanged()V

    move v1, v2

    .line 172
    goto :goto_0

    .line 162
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected dispatchRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "container"

    .prologue
    .line 322
    invoke-super {p0, p1}, Lcom/oppo/preference/OppoPreference;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    .line 325
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 326
    .local v1, preferenceCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 327
    invoke-virtual {p0, v0}, Lcom/oppo/preference/OppoPreferenceGroup;->getPreference(I)Lcom/oppo/preference/OppoPreference;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/oppo/preference/OppoPreference;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    .line 326
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 329
    :cond_0
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "container"

    .prologue
    .line 311
    invoke-super {p0, p1}, Lcom/oppo/preference/OppoPreference;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    .line 314
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 315
    .local v1, preferenceCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 316
    invoke-virtual {p0, v0}, Lcom/oppo/preference/OppoPreferenceGroup;->getPreference(I)Lcom/oppo/preference/OppoPreference;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/oppo/preference/OppoPreference;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    .line 315
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 318
    :cond_0
    return-void
.end method

.method public findPreference(Ljava/lang/CharSequence;)Lcom/oppo/preference/OppoPreference;
    .locals 6
    .parameter "key"

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 255
    .end local p0
    :goto_0
    return-object p0

    .line 237
    .restart local p0
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreferenceGroup;->getPreferenceCount()I

    move-result v3

    .line 238
    .local v3, preferenceCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_3

    .line 239
    invoke-virtual {p0, v1}, Lcom/oppo/preference/OppoPreferenceGroup;->getPreference(I)Lcom/oppo/preference/OppoPreference;

    move-result-object v2

    .line 240
    .local v2, preference:Lcom/oppo/preference/OppoPreference;
    invoke-virtual {v2}, Lcom/oppo/preference/OppoPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, curKey:Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object p0, v2

    .line 243
    goto :goto_0

    .line 246
    :cond_1
    instance-of v5, v2, Lcom/oppo/preference/OppoPreferenceGroup;

    if-eqz v5, :cond_2

    .line 247
    check-cast v2, Lcom/oppo/preference/OppoPreferenceGroup;

    .end local v2           #preference:Lcom/oppo/preference/OppoPreference;
    invoke-virtual {v2, p1}, Lcom/oppo/preference/OppoPreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Lcom/oppo/preference/OppoPreference;

    move-result-object v4

    .line 249
    .local v4, returnedPreference:Lcom/oppo/preference/OppoPreference;
    if-eqz v4, :cond_2

    move-object p0, v4

    .line 250
    goto :goto_0

    .line 238
    .end local v4           #returnedPreference:Lcom/oppo/preference/OppoPreference;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 255
    .end local v0           #curKey:Ljava/lang/String;
    :cond_3
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public getPreference(I)Lcom/oppo/preference/OppoPreference;
    .locals 1
    .parameter "index"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/preference/OppoPreference;

    return-object v0
.end method

.method public getPreferenceCount()I
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected isOnSameScreenAsChildren()Z
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x1

    return v0
.end method

.method public isOrderingAsAdded()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/oppo/preference/OppoPreferenceGroup;->mOrderingAsAdded:Z

    return v0
.end method

.method protected onAttachedToActivity()V
    .locals 3

    .prologue
    .line 271
    invoke-super {p0}, Lcom/oppo/preference/OppoPreference;->onAttachedToActivity()V

    .line 275
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oppo/preference/OppoPreferenceGroup;->mAttachedToActivity:Z

    .line 278
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 279
    .local v1, preferenceCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 280
    invoke-virtual {p0, v0}, Lcom/oppo/preference/OppoPreferenceGroup;->getPreference(I)Lcom/oppo/preference/OppoPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oppo/preference/OppoPreference;->onAttachedToActivity()V

    .line 279
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 282
    :cond_0
    return-void
.end method

.method protected onPrepareAddPreference(Lcom/oppo/preference/OppoPreference;)Z
    .locals 1
    .parameter "preference"

    .prologue
    .line 214
    invoke-super {p0}, Lcom/oppo/preference/OppoPreference;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oppo/preference/OppoPreference;->setEnabled(Z)V

    .line 218
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onPrepareForRemoval()V
    .locals 1

    .prologue
    .line 286
    invoke-super {p0}, Lcom/oppo/preference/OppoPreference;->onPrepareForRemoval()V

    .line 289
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/preference/OppoPreferenceGroup;->mAttachedToActivity:Z

    .line 290
    return-void
.end method

.method public removeAll()V
    .locals 3

    .prologue
    .line 198
    monitor-enter p0

    .line 199
    :try_start_0
    iget-object v1, p0, Lcom/oppo/preference/OppoPreferenceGroup;->mPreferenceList:Ljava/util/List;

    .line 200
    .local v1, preferenceList:Ljava/util/List;,"Ljava/util/List<Lcom/oppo/preference/OppoPreference;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 201
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/preference/OppoPreference;

    invoke-direct {p0, v2}, Lcom/oppo/preference/OppoPreferenceGroup;->removePreferenceInt(Lcom/oppo/preference/OppoPreference;)Z

    .line 200
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 203
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->notifyHierarchyChanged()V

    .line 205
    return-void

    .line 203
    .end local v0           #i:I
    .end local v1           #preferenceList:Ljava/util/List;,"Ljava/util/List<Lcom/oppo/preference/OppoPreference;>;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public removePreference(Lcom/oppo/preference/OppoPreference;)Z
    .locals 1
    .parameter "preference"

    .prologue
    .line 182
    invoke-direct {p0, p1}, Lcom/oppo/preference/OppoPreferenceGroup;->removePreferenceInt(Lcom/oppo/preference/OppoPreference;)Z

    move-result v0

    .line 183
    .local v0, returnValue:Z
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->notifyHierarchyChanged()V

    .line 184
    return v0
.end method

.method public setEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 294
    invoke-super {p0, p1}, Lcom/oppo/preference/OppoPreference;->setEnabled(Z)V

    .line 297
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 298
    .local v1, preferenceCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 299
    invoke-virtual {p0, v0}, Lcom/oppo/preference/OppoPreferenceGroup;->getPreference(I)Lcom/oppo/preference/OppoPreference;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/oppo/preference/OppoPreference;->setEnabled(Z)V

    .line 298
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 301
    :cond_0
    return-void
.end method

.method public setOrderingAsAdded(Z)V
    .locals 0
    .parameter "orderingAsAdded"

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/oppo/preference/OppoPreferenceGroup;->mOrderingAsAdded:Z

    .line 88
    return-void
.end method

.method sortPreferences()V
    .locals 1

    .prologue
    .line 304
    monitor-enter p0

    .line 305
    :try_start_0
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 306
    monitor-exit p0

    .line 307
    return-void

    .line 306
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
