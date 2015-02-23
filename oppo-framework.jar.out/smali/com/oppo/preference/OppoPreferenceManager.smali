.class public Lcom/oppo/preference/OppoPreferenceManager;
.super Ljava/lang/Object;
.source "OppoPreferenceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/preference/OppoPreferenceManager$OnActivityVolumeClickListener;,
        Lcom/oppo/preference/OppoPreferenceManager$OnActivityRefreshListener;,
        Lcom/oppo/preference/OppoPreferenceManager$OnActivityPauseListener;,
        Lcom/oppo/preference/OppoPreferenceManager$OnPreferenceToggleListener;,
        Lcom/oppo/preference/OppoPreferenceManager$OnActivityDestroyListener;,
        Lcom/oppo/preference/OppoPreferenceManager$OnActivityStopListener;,
        Lcom/oppo/preference/OppoPreferenceManager$OnActivityResultListener;,
        Lcom/oppo/preference/OppoPreferenceManager$OnPreferenceTreeClickListener;
    }
.end annotation


# static fields
.field public static final KEY_HAS_SET_DEFAULT_VALUES:Ljava/lang/String; = "_has_set_default_values"

.field public static final METADATA_KEY_PREFERENCES:Ljava/lang/String; = "com.oppo.preference"

.field public static final PREFERENCENOTIFY:I = 0x5

.field public static final PREFERENCERINGTON:I = 0x2

.field private static final TAG:Ljava/lang/String; = "OppoPreferenceManager"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mActivityDestroyListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/preference/OppoPreferenceManager$OnActivityDestroyListener;",
            ">;"
        }
    .end annotation
.end field

.field private mActivityPauseListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/preference/OppoPreferenceManager$OnActivityPauseListener;",
            ">;"
        }
    .end annotation
.end field

.field private mActivityRefreshListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/preference/OppoPreferenceManager$OnActivityRefreshListener;",
            ">;"
        }
    .end annotation
.end field

.field private mActivityResultListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/preference/OppoPreferenceManager$OnActivityResultListener;",
            ">;"
        }
    .end annotation
.end field

.field private mActivityStopListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/preference/OppoPreferenceManager$OnActivityStopListener;",
            ">;"
        }
    .end annotation
.end field

.field private mActivityVolumeClickListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/preference/OppoPreferenceManager$OnActivityVolumeClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mFragment:Lcom/oppo/preference/OppoPreferenceFragment;

.field private mNextId:J

.field private mNextRequestCode:I

.field private mNoCommit:Z

.field private mOnPreferenceToggleListener:Lcom/oppo/preference/OppoPreferenceManager$OnPreferenceToggleListener;

.field private mOnPreferenceTreeClickListener:Lcom/oppo/preference/OppoPreferenceManager$OnPreferenceTreeClickListener;

.field private mPreferenceScreen:Lcom/oppo/preference/OppoPreferenceScreen;

.field private mPreferencesScreens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/DialogInterface;",
            ">;"
        }
    .end annotation
.end field

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mSharedPreferencesMode:I

.field private mSharedPreferencesName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 2
    .parameter "activity"
    .parameter "firstRequestCode"

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/preference/OppoPreferenceManager;->mNextId:J

    .line 146
    iput-object p1, p0, Lcom/oppo/preference/OppoPreferenceManager;->mActivity:Landroid/app/Activity;

    .line 147
    iput p2, p0, Lcom/oppo/preference/OppoPreferenceManager;->mNextRequestCode:I

    .line 149
    invoke-direct {p0, p1}, Lcom/oppo/preference/OppoPreferenceManager;->init(Landroid/content/Context;)V

    .line 150
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/preference/OppoPreferenceManager;->mNextId:J

    .line 161
    invoke-direct {p0, p1}, Lcom/oppo/preference/OppoPreferenceManager;->init(Landroid/content/Context;)V

    .line 162
    return-void
.end method

