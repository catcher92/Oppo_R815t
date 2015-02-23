.class public Lcom/oppo/preference/OppoPreference;
.super Ljava/lang/Object;
.source "OppoPreference.java"

# interfaces
.implements Lcom/oppo/preference/OppoOnDependencyChangeListener;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/preference/OppoPreference$OnViewChangedListener;,
        Lcom/oppo/preference/OppoPreference$BaseSavedState;,
        Lcom/oppo/preference/OppoPreference$OnPreferenceChangeInternalListener;,
        Lcom/oppo/preference/OppoPreference$OnPreferenceClickListener;,
        Lcom/oppo/preference/OppoPreference$OnPreferenceChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/oppo/preference/OppoPreference;",
        ">;",
        "Lcom/oppo/preference/OppoOnDependencyChangeListener;"
    }
.end annotation


# static fields
.field public static final DEFAULT_ORDER:I = 0x7fffffff

.field public static final OVERLAP_FULL:I = 0x4

.field public static final OVERLAP_HEAD:I = 0x1

.field public static final OVERLAP_MID:I = 0x2

.field public static final OVERLAP_NONE:I = 0x0

.field public static final OVERLAP_TAIL:I = 0x3

.field public static final PREFERENCE_POSINTION_INFO:Ljava/lang/String; = "positionInfo"

.field private static final TAG:Ljava/lang/String; = "OppoPreference"


# instance fields
.field private mBaseMethodCalled:Z

.field private mContext:Landroid/content/Context;

.field private mDefaultValue:Ljava/lang/Object;

.field private mDependencyKey:Ljava/lang/String;

.field private mDependencyMet:Z

.field private mDependents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/preference/OppoPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mEnabled:Z

.field private mExtras:Landroid/os/Bundle;

.field private mFragment:Ljava/lang/String;

.field private mHasSpecifiedLayout:Z

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconResId:I

.field private mId:J

.field private mIntent:Landroid/content/Intent;

.field private mKey:Ljava/lang/String;

.field private mLayoutResId:I

.field private mListener:Lcom/oppo/preference/OppoPreference$OnPreferenceChangeInternalListener;

.field private mOnChangeListener:Lcom/oppo/preference/OppoPreference$OnPreferenceChangeListener;

.field private mOnClickListener:Lcom/oppo/preference/OppoPreference$OnPreferenceClickListener;

.field private mOrder:I

.field private mOverlap:I

.field private mPersistent:Z

.field private mPreferenceManager:Lcom/oppo/preference/OppoPreferenceManager;

.field private mRequiresKey:Z

.field private mSelectable:Z

.field private mShouldDisableView:Z

.field private mSummary:Ljava/lang/CharSequence;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleRes:I

.field private mViewChangedListener:Lcom/oppo/preference/OppoPreference$OnViewChangedListener;

