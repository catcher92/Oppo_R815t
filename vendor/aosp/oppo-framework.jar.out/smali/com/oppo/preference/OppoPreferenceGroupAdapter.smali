.class Lcom/oppo/preference/OppoPreferenceGroupAdapter;
.super Landroid/widget/BaseAdapter;
.source "OppoPreferenceGroupAdapter.java"

# interfaces
.implements Lcom/oppo/preference/OppoPreference$OnPreferenceChangeInternalListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/preference/OppoPreferenceGroupAdapter$PreferenceLayout;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OppoPreferenceGroupAdapter"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHasReturnedViewTypeCount:Z

.field private volatile mIsSyncing:Z

.field private mPreferenceGroup:Lcom/oppo/preference/OppoPreferenceGroup;

.field private mPreferenceLayouts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oppo/preference/OppoPreferenceGroupAdapter$PreferenceLayout;",
            ">;"
        }
    .end annotation
.end field

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

.field private mPreferenceListItems:[Landroid/view/View;

.field private mSyncRunnable:Ljava/lang/Runnable;

.field private mTempPreferenceLayout:Lcom/oppo/preference/OppoPreferenceGroupAdapter$PreferenceLayout;

.field private nPreferenceListCount:I


# direct methods
.method public constructor <init>(Lcom/oppo/preference/OppoPreferenceGroup;)V
    .locals 3
    .parameter "preferenceGroup"

    .prologue
    const/4 v2, 0x0

    .line 131
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 83
    new-instance v0, Lcom/oppo/preference/OppoPreferenceGroupAdapter$PreferenceLayout;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oppo/preference/OppoPreferenceGroupAdapter$PreferenceLayout;-><init>(Lcom/oppo/preference/OppoPreferenceGroupAdapter$1;)V

    iput-object v0, p0, Lcom/oppo/preference/OppoPreferenceGroupAdapter;->mTempPreferenceLayout:Lcom/oppo/preference/OppoPreferenceGroupAdapter$PreferenceLayout;

    .line 88
    iput-boolean v2, p0, Lcom/oppo/preference/OppoPreferenceGroupAdapter;->mHasReturnedViewTypeCount:Z

    .line 90
    iput-boolean v2, p0, Lcom/oppo/preference/OppoPreferenceGroupAdapter;->mIsSyncing:Z

    .line 92
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oppo/preference/OppoPreferenceGroupAdapter;->mHandler:Landroid/os/Handler;

    .line 94
    new-instance v0, Lcom/oppo/preference/OppoPreferenceGroupAdapter$1;

    invoke-direct {v0, p0}, Lcom/oppo/preference/OppoPreferenceGroupAdapter$1;-><init>(Lcom/oppo/preference/OppoPreferenceGroupAdapter;)V

    iput-object v0, p0, Lcom/oppo/preference/OppoPreferenceGroupAdapter;->mSyncRunnable:Ljava/lang/Runnable;

    .line 104
    iput v2, p0, Lcom/oppo/preference/OppoPreferenceGroupAdapter;->nPreferenceListCount:I

    .line 132
    iput-object p1, p0, Lcom/oppo/preference/OppoPreferenceGroupAdapter;->mPreferenceGroup:Lcom/oppo/preference/OppoPreferenceGroup;

    .line 134
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceGroupAdapter;->mPreferenceGroup:Lcom/oppo/preference/OppoPreferenceGroup;

    invoke-virtual {v0, p0}, Lcom/oppo/preference/OppoPreference;->setOnPreferenceChangeInternalListener(Lcom/oppo/preference/OppoPreference$OnPreferenceChangeInternalListener;)V

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/preference/OppoPreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/preference/OppoPreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/ArrayList;

    .line 139
    invoke-direct {p0}, Lcom/oppo/preference/OppoPreferenceGroupAdapter;->syncMyPreferences()V

    .line 140
    return-void
.end method

.method static synthetic access$100(Lcom/oppo/preference/OppoPreferenceGroupAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/oppo/preference/OppoPreferenceGroupAdapter;->syncMyPreferences()V

    return-void
.end method

.method private addPreferenceClassName(Lcom/oppo/preference/OppoPreference;)V
    .locals 3
    .parameter "preference"

    .prologue
    .line 203
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/oppo/preference/OppoPreferenceGroupAdapter;->createPreferenceLayout(Lcom/oppo/preference/OppoPreference;Lcom/oppo/preference/OppoPreferenceGroupAdapter$PreferenceLayout;)Lcom/oppo/preference/OppoPreferenceGroupAdapter$PreferenceLayout;

    move-result-object v1

    .line 204
    .local v1, pl:Lcom/oppo/preference/OppoPreferenceGroupAdapter$PreferenceLayout;
    iget-object v2, p0, Lcom/oppo/preference/OppoPreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/ArrayList;

    invoke-static {v2, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 207
    .local v0, insertPos:I
    if-gez v0, :cond_0

    .line 209
    mul-int/lit8 v2, v0, -0x1

    add-int/lit8 v0, v2, -0x1

    .line 210
    iget-object v2, p0, Lcom/oppo/preference/OppoPreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 212
    :cond_0
    return-void
.end method

.method private createPreferenceLayout(Lcom/oppo/preference/OppoPreference;Lcom/oppo/preference/OppoPreferenceGroupAdapter$PreferenceLayout;)Lcom/oppo/preference/OppoPreferenceGroupAdapter$PreferenceLayout;
    .locals 2
    .parameter "preference"
    .parameter "in"

    .prologue
    .line 195
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 196
    .local v0, pl:Lcom/oppo/preference/OppoPreferenceGroupAdapter$PreferenceLayout;
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/oppo/preference/OppoPreferenceGroupAdapter$PreferenceLayout;->name:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/oppo/preference/OppoPreferenceGroupAdapter$PreferenceLayout;->access$202(Lcom/oppo/preference/OppoPreferenceGroupAdapter$PreferenceLayout;Ljava/lang/String;)Ljava/lang/String;

    .line 197
    invoke-virtual {p1}, Lcom/oppo/preference/OppoPreference;->getLayoutResource()I

    move-result v1

    #setter for: Lcom/oppo/preference/OppoPreferenceGroupAdapter$PreferenceLayout;->resId:I
    invoke-static {v0, v1}, Lcom/oppo/preference/OppoPreferenceGroupAdapter$PreferenceLayout;->access$302(Lcom/oppo/preference/OppoPreferenceGroupAdapter$PreferenceLayout;I)I

    .line 198
    invoke-virtual {p1}, Lcom/oppo/preference/OppoPreference;->getWidgetLayoutResource()I

    move-result v1

    #setter for: Lcom/oppo/preference/OppoPreferenceGroupAdapter$PreferenceLayout;->widgetResId:I
    invoke-static {v0, v1}, Lcom/oppo/preference/OppoPreferenceGroupAdapter$PreferenceLayout;->access$402(Lcom/oppo/preference/OppoPreferenceGroupAdapter$PreferenceLayout;I)I

    .line 199
    return-object v0

    .line 195
    .end local v0           #pl:Lcom/oppo/preference/OppoPreferenceGroupAdapter$PreferenceLayout;
    :cond_0
    new-instance v0, Lcom/oppo/preference/OppoPreferenceGroupAdapter$PreferenceLayout;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oppo/preference/OppoPreferenceGroupAdapter$PreferenceLayout;-><init>(Lcom/oppo/preference/OppoPreferenceGroupAdapter$1;)V

    goto :goto_0
.end method

.method private flattenPreferenceGroup(Ljava/util/List;Lcom/oppo/preference/OppoPreferenceGroup;)V
    .locals 5
    .parameter
    .parameter "group"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/preference/OppoPreference;",
            ">;",
            "Lcom/oppo/preference/OppoPreferenceGroup;",
            ")V"
        }
    .end annotation

    .prologue
    .line 166
    .local p1, preferences:Ljava/util/List;,"Ljava/util/List<Lcom/oppo/preference/OppoPreference;>;"
    invoke-virtual {p2}, Lcom/oppo/preference/OppoPreferenceGroup;->sortPreferences()V

    .line 168
    invoke-virtual {p2}, Lcom/oppo/preference/OppoPreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 169
    .local v0, groupSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 170
    invoke-virtual {p2, v1}, Lcom/oppo/preference/OppoPreferenceGroup;->getPreference(I)Lcom/oppo/preference/OppoPreference;

    move-result-object v2

    .line 172
    .local v2, preference:Lcom/oppo/preference/OppoPreference;
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    iget-boolean v4, p0, Lcom/oppo/preference/OppoPreferenceGroupAdapter;->mHasReturnedViewTypeCount:Z

    if-nez v4, :cond_0

    invoke-virtual {v2}, Lcom/oppo/preference/OppoPreference;->hasSpecifiedLayout()Z

    move-result v4

    if-nez v4, :cond_0

    .line 175
    invoke-direct {p0, v2}, Lcom/oppo/preference/OppoPreferenceGroupAdapter;->addPreferenceClassName(Lcom/oppo/preference/OppoPreference;)V

    .line 178
    :cond_0
    instance-of v4, v2, Lcom/oppo/preference/OppoPreferenceGroup;

    if-eqz v4, :cond_1

    move-object v3, v2

    .line 179
    check-cast v3, Lcom/oppo/preference/OppoPreferenceGroup;

    .line 180
    .local v3, preferenceAsGroup:Lcom/oppo/preference/OppoPreferenceGroup;
    invoke-virtual {v3}, Lcom/oppo/preference/OppoPreferenceGroup;->isOnSameScreenAsChildren()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 181
    invoke-direct {p0, p1, v3}, Lcom/oppo/preference/OppoPreferenceGroupAdapter;->flattenPreferenceGroup(Ljava/util/List;Lcom/oppo/preference/OppoPreferenceGroup;)V

    .line 185
    .end local v3           #preferenceAsGroup:Lcom/oppo/preference/OppoPreferenceGroup;
    :cond_1
    invoke-virtual {v2, p0}, Lcom/oppo/preference/OppoPreference;->setOnPreferenceChangeInternalListener(Lcom/oppo/preference/OppoPreference$OnPreferenceChangeInternalListener;)V

    .line 169
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 187
    .end local v2           #preference:Lcom/oppo/preference/OppoPreference;
    :cond_2
    return-void
.end method

.method private syncMyPreferences()V
    .locals 2

    .prologue
    .line 143
    monitor-enter p0

    .line 144
    :try_start_0
    iget-boolean v1, p0, Lcom/oppo/preference/OppoPreferenceGroupAdapter;->mIsSyncing:Z

    if-eqz v1, :cond_0

    .line 145
    monitor-exit p0

    .line 162
    :goto_0
    return-void

    .line 148
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oppo/preference/OppoPreferenceGroupAdapter;->mIsSyncing:Z

    .line 149
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oppo/preference/OppoPreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 153
    .local v0, newPreferenceList:Ljava/util/List;,"Ljava/util/List<Lcom/oppo/preference/OppoPreference;>;"
    iget-object v1, p0, Lcom/oppo/preference/OppoPreferenceGroupAdapter;->mPreferenceGroup:Lcom/oppo/preference/OppoPreferenceGroup;

    invoke-direct {p0, v0, v1}, Lcom/oppo/preference/OppoPreferenceGroupAdapter;->flattenPreferenceGroup(Ljava/util/List;Lcom/oppo/preference/OppoPreferenceGroup;)V

    .line 154
    iput-object v0, p0, Lcom/oppo/preference/OppoPreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    .line 156
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 158
    monitor-enter p0

    .line 159
    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, p0, Lcom/oppo/preference/OppoPreferenceGroupAdapter;->mIsSyncing:Z

    .line 160
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 161
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 149
    .end local v0           #newPreferenceList:Ljava/util/List;,"Ljava/util/List<Lcom/oppo/preference/OppoPreference;>;"
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 289
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/oppo/preference/OppoPreference;
    .locals 1
    .parameter "position"

    .prologue
    .line 219
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreferenceGroupAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 220
    :cond_0
    const/4 v0, 0x0

    .line 221
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/preference/OppoPreference;

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/oppo/preference/OppoPreferenceGroupAdapter;->getItem(I)Lcom/oppo/preference/OppoPreference;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 225
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreferenceGroupAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 226
    :cond_0
    const-wide/high16 v0, -0x8000

    .line 227
    :goto_0
    return-wide v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/oppo/preference/OppoPreferenceGroupAdapter;->getItem(I)Lcom/oppo/preference/OppoPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/preference/OppoPreference;->getId()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 5
    .parameter "position"

    .prologue
    const/4 v2, -0x1

    .line 308
    iget-boolean v3, p0, Lcom/oppo/preference/OppoPreferenceGroupAdapter;->mHasReturnedViewTypeCount:Z

    if-nez v3, :cond_0

    .line 309
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/oppo/preference/OppoPreferenceGroupAdapter;->mHasReturnedViewTypeCount:Z

    .line 312
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oppo/preference/OppoPreferenceGroupAdapter;->getItem(I)Lcom/oppo/preference/OppoPreference;

    move-result-object v0

    .line 313
    .local v0, preference:Lcom/oppo/preference/OppoPreference;
    invoke-virtual {v0}, Lcom/oppo/preference/OppoPreference;->hasSpecifiedLayout()Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 325
    :cond_1
    :goto_0
    return v1

    .line 317
    :cond_2
    iget-object v3, p0, Lcom/oppo/preference/OppoPreferenceGroupAdapter;->mTempPreferenceLayout:Lcom/oppo/preference/OppoPreferenceGroupAdapter$PreferenceLayout;

    invoke-direct {p0, v0, v3}, Lcom/oppo/preference/OppoPreferenceGroupAdapter;->createPreferenceLayout(Lcom/oppo/preference/OppoPreference;Lcom/oppo/preference/OppoPreferenceGroupAdapter$PreferenceLayout;)Lcom/oppo/preference/OppoPreferenceGroupAdapter$PreferenceLayout;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/preference/OppoPreferenceGroupAdapter;->mTempPreferenceLayout:Lcom/oppo/preference/OppoPreferenceGroupAdapter$PreferenceLayout;

    .line 319
    iget-object v3, p0, Lcom/oppo/preference/OppoPreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/oppo/preference/OppoPreferenceGroupAdapter;->mTempPreferenceLayout:Lcom/oppo/preference/OppoPreferenceGroupAdapter$PreferenceLayout;

    invoke-static {v3, v4}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v1

    .line 320
    .local v1, viewType:I
    if-gez v1, :cond_1

    move v1, v2

    .line 323
    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 231
    invoke-virtual {p0, p1}, Lcom/oppo/preference/OppoPreferenceGroupAdapter;->getItem(I)Lcom/oppo/preference/OppoPreference;

    move-result-object v3

    .line 247
    .local v3, preference:Lcom/oppo/preference/OppoPreference;
    invoke-virtual {v3, p2, p3}, Lcom/oppo/preference/OppoPreference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 248
    .local v2, overlapView:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 249
    const/4 v5, -0x1

    if-le p1, v5, :cond_0

    iget v5, p0, Lcom/oppo/preference/OppoPreferenceGroupAdapter;->nPreferenceListCount:I

    if-ge p1, v5, :cond_0

    .line 250
    iget-object v5, p0, Lcom/oppo/preference/OppoPreferenceGroupAdapter;->mPreferenceListItems:[Landroid/view/View;

    if-eqz v5, :cond_0

    .line 251
    iget-object v5, p0, Lcom/oppo/preference/OppoPreferenceGroupAdapter;->mPreferenceListItems:[Landroid/view/View;

    aput-object v2, v5, p1

    .line 256
    :cond_0
    invoke-virtual {v3}, Lcom/oppo/preference/OppoPreference;->isOverlapped()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 257
    invoke-virtual {v3}, Lcom/oppo/preference/OppoPreference;->getOverlap()I

    move-result v4

    .line 258
    .local v4, type:I
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 259
    .local v1, contentValues:Landroid/content/ContentValues;
    const/4 v0, -0x1

    .line 260
    .local v0, background:I
    if-nez v4, :cond_3

    .line 261
    const/4 v0, 0x0

    .line 271
    :cond_1
    :goto_0
    const-string v5, "positionInfo"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 272
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 274
    .end local v0           #background:I
    .end local v1           #contentValues:Landroid/content/ContentValues;
    .end local v4           #type:I
    :cond_2
    return-object v2

    .line 262
    .restart local v0       #background:I
    .restart local v1       #contentValues:Landroid/content/ContentValues;
    .restart local v4       #type:I
    :cond_3
    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 263
    const/4 v0, 0x1

    goto :goto_0

    .line 264
    :cond_4
    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    .line 265
    const/4 v0, 0x2

    goto :goto_0

    .line 266
    :cond_5
    const/4 v5, 0x3

    if-ne v4, v5, :cond_6

    .line 267
    const/4 v0, 0x3

    goto :goto_0

    .line 268
    :cond_6
    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    .line 269
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 331
    iget-boolean v0, p0, Lcom/oppo/preference/OppoPreferenceGroupAdapter;->mHasReturnedViewTypeCount:Z

    if-nez v0, :cond_0

    .line 332
    iput-boolean v1, p0, Lcom/oppo/preference/OppoPreferenceGroupAdapter;->mHasReturnedViewTypeCount:Z

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 303
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 280
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreferenceGroupAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 281
    :cond_0
    const/4 v0, 0x1

    .line 282
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/oppo/preference/OppoPreferenceGroupAdapter;->getItem(I)Lcom/oppo/preference/OppoPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/preference/OppoPreference;->isSelectable()Z

    move-result v0

    goto :goto_0
.end method

.method public onPreferenceChange(Lcom/oppo/preference/OppoPreference;)V
    .locals 0
    .parameter "preference"

    .prologue
    .line 293
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 294
    return-void
.end method

.method public onPreferenceHierarchyChange(Lcom/oppo/preference/OppoPreference;)V
    .locals 2
    .parameter "preference"

    .prologue
    .line 297
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceGroupAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oppo/preference/OppoPreferenceGroupAdapter;->mSyncRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 298
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceGroupAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oppo/preference/OppoPreferenceGroupAdapter;->mSyncRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 299
    return-void
.end method