.method private dismissAllScreens()V
    .locals 3

    .prologue
    .line 747
    monitor-enter p0

    .line 749
    :try_start_0
    iget-object v2, p0, Lcom/oppo/preference/OppoPreferenceManager;->mPreferencesScreens:Ljava/util/List;

    if-nez v2, :cond_1

    .line 750
    monitor-exit p0

    .line 760
    :cond_0
    return-void

    .line 753
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/oppo/preference/OppoPreferenceManager;->mPreferencesScreens:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 754
    .local v1, screensToDismiss:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/DialogInterface;>;"
    iget-object v2, p0, Lcom/oppo/preference/OppoPreferenceManager;->mPreferencesScreens:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 755
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 757
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 758
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/DialogInterface;

    invoke-interface {v2}, Landroid/content/DialogInterface;->dismiss()V

    .line 757
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 755
    .end local v0           #i:I
    .end local v1           #screensToDismiss:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/DialogInterface;>;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public static getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .parameter "context"

    .prologue
    .line 361
    invoke-static {p0}, Lcom/oppo/preference/OppoPreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/oppo/preference/OppoPreferenceManager;->getDefaultSharedPreferencesMode()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private static getDefaultSharedPreferencesMode()I
    .locals 1

    .prologue
    .line 370
    const/4 v0, 0x0

    return v0
.end method

.method private static getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_preferences"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 165
    iput-object p1, p0, Lcom/oppo/preference/OppoPreferenceManager;->mContext:Landroid/content/Context;

    .line 167
    invoke-static {p1}, Lcom/oppo/preference/OppoPreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/preference/OppoPreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method private queryIntentActivities(Landroid/content/Intent;)Ljava/util/List;
    .locals 2
    .parameter "queryIntent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static setDefaultValues(Landroid/content/Context;IZ)V
    .locals 2
    .parameter "context"
    .parameter "resId"
    .parameter "readAgain"

    .prologue
    .line 436
    invoke-static {p0}, Lcom/oppo/preference/OppoPreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/oppo/preference/OppoPreferenceManager;->getDefaultSharedPreferencesMode()I

    move-result v1

    invoke-static {p0, v0, v1, p1, p2}, Lcom/oppo/preference/OppoPreferenceManager;->setDefaultValues(Landroid/content/Context;Ljava/lang/String;IIZ)V

    .line 438
    return-void
.end method

.method public static setDefaultValues(Landroid/content/Context;Ljava/lang/String;IIZ)V
    .locals 7
    .parameter "context"
    .parameter "sharedPreferencesName"
    .parameter "sharedPreferencesMode"
    .parameter "resId"
    .parameter "readAgain"

    .prologue
    const/4 v5, 0x0

    .line 450
    const-string v4, "_has_set_default_values"

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 453
    .local v0, defaultValueSp:Landroid/content/SharedPreferences;
    if-nez p4, :cond_0

    const-string v4, "_has_set_default_values"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1

    .line 454
    :cond_0
    new-instance v2, Lcom/oppo/preference/OppoPreferenceManager;

    invoke-direct {v2, p0}, Lcom/oppo/preference/OppoPreferenceManager;-><init>(Landroid/content/Context;)V

    .line 455
    .local v2, pm:Lcom/oppo/preference/OppoPreferenceManager;
    invoke-virtual {v2, p1}, Lcom/oppo/preference/OppoPreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 456
    invoke-virtual {v2, p2}, Lcom/oppo/preference/OppoPreferenceManager;->setSharedPreferencesMode(I)V

    .line 457
    const/4 v4, 0x0

    invoke-virtual {v2, p0, p3, v4}, Lcom/oppo/preference/OppoPreferenceManager;->inflateFromResource(Landroid/content/Context;ILcom/oppo/preference/OppoPreferenceScreen;)Lcom/oppo/preference/OppoPreferenceScreen;

    .line 459
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "_has_set_default_values"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 462
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    :try_start_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 471
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #pm:Lcom/oppo/preference/OppoPreferenceManager;
    :cond_1
    :goto_0
    return-void

    .line 464
    .restart local v1       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v2       #pm:Lcom/oppo/preference/OppoPreferenceManager;
    :catch_0
    move-exception v3

    .line 468
    .local v3, unused:Ljava/lang/AbstractMethodError;
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private setNoCommit(Z)V
    .locals 2
    .parameter "noCommit"

    .prologue
    .line 506
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/oppo/preference/OppoPreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_0

    .line 508
    :try_start_0
    iget-object v1, p0, Lcom/oppo/preference/OppoPreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 517
    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/oppo/preference/OppoPreferenceManager;->mNoCommit:Z

    .line 518
    return-void

    .line 510
    :catch_0
    move-exception v0

    .line 514
    .local v0, unused:Ljava/lang/AbstractMethodError;
    iget-object v1, p0, Lcom/oppo/preference/OppoPreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method