.field private mWidgetLayoutResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 321
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/preference/OppoPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 322
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 312
    const v0, 0xc010407

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/preference/OppoPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 313
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    const v4, 0x7fffffff

    iput v4, p0, Lcom/oppo/preference/OppoPreference;->mOrder:I

    .line 114
    iput-boolean v6, p0, Lcom/oppo/preference/OppoPreference;->mEnabled:Z

    .line 115
    iput-boolean v6, p0, Lcom/oppo/preference/OppoPreference;->mSelectable:Z

    .line 117
    iput-boolean v6, p0, Lcom/oppo/preference/OppoPreference;->mPersistent:Z

    .line 120
    iput-boolean v6, p0, Lcom/oppo/preference/OppoPreference;->mDependencyMet:Z

    .line 125
    iput-boolean v6, p0, Lcom/oppo/preference/OppoPreference;->mShouldDisableView:Z

    .line 127
    const v4, 0xc090416

    iput v4, p0, Lcom/oppo/preference/OppoPreference;->mLayoutResId:I

    .line 129
    iput-boolean v5, p0, Lcom/oppo/preference/OppoPreference;->mHasSpecifiedLayout:Z

    .line 138
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/oppo/preference/OppoPreference;->mViewChangedListener:Lcom/oppo/preference/OppoPreference$OnViewChangedListener;

    .line 1810
    const/4 v4, -0x1

    iput v4, p0, Lcom/oppo/preference/OppoPreference;->mOverlap:I

    .line 215
    iput-object p1, p0, Lcom/oppo/preference/OppoPreference;->mContext:Landroid/content/Context;

    .line 217
    sget-object v4, Landroid/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v4, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 219
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v3

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_0

    .line 220
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 221
    .local v1, attr:I
    packed-switch v1, :pswitch_data_0

    .line 219
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 223
    :pswitch_0
    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/oppo/preference/OppoPreference;->mIconResId:I

    goto :goto_1

    .line 227
    :pswitch_1
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/preference/OppoPreference;->mKey:Ljava/lang/String;

    goto :goto_1

    .line 231
    :pswitch_2
    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/oppo/preference/OppoPreference;->mTitleRes:I

    .line 232
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/preference/OppoPreference;->mTitle:Ljava/lang/CharSequence;

    goto :goto_1

    .line 236
    :pswitch_3
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/preference/OppoPreference;->mSummary:Ljava/lang/CharSequence;

    goto :goto_1

    .line 240
    :pswitch_4
    iget v4, p0, Lcom/oppo/preference/OppoPreference;->mOrder:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/oppo/preference/OppoPreference;->mOrder:I

    goto :goto_1

    .line 244
    :pswitch_5
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/preference/OppoPreference;->mFragment:Ljava/lang/String;

    goto :goto_1

    .line 248
    :pswitch_6
    iget v4, p0, Lcom/oppo/preference/OppoPreference;->mLayoutResId:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/oppo/preference/OppoPreference;->mLayoutResId:I

    goto :goto_1

    .line 252
    :pswitch_7
    iget v4, p0, Lcom/oppo/preference/OppoPreference;->mWidgetLayoutResId:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/oppo/preference/OppoPreference;->mWidgetLayoutResId:I

    goto :goto_1

    .line 256
    :pswitch_8
    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/oppo/preference/OppoPreference;->mEnabled:Z

    goto :goto_1

    .line 260
    :pswitch_9
    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/oppo/preference/OppoPreference;->mSelectable:Z

    goto :goto_1

    .line 264
    :pswitch_a
    iget-boolean v4, p0, Lcom/oppo/preference/OppoPreference;->mPersistent:Z

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/oppo/preference/OppoPreference;->mPersistent:Z

    goto :goto_1

    .line 268
    :pswitch_b
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/preference/OppoPreference;->mDependencyKey:Ljava/lang/String;

    goto :goto_1

    .line 272
    :pswitch_c
    invoke-virtual {p0, v0, v1}, Lcom/oppo/preference/OppoPreference;->onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/preference/OppoPreference;->mDefaultValue:Ljava/lang/Object;

    goto :goto_1

    .line 276
    :pswitch_d
    iget-boolean v4, p0, Lcom/oppo/preference/OppoPreference;->mShouldDisableView:Z

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/oppo/preference/OppoPreference;->mShouldDisableView:Z

    goto :goto_1

    .line 280
    .end local v1           #attr:I
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 282
    sget-object v4, Loppo/R$styleable;->OppoPreference:[I

    invoke-virtual {p1, p2, v4, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 284
    .local v2, b:Landroid/content/res/TypedArray;
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v3

    :goto_2
    if-ltz v3, :cond_1

    .line 285
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 286
    .restart local v1       #attr:I
    packed-switch v1, :pswitch_data_1

    .line 284
    :goto_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 288
    :pswitch_e
    iget v4, p0, Lcom/oppo/preference/OppoPreference;->mOverlap:I

    invoke-virtual {v2, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/oppo/preference/OppoPreference;->mOverlap:I

    goto :goto_3

    .line 292
    .end local v1           #attr:I
    :cond_1
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 294
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.preference"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 296
    iput-boolean v6, p0, Lcom/oppo/preference/OppoPreference;->mHasSpecifiedLayout:Z

    .line 298
    :cond_2
    return-void

    .line 221
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_a
        :pswitch_8
        :pswitch_6
        :pswitch_2
        :pswitch_9
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_5
    .end packed-switch

    .line 286
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_e
    .end packed-switch
.end method

.method private dispatchSetInitialValue()V
    .locals 3

    .prologue
    .line 1305
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->shouldPersist()Z

    move-result v0

    .line 1306
    .local v0, shouldPersist:Z
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/preference/OppoPreference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1307
    :cond_0
    iget-object v1, p0, Lcom/oppo/preference/OppoPreference;->mDefaultValue:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 1308
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/oppo/preference/OppoPreference;->mDefaultValue:Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lcom/oppo/preference/OppoPreference;->onSetInitialValue(ZLjava/lang/Object;)V

    .line 1313
    :cond_1
    :goto_0
    return-void

    .line 1311
    :cond_2
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/oppo/preference/OppoPreference;->onSetInitialValue(ZLjava/lang/Object;)V

    goto :goto_0
.end method

.method private registerDependency()V
    .locals 4

    .prologue
    .line 1144
    iget-object v1, p0, Lcom/oppo/preference/OppoPreference;->mDependencyKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1154
    :goto_0
    return-void

    .line 1147
    :cond_0
    iget-object v1, p0, Lcom/oppo/preference/OppoPreference;->mDependencyKey:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/oppo/preference/OppoPreference;->findPreferenceInHierarchy(Ljava/lang/String;)Lcom/oppo/preference/OppoPreference;

    move-result-object v0

    .line 1148
    .local v0, preference:Lcom/oppo/preference/OppoPreference;
    if-eqz v0, :cond_1

    .line 1149
    invoke-direct {v0, p0}, Lcom/oppo/preference/OppoPreference;->registerDependent(Lcom/oppo/preference/OppoPreference;)V

    goto :goto_0

    .line 1151
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dependency \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/preference/OppoPreference;->mDependencyKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" not found for preference \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/preference/OppoPreference;->mKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" (title: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/preference/OppoPreference;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private registerDependent(Lcom/oppo/preference/OppoPreference;)V
    .locals 1
    .parameter "dependent"

    .prologue
    .line 1192
    iget-object v0, p0, Lcom/oppo/preference/OppoPreference;->mDependents:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/preference/OppoPreference;->mDependents:Ljava/util/List;

    .line 1196
    :cond_0
    iget-object v0, p0, Lcom/oppo/preference/OppoPreference;->mDependents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1198
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p1, p0, v0}, Lcom/oppo/preference/OppoPreference;->onDependencyChanged(Lcom/oppo/preference/OppoPreference;Z)V

    .line 1199
    return-void
.end method

.method private setEnabledStateOnViews(Landroid/view/View;Z)V
    .locals 3
    .parameter "v"
    .parameter "enabled"

    .prologue
    .line 561
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 563
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 564
    check-cast v1, Landroid/view/ViewGroup;

    .line 565
    .local v1, vg:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 566
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/oppo/preference/OppoPreference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    .line 565
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 569
    .end local v0           #i:I
    .end local v1           #vg:Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method private tryCommit(Landroid/content/SharedPreferences$Editor;)V
    .locals 2
    .parameter "editor"

    .prologue
    .line 1334
    iget-object v1, p0, Lcom/oppo/preference/OppoPreference;->mPreferenceManager:Lcom/oppo/preference/OppoPreferenceManager;

    invoke-virtual {v1}, Lcom/oppo/preference/OppoPreferenceManager;->shouldCommit()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1336
    :try_start_0
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1345
    :cond_0
    :goto_0
    return-void

    .line 1338
    :catch_0
    move-exception v0

    .line 1342
    .local v0, unused:Ljava/lang/AbstractMethodError;
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private unregisterDependency()V
    .locals 2

    .prologue
    .line 1157
    iget-object v1, p0, Lcom/oppo/preference/OppoPreference;->mDependencyKey:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1158
    iget-object v1, p0, Lcom/oppo/preference/OppoPreference;->mDependencyKey:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/oppo/preference/OppoPreference;->findPreferenceInHierarchy(Ljava/lang/String;)Lcom/oppo/preference/OppoPreference;

    move-result-object v0

    .line 1159
    .local v0, oldDependency:Lcom/oppo/preference/OppoPreference;
    if-eqz v0, :cond_0

    .line 1160
    invoke-direct {v0, p0}, Lcom/oppo/preference/OppoPreference;->unregisterDependent(Lcom/oppo/preference/OppoPreference;)V

    .line 1163
    .end local v0           #oldDependency:Lcom/oppo/preference/OppoPreference;
    :cond_0
    return-void
.end method

.method private unregisterDependent(Lcom/oppo/preference/OppoPreference;)V
    .locals 1
    .parameter "dependent"

    .prologue
    .line 1210
    iget-object v0, p0, Lcom/oppo/preference/OppoPreference;->mDependents:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1211
    iget-object v0, p0, Lcom/oppo/preference/OppoPreference;->mDependents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1213
    :cond_0
    return-void
.end method


# virtual methods
.method protected callChangeListener(Ljava/lang/Object;)Z
    .locals 1
    .parameter "newValue"

    .prologue
    .line 893
    iget-object v0, p0, Lcom/oppo/preference/OppoPreference;->mOnChangeListener:Lcom/oppo/preference/OppoPreference$OnPreferenceChangeListener;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/preference/OppoPreference;->mOnChangeListener:Lcom/oppo/preference/OppoPreference$OnPreferenceChangeListener;

    invoke-interface {v0, p0, p1}, Lcom/oppo/preference/OppoPreference$OnPreferenceChangeListener;->onPreferenceChange(Lcom/oppo/preference/OppoPreference;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public compareTo(Lcom/oppo/preference/OppoPreference;)I
    .locals 2
    .parameter "another"

    .prologue
    const v1, 0x7fffffff

    .line 1063
    iget v0, p0, Lcom/oppo/preference/OppoPreference;->mOrder:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/oppo/preference/OppoPreference;->mOrder:I

    if-ne v0, v1, :cond_1

    iget v0, p1, Lcom/oppo/preference/OppoPreference;->mOrder:I

    if-eq v0, v1, :cond_1

    .line 1065
    :cond_0
    iget v0, p0, Lcom/oppo/preference/OppoPreference;->mOrder:I

    iget v1, p1, Lcom/oppo/preference/OppoPreference;->mOrder:I

    sub-int/2addr v0, v1

    .line 1072
    :goto_0
    return v0

    .line 1066
    :cond_1
    iget-object v0, p0, Lcom/oppo/preference/OppoPreference;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_2

    .line 1067
    const/4 v0, 0x1

    goto :goto_0

    .line 1068
    :cond_2
    iget-object v0, p1, Lcom/oppo/preference/OppoPreference;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_3

    .line 1069
    const/4 v0, -0x1

    goto :goto_0

    .line 1072
    :cond_3
    iget-object v0, p0, Lcom/oppo/preference/OppoPreference;->mTitle:Ljava/lang/CharSequence;

    iget-object v1, p1, Lcom/oppo/preference/OppoPreference;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/android/internal/util/CharSequences;->compareToIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    check-cast p1, Lcom/oppo/preference/OppoPreference;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/oppo/preference/OppoPreference;->compareTo(Lcom/oppo/preference/OppoPreference;)I

    move-result v0

    return v0
.end method

.method dispatchRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "container"

    .prologue
    .line 1726
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->hasKey()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1727
    iget-object v1, p0, Lcom/oppo/preference/OppoPreference;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 1728
    .local v0, state:Landroid/os/Parcelable;
    if-eqz v0, :cond_0

    .line 1729
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/preference/OppoPreference;->mBaseMethodCalled:Z

    .line 1730
    invoke-virtual {p0, v0}, Lcom/oppo/preference/OppoPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1731
    iget-boolean v1, p0, Lcom/oppo/preference/OppoPreference;->mBaseMethodCalled:Z

    if-nez v1, :cond_0

    .line 1732
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Derived class did not call super.onRestoreInstanceState()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1737
    .end local v0           #state:Landroid/os/Parcelable;
    :cond_0
    return-void
.end method

.method dispatchSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "container"

    .prologue
    .line 1674
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->hasKey()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1675
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/preference/OppoPreference;->mBaseMethodCalled:Z

    .line 1676
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1677
    .local v0, state:Landroid/os/Parcelable;
    iget-boolean v1, p0, Lcom/oppo/preference/OppoPreference;->mBaseMethodCalled:Z

    if-nez v1, :cond_0

    .line 1678
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Derived class did not call super.onSaveInstanceState()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1681
    :cond_0
    if-eqz v0, :cond_1

    .line 1682
    iget-object v1, p0, Lcom/oppo/preference/OppoPreference;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1685
    .end local v0           #state:Landroid/os/Parcelable;
    :cond_1
    return-void
.end method

.method protected findPreferenceInHierarchy(Ljava/lang/String;)Lcom/oppo/preference/OppoPreference;
    .locals 1
    .parameter "key"

    .prologue
    .line 1175
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/preference/OppoPreference;->mPreferenceManager:Lcom/oppo/preference/OppoPreferenceManager;

    if-nez v0, :cond_1

    .line 1176
    :cond_0
    const/4 v0, 0x0

    .line 1179
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/oppo/preference/OppoPreference;->mPreferenceManager:Lcom/oppo/preference/OppoPreferenceManager;

    invoke-virtual {v0, p1}, Lcom/oppo/preference/OppoPreferenceManager;->findPreference(Ljava/lang/CharSequence;)Lcom/oppo/preference/OppoPreference;

    move-result-object v0

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 989
    iget-object v0, p0, Lcom/oppo/preference/OppoPreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDependency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1281
    iget-object v0, p0, Lcom/oppo/preference/OppoPreference;->mDependencyKey:Ljava/lang/String;

    return-object v0
.end method

.method public getEditor()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 1031
    iget-object v0, p0, Lcom/oppo/preference/OppoPreference;->mPreferenceManager:Lcom/oppo/preference/OppoPreferenceManager;

    if-nez v0, :cond_0

    .line 1032
    const/4 v0, 0x0

    .line 1035
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/preference/OppoPreference;->mPreferenceManager:Lcom/oppo/preference/OppoPreferenceManager;

    invoke-virtual {v0}, Lcom/oppo/preference/OppoPreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    goto :goto_0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/oppo/preference/OppoPreference;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 383
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/oppo/preference/OppoPreference;->mExtras:Landroid/os/Bundle;

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/oppo/preference/OppoPreference;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method getFilterableStringBuilder()Ljava/lang/StringBuilder;
    .locals 5

    .prologue
    const/16 v4, 0x20

    .line 1635
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1636
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    .line 1637
    .local v2, title:Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1638
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1640
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1641
    .local v1, summary:Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1642
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1644
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 1646
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1648
    :cond_2
    return-object v0
.end method

.method public getFragment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/oppo/preference/OppoPreference;->mFragment:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Lcom/oppo/preference/OppoPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getId()J
    .locals 2

    .prologue
    .line 794
    iget-wide v0, p0, Lcom/oppo/preference/OppoPreference;->mId:J

    return-wide v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/oppo/preference/OppoPreference;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 826
    iget-object v0, p0, Lcom/oppo/preference/OppoPreference;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutResource()I
    .locals 1

    .prologue
    .line 423
    iget v0, p0, Lcom/oppo/preference/OppoPreference;->mLayoutResId:I

    return v0
.end method

.method public getOnPreferenceChangeListener()Lcom/oppo/preference/OppoPreference$OnPreferenceChangeListener;
    .locals 1

    .prologue
    .line 914
    iget-object v0, p0, Lcom/oppo/preference/OppoPreference;->mOnChangeListener:Lcom/oppo/preference/OppoPreference$OnPreferenceChangeListener;

    return-object v0
.end method

.method public getOnPreferenceClickListener()Lcom/oppo/preference/OppoPreference$OnPreferenceClickListener;
    .locals 1

    .prologue
    .line 932
    iget-object v0, p0, Lcom/oppo/preference/OppoPreference;->mOnClickListener:Lcom/oppo/preference/OppoPreference$OnPreferenceClickListener;

    return-object v0
.end method

.method public getOrder()I
    .locals 1

    .prologue
    .line 599
    iget v0, p0, Lcom/oppo/preference/OppoPreference;->mOrder:I

    return v0
.end method

.method public getOverlap()I
    .locals 1

    .prologue
    .line 1852
    iget v0, p0, Lcom/oppo/preference/OppoPreference;->mOverlap:I

    return v0
.end method

.method protected getPersistedBoolean(Z)Z
    .locals 2
    .parameter "defaultReturnValue"

    .prologue
    .line 1609
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1613
    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/oppo/preference/OppoPreference;->mPreferenceManager:Lcom/oppo/preference/OppoPreferenceManager;

    invoke-virtual {v0}, Lcom/oppo/preference/OppoPreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/preference/OppoPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    goto :goto_0
.end method

.method protected getPersistedFloat(F)F
    .locals 2
    .parameter "defaultReturnValue"

    .prologue
    .line 1525
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1529
    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/oppo/preference/OppoPreference;->mPreferenceManager:Lcom/oppo/preference/OppoPreferenceManager;

    invoke-virtual {v0}, Lcom/oppo/preference/OppoPreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/preference/OppoPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p1

    goto :goto_0
.end method

.method protected getPersistedInt(I)I
    .locals 2
    .parameter "defaultReturnValue"

    .prologue
    .line 1483
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1487
    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/oppo/preference/OppoPreference;->mPreferenceManager:Lcom/oppo/preference/OppoPreferenceManager;

    invoke-virtual {v0}, Lcom/oppo/preference/OppoPreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/preference/OppoPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    goto :goto_0
.end method

.method protected getPersistedLong(J)J
    .locals 2
    .parameter "defaultReturnValue"

    .prologue
    .line 1567
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1571
    .end local p1
    :goto_0
    return-wide p1

    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/oppo/preference/OppoPreference;->mPreferenceManager:Lcom/oppo/preference/OppoPreferenceManager;

    invoke-virtual {v0}, Lcom/oppo/preference/OppoPreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/preference/OppoPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    goto :goto_0
.end method

.method protected getPersistedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "defaultReturnValue"

    .prologue
    .line 1388
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1392
    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/oppo/preference/OppoPreference;->mPreferenceManager:Lcom/oppo/preference/OppoPreferenceManager;

    invoke-virtual {v0}, Lcom/oppo/preference/OppoPreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/preference/OppoPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method protected getPersistedStringSet(Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1441
    .local p1, defaultReturnValue:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1445
    .end local p1           #defaultReturnValue:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    return-object p1

    .restart local p1       #defaultReturnValue:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    iget-object v0, p0, Lcom/oppo/preference/OppoPreference;->mPreferenceManager:Lcom/oppo/preference/OppoPreferenceManager;

    invoke-virtual {v0}, Lcom/oppo/preference/OppoPreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/preference/OppoPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    goto :goto_0
.end method

.method public getPreferenceManager()Lcom/oppo/preference/OppoPreferenceManager;
    .locals 1

    .prologue
    .line 1113
    iget-object v0, p0, Lcom/oppo/preference/OppoPreference;->mPreferenceManager:Lcom/oppo/preference/OppoPreferenceManager;

    return-object v0
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 1008
    iget-object v0, p0, Lcom/oppo/preference/OppoPreference;->mPreferenceManager:Lcom/oppo/preference/OppoPreferenceManager;

    if-nez v0, :cond_0

    .line 1009
    const/4 v0, 0x0

    .line 1012
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/preference/OppoPreference;->mPreferenceManager:Lcom/oppo/preference/OppoPreferenceManager;

    invoke-virtual {v0}, Lcom/oppo/preference/OppoPreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0
.end method

.method public getShouldDisableView()Z
    .locals 1

    .prologue
    .line 784
    iget-boolean v0, p0, Lcom/oppo/preference/OppoPreference;->mShouldDisableView:Z

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Lcom/oppo/preference/OppoPreference;->mSummary:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 646
    iget-object v0, p0, Lcom/oppo/preference/OppoPreference;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleRes()I
    .locals 1

    .prologue
    .line 636
    iget v0, p0, Lcom/oppo/preference/OppoPreference;->mTitleRes:I

    return v0
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 465
    if-nez p1, :cond_0

    .line 466
    invoke-virtual {p0, p2}, Lcom/oppo/preference/OppoPreference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 468
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oppo/preference/OppoPreference;->onBindView(Landroid/view/View;)V

    .line 470
    iget-object v0, p0, Lcom/oppo/preference/OppoPreference;->mViewChangedListener:Lcom/oppo/preference/OppoPreference$OnViewChangedListener;

    if-eqz v0, :cond_1

    .line 471
    iget-object v0, p0, Lcom/oppo/preference/OppoPreference;->mViewChangedListener:Lcom/oppo/preference/OppoPreference$OnViewChangedListener;

    invoke-interface {v0, p1, p0}, Lcom/oppo/preference/OppoPreference$OnViewChangedListener;->giveViewInformation(Landroid/view/View;Lcom/oppo/preference/OppoPreference;)V

    .line 473
    :cond_1
    return-object p1
.end method

.method public getWidgetLayoutResource()I
    .locals 1

    .prologue
    .line 449
    iget v0, p0, Lcom/oppo/preference/OppoPreference;->mWidgetLayoutResId:I

    return v0
.end method

.method public hasKey()Z
    .locals 1

    .prologue
    .line 849
    iget-object v0, p0, Lcom/oppo/preference/OppoPreference;->mKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasSpecifiedLayout()Z
    .locals 1

    .prologue
    .line 1617
    iget-boolean v0, p0, Lcom/oppo/preference/OppoPreference;->mHasSpecifiedLayout:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 738
    iget-boolean v0, p0, Lcom/oppo/preference/OppoPreference;->mEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/preference/OppoPreference;->mDependencyMet:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverlapped()Z
    .locals 2

    .prologue
    .line 1861
    iget v0, p0, Lcom/oppo/preference/OppoPreference;->mOverlap:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPersistent()Z
    .locals 1

    .prologue
    .line 859
    iget-boolean v0, p0, Lcom/oppo/preference/OppoPreference;->mPersistent:Z

    return v0
.end method

.method public isSelectable()Z
    .locals 1

    .prologue
    .line 759
    iget-boolean v0, p0, Lcom/oppo/preference/OppoPreference;->mSelectable:Z

    return v0
.end method

.method protected notifyChanged()V
    .locals 1

    .prologue
    .line 1091
    iget-object v0, p0, Lcom/oppo/preference/OppoPreference;->mListener:Lcom/oppo/preference/OppoPreference$OnPreferenceChangeInternalListener;

    if-eqz v0, :cond_0

    .line 1092
    iget-object v0, p0, Lcom/oppo/preference/OppoPreference;->mListener:Lcom/oppo/preference/OppoPreference$OnPreferenceChangeInternalListener;

    invoke-interface {v0, p0}, Lcom/oppo/preference/OppoPreference$OnPreferenceChangeInternalListener;->onPreferenceChange(Lcom/oppo/preference/OppoPreference;)V

    .line 1094
    :cond_0
    return-void
.end method

.method public notifyDependencyChange(Z)V
    .locals 4
    .parameter "disableDependents"

    .prologue
    .line 1221
    iget-object v0, p0, Lcom/oppo/preference/OppoPreference;->mDependents:Ljava/util/List;

    .line 1223
    .local v0, dependents:Ljava/util/List;,"Ljava/util/List<Lcom/oppo/preference/OppoPreference;>;"
    if-nez v0, :cond_1

    .line 1231
    :cond_0
    return-void

    .line 1227
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1228
    .local v1, dependentsCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1229
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oppo/preference/OppoPreference;

    invoke-virtual {v3, p0, p1}, Lcom/oppo/preference/OppoPreference;->onDependencyChanged(Lcom/oppo/preference/OppoPreference;Z)V

    .line 1228
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected notifyHierarchyChanged()V
    .locals 1

    .prologue
    .line 1101
    iget-object v0, p0, Lcom/oppo/preference/OppoPreference;->mListener:Lcom/oppo/preference/OppoPreference$OnPreferenceChangeInternalListener;

    if-eqz v0, :cond_0

    .line 1102
    iget-object v0, p0, Lcom/oppo/preference/OppoPreference;->mListener:Lcom/oppo/preference/OppoPreference$OnPreferenceChangeInternalListener;

    invoke-interface {v0, p0}, Lcom/oppo/preference/OppoPreference$OnPreferenceChangeInternalListener;->onPreferenceHierarchyChange(Lcom/oppo/preference/OppoPreference;)V

    .line 1104
    :cond_0
    return-void
.end method

.method protected onAttachedToActivity()V
    .locals 0

    .prologue
    .line 1139
    invoke-direct {p0}, Lcom/oppo/preference/OppoPreference;->registerDependency()V

    .line 1140
    return-void
.end method

.method protected onAttachedToHierarchy(Lcom/oppo/preference/OppoPreferenceManager;)V
    .locals 2
    .parameter "preferenceManager"

    .prologue
    .line 1123
    iput-object p1, p0, Lcom/oppo/preference/OppoPreference;->mPreferenceManager:Lcom/oppo/preference/OppoPreferenceManager;

    .line 1125
    invoke-virtual {p1}, Lcom/oppo/preference/OppoPreferenceManager;->getNextId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oppo/preference/OppoPreference;->mId:J

    .line 1127
    invoke-direct {p0}, Lcom/oppo/preference/OppoPreference;->dispatchSetInitialValue()V

    .line 1128
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    const/4 v3, 0x0

    const/16 v4, 0x8

    .line 518
    const v5, 0xc020006

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 519
    .local v2, textView:Landroid/widget/TextView;
    if-eqz v2, :cond_0

    .line 520
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 523
    :cond_0
    const v5, 0xc020007

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #textView:Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 524
    .restart local v2       #textView:Landroid/widget/TextView;
    if-eqz v2, :cond_2

    .line 525
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    .line 526
    .local v1, summary:Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 527
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_1

    .line 528
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 531
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 539
    .end local v1           #summary:Ljava/lang/CharSequence;
    :cond_2
    :goto_0
    const v5, 0xc020434

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 540
    .local v0, imageView:Landroid/widget/ImageView;
    if-eqz v0, :cond_6

    .line 541
    iget v5, p0, Lcom/oppo/preference/OppoPreference;->mIconResId:I

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/oppo/preference/OppoPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_5

    .line 542
    :cond_3
    iget-object v5, p0, Lcom/oppo/preference/OppoPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_4

    .line 543
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Lcom/oppo/preference/OppoPreference;->mIconResId:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/oppo/preference/OppoPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 545
    :cond_4
    iget-object v5, p0, Lcom/oppo/preference/OppoPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_5

    .line 546
    iget-object v5, p0, Lcom/oppo/preference/OppoPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 549
    :cond_5
    iget-object v5, p0, Lcom/oppo/preference/OppoPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_9

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 552
    :cond_6
    iget-boolean v3, p0, Lcom/oppo/preference/OppoPreference;->mShouldDisableView:Z

    if-eqz v3, :cond_7

    .line 553
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->isEnabled()Z

    move-result v3

    invoke-direct {p0, p1, v3}, Lcom/oppo/preference/OppoPreference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    .line 555
    :cond_7
    return-void

    .line 533
    .end local v0           #imageView:Landroid/widget/ImageView;
    .restart local v1       #summary:Ljava/lang/CharSequence;
    :cond_8
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v4, :cond_2

    .line 534
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .end local v1           #summary:Ljava/lang/CharSequence;
    .restart local v0       #imageView:Landroid/widget/ImageView;
    :cond_9
    move v3, v4

    .line 549
    goto :goto_1
.end method

.method protected onClick()V
    .locals 0

    .prologue
    .line 803
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "parent"

    .prologue
    .line 489
    iget-object v3, p0, Lcom/oppo/preference/OppoPreference;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 492
    .local v1, layoutInflater:Landroid/view/LayoutInflater;
    iget v3, p0, Lcom/oppo/preference/OppoPreference;->mLayoutResId:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 494
    .local v0, layout:Landroid/view/View;
    const v3, 0xc02000a

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 496
    .local v2, widgetFrame:Landroid/view/ViewGroup;
    if-eqz v2, :cond_0

    .line 497
    iget v3, p0, Lcom/oppo/preference/OppoPreference;->mWidgetLayoutResId:I

    if-eqz v3, :cond_1

    .line 498
    iget v3, p0, Lcom/oppo/preference/OppoPreference;->mWidgetLayoutResId:I

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 503
    :cond_0
    :goto_0
    return-object v0

    .line 500
    :cond_1
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onDependencyChanged(Lcom/oppo/preference/OppoPreference;Z)V
    .locals 1
    .parameter "dependency"
    .parameter "disableDependent"

    .prologue
    .line 1240
    iget-boolean v0, p0, Lcom/oppo/preference/OppoPreference;->mDependencyMet:Z

    if-ne v0, p2, :cond_0

    .line 1241
    if-nez p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/oppo/preference/OppoPreference;->mDependencyMet:Z

    .line 1244
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/preference/OppoPreference;->notifyDependencyChange(Z)V

    .line 1246
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->notifyChanged()V

    .line 1248
    :cond_0
    return-void

    .line 1241
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .parameter "a"
    .parameter "index"

    .prologue
    .line 337
    const/4 v0, 0x0

    return-object v0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 977
    const/4 v0, 0x0

    return v0
.end method

.method protected onPrepareForRemoval()V
    .locals 0

    .prologue
    .line 1290
    invoke-direct {p0}, Lcom/oppo/preference/OppoPreference;->unregisterDependency()V

    .line 1291
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 1750
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/preference/OppoPreference;->mBaseMethodCalled:Z

    .line 1751
    sget-object v0, Lcom/oppo/preference/OppoPreference$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    .line 1752
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong state class -- expecting OppoPreference State"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1755
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 1699
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/preference/OppoPreference;->mBaseMethodCalled:Z

    .line 1700
    sget-object v0, Lcom/oppo/preference/OppoPreference$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    return-object v0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 0
    .parameter "restorePersistedValue"
    .parameter "defaultValue"

    .prologue
    .line 1331
    return-void
.end method

.method public peekExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/oppo/preference/OppoPreference;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method performClick(Lcom/oppo/preference/OppoPreferenceScreen;)V
    .locals 4
    .parameter "preferenceScreen"

    .prologue
    .line 943
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 967
    :cond_0
    :goto_0
    return-void

    .line 947
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->onClick()V

    .line 949
    iget-object v3, p0, Lcom/oppo/preference/OppoPreference;->mOnClickListener:Lcom/oppo/preference/OppoPreference$OnPreferenceClickListener;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/oppo/preference/OppoPreference;->mOnClickListener:Lcom/oppo/preference/OppoPreference$OnPreferenceClickListener;

    invoke-interface {v3, p0}, Lcom/oppo/preference/OppoPreference$OnPreferenceClickListener;->onPreferenceClick(Lcom/oppo/preference/OppoPreference;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 953
    :cond_2
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->getPreferenceManager()Lcom/oppo/preference/OppoPreferenceManager;

    move-result-object v2

    .line 954
    .local v2, preferenceManager:Lcom/oppo/preference/OppoPreferenceManager;
    if-eqz v2, :cond_3

    .line 955
    invoke-virtual {v2}, Lcom/oppo/preference/OppoPreferenceManager;->getOnPreferenceTreeClickListener()Lcom/oppo/preference/OppoPreferenceManager$OnPreferenceTreeClickListener;

    move-result-object v1

    .line 957
    .local v1, listener:Lcom/oppo/preference/OppoPreferenceManager$OnPreferenceTreeClickListener;
    if-eqz p1, :cond_3

    if-eqz v1, :cond_3

    invoke-interface {v1, p1, p0}, Lcom/oppo/preference/OppoPreferenceManager$OnPreferenceTreeClickListener;->onPreferenceTreeClick(Lcom/oppo/preference/OppoPreferenceScreen;Lcom/oppo/preference/OppoPreference;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 963
    .end local v1           #listener:Lcom/oppo/preference/OppoPreferenceManager$OnPreferenceTreeClickListener;
    :cond_3
    iget-object v3, p0, Lcom/oppo/preference/OppoPreference;->mIntent:Landroid/content/Intent;

    if-eqz v3, :cond_0

    .line 964
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 965
    .local v0, context:Landroid/content/Context;
    iget-object v3, p0, Lcom/oppo/preference/OppoPreference;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected persistBoolean(Z)Z
    .locals 4
    .parameter "value"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1585
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->shouldPersist()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1586
    if-nez p1, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {p0, v1}, Lcom/oppo/preference/OppoPreference;->getPersistedBoolean(Z)Z

    move-result v1

    if-ne p1, v1, :cond_1

    .line 1596
    :goto_0
    return v2

    .line 1591
    :cond_1
    iget-object v1, p0, Lcom/oppo/preference/OppoPreference;->mPreferenceManager:Lcom/oppo/preference/OppoPreferenceManager;

    invoke-virtual {v1}, Lcom/oppo/preference/OppoPreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1592
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Lcom/oppo/preference/OppoPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1593
    invoke-direct {p0, v0}, Lcom/oppo/preference/OppoPreference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_2
    move v2, v1

    .line 1596
    goto :goto_0
.end method

.method protected persistFloat(F)Z
    .locals 3
    .parameter "value"

    .prologue
    const/4 v1, 0x1

    .line 1501
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->shouldPersist()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1502
    const/high16 v2, 0x7fc0

    invoke-virtual {p0, v2}, Lcom/oppo/preference/OppoPreference;->getPersistedFloat(F)F

    move-result v2

    cmpl-float v2, p1, v2

    if-nez v2, :cond_0

    .line 1512
    :goto_0
    return v1

    .line 1507
    :cond_0
    iget-object v2, p0, Lcom/oppo/preference/OppoPreference;->mPreferenceManager:Lcom/oppo/preference/OppoPreferenceManager;

    invoke-virtual {v2}, Lcom/oppo/preference/OppoPreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1508
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/oppo/preference/OppoPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1509
    invoke-direct {p0, v0}, Lcom/oppo/preference/OppoPreference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .line 1512
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected persistInt(I)Z
    .locals 3
    .parameter "value"

    .prologue
    const/4 v1, 0x1

    .line 1459
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->shouldPersist()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1460
    xor-int/lit8 v2, p1, -0x1

    invoke-virtual {p0, v2}, Lcom/oppo/preference/OppoPreference;->getPersistedInt(I)I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 1470
    :goto_0
    return v1

    .line 1465
    :cond_0
    iget-object v2, p0, Lcom/oppo/preference/OppoPreference;->mPreferenceManager:Lcom/oppo/preference/OppoPreferenceManager;

    invoke-virtual {v2}, Lcom/oppo/preference/OppoPreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1466
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/oppo/preference/OppoPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1467
    invoke-direct {p0, v0}, Lcom/oppo/preference/OppoPreference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .line 1470
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected persistLong(J)Z
    .locals 4
    .parameter "value"

    .prologue
    const/4 v1, 0x1

    .line 1543
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->shouldPersist()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1544
    const-wide/16 v2, -0x1

    xor-long/2addr v2, p1

    invoke-virtual {p0, v2, v3}, Lcom/oppo/preference/OppoPreference;->getPersistedLong(J)J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    .line 1554
    :goto_0
    return v1

    .line 1549
    :cond_0
    iget-object v2, p0, Lcom/oppo/preference/OppoPreference;->mPreferenceManager:Lcom/oppo/preference/OppoPreferenceManager;

    invoke-virtual {v2}, Lcom/oppo/preference/OppoPreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1550
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/oppo/preference/OppoPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1551
    invoke-direct {p0, v0}, Lcom/oppo/preference/OppoPreference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .line 1554
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 3
    .parameter "value"

    .prologue
    const/4 v1, 0x1

    .line 1361
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->shouldPersist()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1363
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/oppo/preference/OppoPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-ne p1, v2, :cond_0

    .line 1373
    :goto_0
    return v1

    .line 1368
    :cond_0
    iget-object v2, p0, Lcom/oppo/preference/OppoPreference;->mPreferenceManager:Lcom/oppo/preference/OppoPreferenceManager;

    invoke-virtual {v2}, Lcom/oppo/preference/OppoPreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1369
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/oppo/preference/OppoPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1370
    invoke-direct {p0, v0}, Lcom/oppo/preference/OppoPreference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .line 1373
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected persistStringSet(Ljava/util/Set;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, values:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .line 1411
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->shouldPersist()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1413
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/oppo/preference/OppoPreference;->getPersistedStringSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1423
    :goto_0
    return v1

    .line 1418
    :cond_0
    iget-object v2, p0, Lcom/oppo/preference/OppoPreference;->mPreferenceManager:Lcom/oppo/preference/OppoPreferenceManager;

    invoke-virtual {v2}, Lcom/oppo/preference/OppoPreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1419
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/oppo/preference/OppoPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 1420
    invoke-direct {p0, v0}, Lcom/oppo/preference/OppoPreference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .line 1423
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method requireKey()V
    .locals 2

    .prologue
    .line 836
    iget-object v0, p0, Lcom/oppo/preference/OppoPreference;->mKey:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 837
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "OppoPreference does not have a key assigned."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 840
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/preference/OppoPreference;->mRequiresKey:Z

    .line 841
    return-void
.end method

.method public restoreHierarchyState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "container"

    .prologue
    .line 1712
    invoke-virtual {p0, p1}, Lcom/oppo/preference/OppoPreference;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1713
    return-void
.end method

.method public saveHierarchyState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "container"

    .prologue
    .line 1660
    invoke-virtual {p0, p1}, Lcom/oppo/preference/OppoPreference;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    .line 1661
    return-void
.end method

.method public setDefaultValue(Ljava/lang/Object;)V
    .locals 0
    .parameter "defaultValue"

    .prologue
    .line 1300
    iput-object p1, p0, Lcom/oppo/preference/OppoPreference;->mDefaultValue:Ljava/lang/Object;

    .line 1301
    return-void
.end method

.method public setDependency(Ljava/lang/String;)V
    .locals 0
    .parameter "dependencyKey"

    .prologue
    .line 1267
    invoke-direct {p0}, Lcom/oppo/preference/OppoPreference;->unregisterDependency()V

    .line 1270
    iput-object p1, p0, Lcom/oppo/preference/OppoPreference;->mDependencyKey:Ljava/lang/String;

    .line 1271
    invoke-direct {p0}, Lcom/oppo/preference/OppoPreference;->registerDependency()V

    .line 1272
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 722
    iget-boolean v0, p0, Lcom/oppo/preference/OppoPreference;->mEnabled:Z

    if-eq v0, p1, :cond_0

    .line 723
    iput-boolean p1, p0, Lcom/oppo/preference/OppoPreference;->mEnabled:Z

    .line 726
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/preference/OppoPreference;->notifyDependencyChange(Z)V

    .line 728
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->notifyChanged()V

    .line 730
    :cond_0
    return-void
.end method

.method public setFragment(Ljava/lang/String;)V
    .locals 0
    .parameter "fragment"

    .prologue
    .line 365
    iput-object p1, p0, Lcom/oppo/preference/OppoPreference;->mFragment:Ljava/lang/String;

    .line 366
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .parameter "iconResId"

    .prologue
    .line 670
    iput p1, p0, Lcom/oppo/preference/OppoPreference;->mIconResId:I

    .line 671
    iget-object v0, p0, Lcom/oppo/preference/OppoPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/preference/OppoPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 672
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "icon"

    .prologue
    .line 656
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/oppo/preference/OppoPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/oppo/preference/OppoPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_2

    .line 657
    :cond_1
    iput-object p1, p0, Lcom/oppo/preference/OppoPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 659
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->notifyChanged()V

    .line 661
    :cond_2
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 347
    iput-object p1, p0, Lcom/oppo/preference/OppoPreference;->mIntent:Landroid/content/Intent;

    .line 348
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 812
    iput-object p1, p0, Lcom/oppo/preference/OppoPreference;->mKey:Ljava/lang/String;

    .line 814
    iget-boolean v0, p0, Lcom/oppo/preference/OppoPreference;->mRequiresKey:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->hasKey()Z

    move-result v0

    if-nez v0, :cond_0

    .line 815
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->requireKey()V

    .line 817
    :cond_0
    return-void
.end method

.method public setLayoutResource(I)V
    .locals 1
    .parameter "layoutResId"

    .prologue
    .line 409
    iget v0, p0, Lcom/oppo/preference/OppoPreference;->mLayoutResId:I

    if-eq p1, v0, :cond_0

    .line 411
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/preference/OppoPreference;->mHasSpecifiedLayout:Z

    .line 414
    :cond_0
    iput p1, p0, Lcom/oppo/preference/OppoPreference;->mLayoutResId:I

    .line 415
    return-void
.end method

.method final setOnPreferenceChangeInternalListener(Lcom/oppo/preference/OppoPreference$OnPreferenceChangeInternalListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1083
    iput-object p1, p0, Lcom/oppo/preference/OppoPreference;->mListener:Lcom/oppo/preference/OppoPreference$OnPreferenceChangeInternalListener;

    .line 1084
    return-void
.end method

.method public setOnPreferenceChangeListener(Lcom/oppo/preference/OppoPreference$OnPreferenceChangeListener;)V
    .locals 0
    .parameter "onPreferenceChangeListener"

    .prologue
    .line 904
    iput-object p1, p0, Lcom/oppo/preference/OppoPreference;->mOnChangeListener:Lcom/oppo/preference/OppoPreference$OnPreferenceChangeListener;

    .line 905
    return-void
.end method

.method public setOnPreferenceClickListener(Lcom/oppo/preference/OppoPreference$OnPreferenceClickListener;)V
    .locals 0
    .parameter "onPreferenceClickListener"

    .prologue
    .line 923
    iput-object p1, p0, Lcom/oppo/preference/OppoPreference;->mOnClickListener:Lcom/oppo/preference/OppoPreference$OnPreferenceClickListener;

    .line 924
    return-void
.end method

.method public setOnViewChangeListener(Lcom/oppo/preference/OppoPreference$OnViewChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1789
    iput-object p1, p0, Lcom/oppo/preference/OppoPreference;->mViewChangedListener:Lcom/oppo/preference/OppoPreference$OnViewChangedListener;

    .line 1790
    return-void
.end method

.method public setOrder(I)V
    .locals 1
    .parameter "order"

    .prologue
    .line 583
    iget v0, p0, Lcom/oppo/preference/OppoPreference;->mOrder:I

    if-eq p1, v0, :cond_0

    .line 584
    iput p1, p0, Lcom/oppo/preference/OppoPreference;->mOrder:I

    .line 587
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->notifyHierarchyChanged()V

    .line 589
    :cond_0
    return-void
.end method

.method public setOverlap(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 1843
    iput p1, p0, Lcom/oppo/preference/OppoPreference;->mOverlap:I

    .line 1844
    return-void
.end method

.method public setPersistent(Z)V
    .locals 0
    .parameter "persistent"

    .prologue
    .line 882
    iput-boolean p1, p0, Lcom/oppo/preference/OppoPreference;->mPersistent:Z

    .line 883
    return-void
.end method

.method public setSelectable(Z)V
    .locals 1
    .parameter "selectable"

    .prologue
    .line 747
    iget-boolean v0, p0, Lcom/oppo/preference/OppoPreference;->mSelectable:Z

    if-eq v0, p1, :cond_0

    .line 748
    iput-boolean p1, p0, Lcom/oppo/preference/OppoPreference;->mSelectable:Z

    .line 749
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->notifyChanged()V

    .line 751
    :cond_0
    return-void
.end method

.method public setShouldDisableView(Z)V
    .locals 0
    .parameter "shouldDisableView"

    .prologue
    .line 773
    iput-boolean p1, p0, Lcom/oppo/preference/OppoPreference;->mShouldDisableView:Z

    .line 774
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->notifyChanged()V

    .line 775
    return-void
.end method

.method public setSummary(I)V
    .locals 1
    .parameter "summaryResId"

    .prologue
    .line 713
    iget-object v0, p0, Lcom/oppo/preference/OppoPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/preference/OppoPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 714
    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "summary"

    .prologue
    .line 700
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/oppo/preference/OppoPreference;->mSummary:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/oppo/preference/OppoPreference;->mSummary:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 701
    :cond_1
    iput-object p1, p0, Lcom/oppo/preference/OppoPreference;->mSummary:Ljava/lang/CharSequence;

    .line 702
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->notifyChanged()V

    .line 704
    :cond_2
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .parameter "titleResId"

    .prologue
    .line 624
    iget-object v0, p0, Lcom/oppo/preference/OppoPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/preference/OppoPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 625
    iput p1, p0, Lcom/oppo/preference/OppoPreference;->mTitleRes:I

    .line 626
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 610
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/oppo/preference/OppoPreference;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/oppo/preference/OppoPreference;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 611
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/preference/OppoPreference;->mTitleRes:I

    .line 612
    iput-object p1, p0, Lcom/oppo/preference/OppoPreference;->mTitle:Ljava/lang/CharSequence;

    .line 613
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->notifyChanged()V

    .line 615
    :cond_2
    return-void
.end method

.method public setWidgetLayoutResource(I)V
    .locals 1
    .parameter "widgetLayoutResId"

    .prologue
    .line 436
    iget v0, p0, Lcom/oppo/preference/OppoPreference;->mWidgetLayoutResId:I

    if-eq p1, v0, :cond_0

    .line 438
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/preference/OppoPreference;->mHasSpecifiedLayout:Z

    .line 440
    :cond_0
    iput p1, p0, Lcom/oppo/preference/OppoPreference;->mWidgetLayoutResId:I

    .line 441
    return-void
.end method

.method public shouldCommit()Z
    .locals 1

    .prologue
    .line 1047
    iget-object v0, p0, Lcom/oppo/preference/OppoPreference;->mPreferenceManager:Lcom/oppo/preference/OppoPreferenceManager;

    if-nez v0, :cond_0

    .line 1048
    const/4 v0, 0x0

    .line 1051
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/preference/OppoPreference;->mPreferenceManager:Lcom/oppo/preference/OppoPreferenceManager;

    invoke-virtual {v0}, Lcom/oppo/preference/OppoPreferenceManager;->shouldCommit()Z

    move-result v0

    goto :goto_0
.end method

.method public shouldDisableDependents()Z
    .locals 1

    .prologue
    .line 1256
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected shouldPersist()Z
    .locals 1

    .prologue
    .line 871
    iget-object v0, p0, Lcom/oppo/preference/OppoPreference;->mPreferenceManager:Lcom/oppo/preference/OppoPreferenceManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1622
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->getFilterableStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
