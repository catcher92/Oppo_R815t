.class public Landroid/app/Application;
.super Landroid/content/ContextWrapper;
.source "Application.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Application$ActivityLifecycleCallbacks;
    }
.end annotation


# instance fields
.field private mActivityLifecycleCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Application$ActivityLifecycleCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private mComponentCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field public mLoadedApk:Landroid/app/LoadedApk;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Application;->mComponentCallbacks:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Application;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    .line 70
    return-void
.end method

.method private collectActivityLifecycleCallbacks()[Ljava/lang/Object;
    .locals 3

    .prologue
    .line 245
    const/4 v0, 0x0

    .line 246
    .local v0, callbacks:[Ljava/lang/Object;
    iget-object v2, p0, Landroid/app/Application;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    monitor-enter v2

    .line 247
    :try_start_0
    iget-object v1, p0, Landroid/app/Application;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 248
    iget-object v1, p0, Landroid/app/Application;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 250
    :cond_0
    monitor-exit v2

    .line 251
    return-object v0

    .line 250
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private collectComponentCallbacks()[Ljava/lang/Object;
    .locals 3

    .prologue
    .line 235
    const/4 v0, 0x0

    .line 236
    .local v0, callbacks:[Ljava/lang/Object;
    iget-object v2, p0, Landroid/app/Application;->mComponentCallbacks:Ljava/util/ArrayList;

    monitor-enter v2

    .line 237
    :try_start_0
    iget-object v1, p0, Landroid/app/Application;->mComponentCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 238
    iget-object v1, p0, Landroid/app/Application;->mComponentCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 240
    :cond_0
    monitor-exit v2

    .line 241
    return-object v0

    .line 240
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method final attach(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 165
    invoke-virtual {p0, p1}, Landroid/content/ContextWrapper;->attachBaseContext(Landroid/content/Context;)V

    .line 166
    invoke-static {p1}, Landroid/app/ContextImpl;->getImpl(Landroid/content/Context;)Landroid/app/ContextImpl;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    iput-object v0, p0, Landroid/app/Application;->mLoadedApk:Landroid/app/LoadedApk;

    .line 167
    return-void
.end method

.method dispatchActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3
    .parameter "activity"
    .parameter "savedInstanceState"

    .prologue
    .line 170
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 171
    .local v0, callbacks:[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 172
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 173
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1, p2}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 172
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 177
    .end local v1           #i:I
    :cond_0
    return-void
.end method

.method dispatchActivityDestroyed(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 226
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 227
    .local v0, callbacks:[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 228
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 229
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityDestroyed(Landroid/app/Activity;)V

    .line 228
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 232
    .end local v1           #i:I
    :cond_0
    return-void
.end method

.method dispatchActivityPaused(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 198
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 199
    .local v0, callbacks:[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 200
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 201
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPaused(Landroid/app/Activity;)V

    .line 200
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 204
    .end local v1           #i:I
    :cond_0
    return-void
.end method

.method dispatchActivityResumed(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 189
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 190
    .local v0, callbacks:[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 191
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 192
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityResumed(Landroid/app/Activity;)V

    .line 191
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 195
    .end local v1           #i:I
    :cond_0
    return-void
.end method

.method dispatchActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3
    .parameter "activity"
    .parameter "outState"

    .prologue
    .line 216
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 217
    .local v0, callbacks:[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 218
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 219
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1, p2}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 218
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 223
    .end local v1           #i:I
    :cond_0
    return-void
.end method

.method dispatchActivityStarted(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 180
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 181
    .local v0, callbacks:[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 182
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 183
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityStarted(Landroid/app/Activity;)V

    .line 182
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 186
    .end local v1           #i:I
    :cond_0
    return-void
.end method

.method dispatchActivityStopped(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 207
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 208
    .local v0, callbacks:[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 209
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 210
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityStopped(Landroid/app/Activity;)V

    .line 209
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 213
    .end local v1           #i:I
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 103
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Typeface;->SetAppTypeFace(Ljava/lang/String;)V

    .line 106
    invoke-direct {p0}, Landroid/app/Application;->collectComponentCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 107
    .local v0, callbacks:[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 108
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 109
    aget-object v2, v0, v1

    check-cast v2, Landroid/content/ComponentCallbacks;

    invoke-interface {v2, p1}, Landroid/content/ComponentCallbacks;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 108
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 112
    .end local v1           #i:I
    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Typeface;->SetAppTypeFace(Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public onLowMemory()V
    .locals 3

    .prologue
    .line 115
    invoke-direct {p0}, Landroid/app/Application;->collectComponentCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 116
    .local v0, callbacks:[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 117
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 118
    aget-object v2, v0, v1

    check-cast v2, Landroid/content/ComponentCallbacks;

    invoke-interface {v2}, Landroid/content/ComponentCallbacks;->onLowMemory()V

    .line 117
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    .end local v1           #i:I
    :cond_0
    return-void
.end method

.method public onTerminate()V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 4
    .parameter "level"

    .prologue
    .line 124
    invoke-direct {p0}, Landroid/app/Application;->collectComponentCallbacks()[Ljava/lang/Object;

    move-result-object v1

    .line 125
    .local v1, callbacks:[Ljava/lang/Object;
    if-eqz v1, :cond_1

    .line 126
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 127
    aget-object v0, v1, v2

    .line 128
    .local v0, c:Ljava/lang/Object;
    instance-of v3, v0, Landroid/content/ComponentCallbacks2;

    if-eqz v3, :cond_0

    .line 129
    check-cast v0, Landroid/content/ComponentCallbacks2;

    .end local v0           #c:Ljava/lang/Object;
    invoke-interface {v0, p1}, Landroid/content/ComponentCallbacks2;->onTrimMemory(I)V

    .line 126
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 133
    .end local v2           #i:I
    :cond_1
    return-void
.end method

.method public registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 148
    iget-object v1, p0, Landroid/app/Application;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 149
    :try_start_0
    iget-object v0, p0, Landroid/app/Application;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    monitor-exit v1

    .line 151
    return-void

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 136
    iget-object v1, p0, Landroid/app/Application;->mComponentCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 137
    :try_start_0
    iget-object v0, p0, Landroid/app/Application;->mComponentCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    monitor-exit v1

    .line 139
    return-void

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 154
    iget-object v1, p0, Landroid/app/Application;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 155
    :try_start_0
    iget-object v0, p0, Landroid/app/Application;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 156
    monitor-exit v1

    .line 157
    return-void

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 142
    iget-object v1, p0, Landroid/app/Application;->mComponentCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 143
    :try_start_0
    iget-object v0, p0, Landroid/app/Application;->mComponentCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 144
    monitor-exit v1

    .line 145
    return-void

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