# virtual methods
.method addPreferencesScreen(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "screen"

    .prologue
    .line 712
    monitor-enter p0

    .line 714
    :try_start_0
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceManager;->mPreferencesScreens:Ljava/util/List;

    if-nez v0, :cond_0

    .line 715
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/preference/OppoPreferenceManager;->mPreferencesScreens:Ljava/util/List;

    .line 718
    :cond_0
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceManager;->mPreferencesScreens:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 719
    monitor-exit p0

    .line 720
    return-void

    .line 719
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public createPreferenceScreen(Landroid/content/Context;)Lcom/oppo/preference/OppoPreferenceScreen;
    .locals 2
    .parameter "context"

    .prologue
    .line 277
    new-instance v0, Lcom/oppo/preference/OppoPreferenceScreen;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oppo/preference/OppoPreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 278
    .local v0, preferenceScreen:Lcom/oppo/preference/OppoPreferenceScreen;
    invoke-virtual {v0, p0}, Lcom/oppo/preference/OppoPreference;->onAttachedToHierarchy(Lcom/oppo/preference/OppoPreferenceManager;)V

    .line 279
    return-object v0
.end method

.method public dispatchActivityDestroy()V
    .locals 5

    .prologue
    .line 679
    const/4 v2, 0x0

    .line 681
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/oppo/preference/OppoPreferenceManager$OnActivityDestroyListener;>;"
    monitor-enter p0

    .line 682
    :try_start_0
    iget-object v4, p0, Lcom/oppo/preference/OppoPreferenceManager;->mActivityDestroyListeners:Ljava/util/List;

    if-eqz v4, :cond_0

    .line 683
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/oppo/preference/OppoPreferenceManager;->mActivityDestroyListeners:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Lcom/oppo/preference/OppoPreferenceManager$OnActivityDestroyListener;>;"
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Lcom/oppo/preference/OppoPreferenceManager$OnActivityDestroyListener;>;"
    move-object v2, v3

    .line 685
    .end local v3           #list:Ljava/util/List;,"Ljava/util/List<Lcom/oppo/preference/OppoPreferenceManager$OnActivityDestroyListener;>;"
    .restart local v2       #list:Ljava/util/List;,"Ljava/util/List<Lcom/oppo/preference/OppoPreferenceManager$OnActivityDestroyListener;>;"
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 687
    if-eqz v2, :cond_1

    .line 688
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 689
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 690
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oppo/preference/OppoPreferenceManager$OnActivityDestroyListener;

    invoke-interface {v4}, Lcom/oppo/preference/OppoPreferenceManager$OnActivityDestroyListener;->onActivityDestroy()V

    .line 689
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 685
    .end local v0           #N:I
    .end local v1           #i:I
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 695
    :cond_1
    invoke-direct {p0}, Lcom/oppo/preference/OppoPreferenceManager;->dismissAllScreens()V

    .line 696
    return-void
.end method

.method public dispatchActivityPause()V
    .locals 4

    .prologue
    .line 901
    monitor-enter p0

    .line 902
    :try_start_0
    iget-object v3, p0, Lcom/oppo/preference/OppoPreferenceManager;->mActivityPauseListeners:Ljava/util/List;

    if-nez v3, :cond_1

    .line 903
    monitor-exit p0

    .line 912
    :cond_0
    return-void

    .line 905
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/oppo/preference/OppoPreferenceManager;->mActivityPauseListeners:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 906
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/oppo/preference/OppoPreferenceManager$OnActivityPauseListener;>;"
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 908
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 909
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 910
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oppo/preference/OppoPreferenceManager$OnActivityPauseListener;

    invoke-interface {v3}, Lcom/oppo/preference/OppoPreferenceManager$OnActivityPauseListener;->onActivityPause()V

    .line 909
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 906
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Lcom/oppo/preference/OppoPreferenceManager$OnActivityPauseListener;>;"
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public dispatchActivityRefresh()V
    .locals 4

    .prologue
    .line 950
    monitor-enter p0

    .line 951
    :try_start_0
    iget-object v3, p0, Lcom/oppo/preference/OppoPreferenceManager;->mActivityRefreshListeners:Ljava/util/List;

    if-nez v3, :cond_1

    .line 952
    monitor-exit p0

    .line 961
    :cond_0
    return-void

    .line 954
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/oppo/preference/OppoPreferenceManager;->mActivityRefreshListeners:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 955
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/oppo/preference/OppoPreferenceManager$OnActivityRefreshListener;>;"
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 957
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 958
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 959
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oppo/preference/OppoPreferenceManager$OnActivityRefreshListener;

    invoke-interface {v3}, Lcom/oppo/preference/OppoPreferenceManager$OnActivityRefreshListener;->onActivityRefresh()V

    .line 958
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 955
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Lcom/oppo/preference/OppoPreferenceManager$OnActivityRefreshListener;>;"
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public dispatchActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 581
    monitor-enter p0

    .line 582
    :try_start_0
    iget-object v3, p0, Lcom/oppo/preference/OppoPreferenceManager;->mActivityResultListeners:Ljava/util/List;

    if-nez v3, :cond_1

    .line 583
    monitor-exit p0

    .line 593
    :cond_0
    return-void

    .line 584
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/oppo/preference/OppoPreferenceManager;->mActivityResultListeners:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 585
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/oppo/preference/OppoPreferenceManager$OnActivityResultListener;>;"
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 587
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 588
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 589
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oppo/preference/OppoPreferenceManager$OnActivityResultListener;

    invoke-interface {v3, p1, p2, p3}, Lcom/oppo/preference/OppoPreferenceManager$OnActivityResultListener;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 588
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 585
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Lcom/oppo/preference/OppoPreferenceManager$OnActivityResultListener;>;"
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public dispatchActivityStop()V
    .locals 4

    .prologue
    .line 632
    monitor-enter p0

    .line 633
    :try_start_0
    iget-object v3, p0, Lcom/oppo/preference/OppoPreferenceManager;->mActivityStopListeners:Ljava/util/List;

    if-nez v3, :cond_1

    .line 634
    monitor-exit p0

    .line 642
    :cond_0
    return-void

    .line 635
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/oppo/preference/OppoPreferenceManager;->mActivityStopListeners:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 636
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/oppo/preference/OppoPreferenceManager$OnActivityStopListener;>;"
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 638
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 639
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 640
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oppo/preference/OppoPreferenceManager$OnActivityStopListener;

    invoke-interface {v3}, Lcom/oppo/preference/OppoPreferenceManager$OnActivityStopListener;->onActivityStop()V

    .line 639
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 636
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Lcom/oppo/preference/OppoPreferenceManager$OnActivityStopListener;>;"
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public dispatchActivityVolumeClick(I)V
    .locals 4
    .parameter "preferenceItemType"

    .prologue
    .line 1000
    monitor-enter p0

    .line 1001
    :try_start_0
    iget-object v3, p0, Lcom/oppo/preference/OppoPreferenceManager;->mActivityVolumeClickListeners:Ljava/util/List;

    if-nez v3, :cond_1

    .line 1002
    monitor-exit p0

    .line 1011
    :cond_0
    return-void

    .line 1004
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/oppo/preference/OppoPreferenceManager;->mActivityVolumeClickListeners:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1005
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/oppo/preference/OppoPreferenceManager$OnActivityVolumeClickListener;>;"
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1007
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 1008
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1009
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oppo/preference/OppoPreferenceManager$OnActivityVolumeClickListener;

    invoke-interface {v3, p1}, Lcom/oppo/preference/OppoPreferenceManager$OnActivityVolumeClickListener;->onActivityVolumeClick(I)V

    .line 1008
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1005
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Lcom/oppo/preference/OppoPreferenceManager$OnActivityVolumeClickListener;>;"
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public dispatchNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 740
    invoke-direct {p0}, Lcom/oppo/preference/OppoPreferenceManager;->dismissAllScreens()V

    .line 741
    return-void
.end method

.method public findPreference(Ljava/lang/CharSequence;)Lcom/oppo/preference/OppoPreference;
    .locals 1
    .parameter "key"

    .prologue
    .line 408
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceManager;->mPreferenceScreen:Lcom/oppo/preference/OppoPreferenceScreen;

    if-nez v0, :cond_0

    .line 409
    const/4 v0, 0x0

    .line 412
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceManager;->mPreferenceScreen:Lcom/oppo/preference/OppoPreferenceScreen;

    invoke-virtual {v0, p1}, Lcom/oppo/preference/OppoPreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Lcom/oppo/preference/OppoPreference;

    move-result-object v0

    goto :goto_0
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceManager;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getEditor()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 483
    iget-boolean v0, p0, Lcom/oppo/preference/OppoPreferenceManager;->mNoCommit:Z

    if-eqz v0, :cond_1

    .line 484
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    .line 485
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/preference/OppoPreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 490
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    goto :goto_0
.end method

.method getFragment()Lcom/oppo/preference/OppoPreferenceFragment;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceManager;->mFragment:Lcom/oppo/preference/OppoPreferenceFragment;

    return-object v0
.end method

.method getNextId()J
    .locals 4

    .prologue
    .line 288
    monitor-enter p0

    .line 289
    :try_start_0
    iget-wide v0, p0, Lcom/oppo/preference/OppoPreferenceManager;->mNextId:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/oppo/preference/OppoPreferenceManager;->mNextId:J

    monitor-exit p0

    return-wide v0

    .line 290
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getNextRequestCode()I
    .locals 2

    .prologue
    .line 706
    monitor-enter p0

    .line 707
    :try_start_0
    iget v0, p0, Lcom/oppo/preference/OppoPreferenceManager;->mNextRequestCode:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/oppo/preference/OppoPreferenceManager;->mNextRequestCode:I

    monitor-exit p0

    return v0

    .line 708
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getOnPreferenceToggleListener()Lcom/oppo/preference/OppoPreferenceManager$OnPreferenceToggleListener;
    .locals 1

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceManager;->mOnPreferenceToggleListener:Lcom/oppo/preference/OppoPreferenceManager$OnPreferenceToggleListener;

    return-object v0
.end method

.method public getOnPreferenceTreeClickListener()Lcom/oppo/preference/OppoPreferenceManager$OnPreferenceTreeClickListener;
    .locals 1

    .prologue
    .line 773
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceManager;->mOnPreferenceTreeClickListener:Lcom/oppo/preference/OppoPreferenceManager$OnPreferenceTreeClickListener;

    return-object v0
.end method

.method public getPreferenceScreen()Lcom/oppo/preference/OppoPreferenceScreen;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceManager;->mPreferenceScreen:Lcom/oppo/preference/OppoPreferenceScreen;

    return-object v0
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 344
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oppo/preference/OppoPreferenceManager;->mSharedPreferencesName:Ljava/lang/String;

    iget v2, p0, Lcom/oppo/preference/OppoPreferenceManager;->mSharedPreferencesMode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/preference/OppoPreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getSharedPreferencesMode()I
    .locals 1

    .prologue
    .line 323
    iget v0, p0, Lcom/oppo/preference/OppoPreferenceManager;->mSharedPreferencesMode:I

    return v0
.end method

.method public getSharedPreferencesName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceManager;->mSharedPreferencesName:Ljava/lang/String;

    return-object v0
.end method

.method public inflateFromIntent(Landroid/content/Intent;Lcom/oppo/preference/OppoPreferenceScreen;)Lcom/oppo/preference/OppoPreferenceScreen;
    .locals 13
    .parameter "queryIntent"
    .parameter "rootPreferences"

    .prologue
    .line 208
    invoke-direct {p0, p1}, Lcom/oppo/preference/OppoPreferenceManager;->queryIntentActivities(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    .line 209
    .local v0, activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 211
    .local v5, inflatedRes:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v4, v10, -0x1

    .local v4, i:I
    :goto_0
    if-ltz v4, :cond_2

    .line 212
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    iget-object v1, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 213
    .local v1, activityInfo:Landroid/content/pm/ActivityInfo;
    iget-object v7, v1, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    .line 215
    .local v7, metaData:Landroid/os/Bundle;
    if-eqz v7, :cond_0

    const-string v10, "com.oppo.preference"

    invoke-virtual {v7, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 211
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 221
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v12, "com.oppo.preference"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 224
    .local v9, uniqueResId:Ljava/lang/String;
    invoke-virtual {v5, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 225
    invoke-virtual {v5, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 229
    :try_start_0
    iget-object v10, p0, Lcom/oppo/preference/OppoPreferenceManager;->mContext:Landroid/content/Context;

    iget-object v11, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 237
    .local v2, context:Landroid/content/Context;
    new-instance v6, Lcom/oppo/preference/OppoPreferenceInflater;

    invoke-direct {v6, v2, p0}, Lcom/oppo/preference/OppoPreferenceInflater;-><init>(Landroid/content/Context;Lcom/oppo/preference/OppoPreferenceManager;)V

    .line 238
    .local v6, inflater:Lcom/oppo/preference/OppoPreferenceInflater;
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-string v11, "com.oppo.preference"

    invoke-virtual {v1, v10, v11}, Landroid/content/pm/PackageItemInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v8

    .line 240
    .local v8, parser:Landroid/content/res/XmlResourceParser;
    const/4 v10, 0x1

    invoke-virtual {v6, v8, p2, v10}, Lcom/oppo/preference/OppoGenericInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Lcom/oppo/preference/OppoGenericInflater$Parent;Z)Ljava/lang/Object;

    move-result-object p2

    .end local p2
    check-cast p2, Lcom/oppo/preference/OppoPreferenceScreen;

    .line 242
    .restart local p2
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_1

    .line 231
    .end local v2           #context:Landroid/content/Context;
    .end local v6           #inflater:Lcom/oppo/preference/OppoPreferenceInflater;
    .end local v8           #parser:Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v3

    .line 232
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v10, "OppoPreferenceManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Could not create context for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 246
    .end local v1           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v3           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v7           #metaData:Landroid/os/Bundle;
    .end local v9           #uniqueResId:Ljava/lang/String;
    :cond_2
    invoke-virtual {p2, p0}, Lcom/oppo/preference/OppoPreference;->onAttachedToHierarchy(Lcom/oppo/preference/OppoPreferenceManager;)V

    .line 248
    return-object p2
.end method

.method public inflateFromResource(Landroid/content/Context;ILcom/oppo/preference/OppoPreferenceScreen;)Lcom/oppo/preference/OppoPreferenceScreen;
    .locals 2
    .parameter "context"
    .parameter "resId"
    .parameter "rootPreferences"

    .prologue
    const/4 v1, 0x1

    .line 264
    invoke-direct {p0, v1}, Lcom/oppo/preference/OppoPreferenceManager;->setNoCommit(Z)V

    .line 266
    new-instance v0, Lcom/oppo/preference/OppoPreferenceInflater;

    invoke-direct {v0, p1, p0}, Lcom/oppo/preference/OppoPreferenceInflater;-><init>(Landroid/content/Context;Lcom/oppo/preference/OppoPreferenceManager;)V

    .line 267
    .local v0, inflater:Lcom/oppo/preference/OppoPreferenceInflater;
    invoke-virtual {v0, p2, p3, v1}, Lcom/oppo/preference/OppoGenericInflater;->inflate(ILcom/oppo/preference/OppoGenericInflater$Parent;Z)Ljava/lang/Object;

    move-result-object p3

    .end local p3
    check-cast p3, Lcom/oppo/preference/OppoPreferenceScreen;

    .line 268
    .restart local p3
    invoke-virtual {p3, p0}, Lcom/oppo/preference/OppoPreference;->onAttachedToHierarchy(Lcom/oppo/preference/OppoPreferenceManager;)V

    .line 271
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/oppo/preference/OppoPreferenceManager;->setNoCommit(Z)V

    .line 273
    return-object p3
.end method

.method public registerOnActivityDestroyListener(Lcom/oppo/preference/OppoPreferenceManager$OnActivityDestroyListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 650
    monitor-enter p0

    .line 651
    :try_start_0
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceManager;->mActivityDestroyListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 652
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/preference/OppoPreferenceManager;->mActivityDestroyListeners:Ljava/util/List;

    .line 655
    :cond_0
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceManager;->mActivityDestroyListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 656
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceManager;->mActivityDestroyListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 658
    :cond_1
    monitor-exit p0

    .line 659
    return-void

    .line 658
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerOnActivityPauseListener(Lcom/oppo/preference/OppoPreferenceManager$OnActivityPauseListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 870
    monitor-enter p0

    .line 871
    :try_start_0
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceManager;->mActivityPauseListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 872
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/preference/OppoPreferenceManager;->mActivityPauseListeners:Ljava/util/List;

    .line 875
    :cond_0
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceManager;->mActivityPauseListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 876
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceManager;->mActivityPauseListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 878
    :cond_1
    monitor-exit p0

    .line 879
    return-void

    .line 878
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerOnActivityRefreshListener(Lcom/oppo/preference/OppoPreferenceManager$OnActivityRefreshListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 920
    monitor-enter p0

    .line 921
    :try_start_0
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceManager;->mActivityRefreshListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 922
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/preference/OppoPreferenceManager;->mActivityRefreshListeners:Ljava/util/List;

    .line 925
    :cond_0
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceManager;->mActivityRefreshListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 926
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceManager;->mActivityRefreshListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 928
    :cond_1
    monitor-exit p0

    .line 929
    return-void

    .line 928
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerOnActivityResultListener(Lcom/oppo/preference/OppoPreferenceManager$OnActivityResultListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 550
    monitor-enter p0

    .line 551
    :try_start_0
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceManager;->mActivityResultListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 552
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/preference/OppoPreferenceManager;->mActivityResultListeners:Ljava/util/List;

    .line 555
    :cond_0
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceManager;->mActivityResultListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 556
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceManager;->mActivityResultListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 558
    :cond_1
    monitor-exit p0

    .line 559
    return-void

    .line 558
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerOnActivityStopListener(Lcom/oppo/preference/OppoPreferenceManager$OnActivityStopListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 601
    monitor-enter p0

    .line 602
    :try_start_0
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceManager;->mActivityStopListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 603
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/preference/OppoPreferenceManager;->mActivityStopListeners:Ljava/util/List;

    .line 606
    :cond_0
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceManager;->mActivityStopListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 607
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceManager;->mActivityStopListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 609
    :cond_1
    monitor-exit p0

    .line 610
    return-void

    .line 609
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerOnActivityVolumeClickListener(Lcom/oppo/preference/OppoPreferenceManager$OnActivityVolumeClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 969
    monitor-enter p0

    .line 970
    :try_start_0
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceManager;->mActivityVolumeClickListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 971
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/preference/OppoPreferenceManager;->mActivityVolumeClickListeners:Ljava/util/List;

    .line 974
    :cond_0
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceManager;->mActivityVolumeClickListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 975
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceManager;->mActivityVolumeClickListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 977
    :cond_1
    monitor-exit p0

    .line 978
    return-void

    .line 977
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method removePreferencesScreen(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "screen"

    .prologue
    .line 723
    monitor-enter p0

    .line 725
    :try_start_0
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceManager;->mPreferencesScreens:Ljava/util/List;

    if-nez v0, :cond_0

    .line 726
    monitor-exit p0

    .line 731
    :goto_0
    return-void

    .line 729
    :cond_0
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceManager;->mPreferencesScreens:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 730
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setFragment(Lcom/oppo/preference/OppoPreferenceFragment;)V
    .locals 0
    .parameter "fragment"

    .prologue
    .line 174
    iput-object p1, p0, Lcom/oppo/preference/OppoPreferenceManager;->mFragment:Lcom/oppo/preference/OppoPreferenceFragment;

    .line 175
    return-void
.end method

.method public setOnPreferenceToggleListener(Lcom/oppo/preference/OppoPreferenceManager$OnPreferenceToggleListener;)V
    .locals 0
    .parameter "onpreferencetogglelistener"

    .prologue
    .line 1019
    iput-object p1, p0, Lcom/oppo/preference/OppoPreferenceManager;->mOnPreferenceToggleListener:Lcom/oppo/preference/OppoPreferenceManager$OnPreferenceToggleListener;

    .line 1020
    return-void
.end method

.method public setOnPreferenceTreeClickListener(Lcom/oppo/preference/OppoPreferenceManager$OnPreferenceTreeClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 769
    iput-object p1, p0, Lcom/oppo/preference/OppoPreferenceManager;->mOnPreferenceTreeClickListener:Lcom/oppo/preference/OppoPreferenceManager$OnPreferenceTreeClickListener;

    .line 770
    return-void
.end method

.method public setPreferences(Lcom/oppo/preference/OppoPreferenceScreen;)Z
    .locals 1
    .parameter "preferenceScreen"

    .prologue
    .line 392
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceManager;->mPreferenceScreen:Lcom/oppo/preference/OppoPreferenceScreen;

    if-eq p1, v0, :cond_0

    .line 393
    iput-object p1, p0, Lcom/oppo/preference/OppoPreferenceManager;->mPreferenceScreen:Lcom/oppo/preference/OppoPreferenceScreen;

    .line 394
    const/4 v0, 0x1

    .line 397
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSharedPreferencesMode(I)V
    .locals 1
    .parameter "sharedPreferencesMode"

    .prologue
    .line 333
    iput p1, p0, Lcom/oppo/preference/OppoPreferenceManager;->mSharedPreferencesMode:I

    .line 334
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/preference/OppoPreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 335
    return-void
.end method

.method public setSharedPreferencesName(Ljava/lang/String;)V
    .locals 1
    .parameter "sharedPreferencesName"

    .prologue
    .line 311
    iput-object p1, p0, Lcom/oppo/preference/OppoPreferenceManager;->mSharedPreferencesName:Ljava/lang/String;

    .line 312
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/preference/OppoPreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 313
    return-void
.end method

.method shouldCommit()Z
    .locals 1

    .prologue
    .line 502
    iget-boolean v0, p0, Lcom/oppo/preference/OppoPreferenceManager;->mNoCommit:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unregisterOnActivityDestroyListener(Lcom/oppo/preference/OppoPreferenceManager$OnActivityDestroyListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 667
    monitor-enter p0

    .line 668
    :try_start_0
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceManager;->mActivityDestroyListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 669
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceManager;->mActivityDestroyListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 671
    :cond_0
    monitor-exit p0

    .line 672
    return-void

    .line 671
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterOnActivityPauseListener(Lcom/oppo/preference/OppoPreferenceManager$OnActivityPauseListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 887
    monitor-enter p0

    .line 888
    :try_start_0
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceManager;->mActivityPauseListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 889
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceManager;->mActivityPauseListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 891
    :cond_0
    monitor-exit p0

    .line 892
    return-void

    .line 891
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterOnActivityRefreshListener(Lcom/oppo/preference/OppoPreferenceManager$OnActivityRefreshListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 937
    monitor-enter p0

    .line 938
    :try_start_0
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceManager;->mActivityRefreshListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 939
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceManager;->mActivityRefreshListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 941
    :cond_0
    monitor-exit p0

    .line 942
    return-void

    .line 941
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method unregisterOnActivityResultListener(Lcom/oppo/preference/OppoPreferenceManager$OnActivityResultListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 567
    monitor-enter p0

    .line 568
    :try_start_0
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceManager;->mActivityResultListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceManager;->mActivityResultListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 571
    :cond_0
    monitor-exit p0

    .line 572
    return-void

    .line 571
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterOnActivityStopListener(Lcom/oppo/preference/OppoPreferenceManager$OnActivityStopListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 618
    monitor-enter p0

    .line 619
    :try_start_0
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceManager;->mActivityStopListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 620
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceManager;->mActivityStopListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 622
    :cond_0
    monitor-exit p0

    .line 623
    return-void

    .line 622
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterOnActivityVolumeClickListener(Lcom/oppo/preference/OppoPreferenceManager$OnActivityVolumeClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 986
    monitor-enter p0

    .line 987
    :try_start_0
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceManager;->mActivityVolumeClickListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 988
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceManager;->mActivityVolumeClickListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 990
    :cond_0
    monitor-exit p0

    .line 991
    return-void

    .line 990
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
