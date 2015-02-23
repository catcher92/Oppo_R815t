.class public abstract Lcom/oppo/preference/OppoPreferenceFragment;
.super Landroid/app/Fragment;
.source "OppoPreferenceFragment.java"

# interfaces
.implements Lcom/oppo/preference/OppoPreferenceManager$OnPreferenceTreeClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/preference/OppoPreferenceFragment$OnPreferenceStartFragmentCallback;
    }
.end annotation


# static fields
.field private static final FIRST_REQUEST_CODE:I = 0x64

.field private static final MSG_BIND_PREFERENCES:I = 0x1

.field private static final PREFERENCES_TAG:Ljava/lang/String; = "android:preferences"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHavePrefs:Z

.field private mInitDone:Z

.field private mList:Landroid/widget/ListView;

.field private mListOnKeyListener:Landroid/view/View$OnKeyListener;

.field private mPreferenceManager:Lcom/oppo/preference/OppoPreferenceManager;

.field private final mRequestFocus:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 103
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 119
    new-instance v0, Lcom/oppo/preference/OppoPreferenceFragment$1;

    invoke-direct {v0, p0}, Lcom/oppo/preference/OppoPreferenceFragment$1;-><init>(Lcom/oppo/preference/OppoPreferenceFragment;)V

    iput-object v0, p0, Lcom/oppo/preference/OppoPreferenceFragment;->mHandler:Landroid/os/Handler;

    .line 132
    new-instance v0, Lcom/oppo/preference/OppoPreferenceFragment$2;

    invoke-direct {v0, p0}, Lcom/oppo/preference/OppoPreferenceFragment$2;-><init>(Lcom/oppo/preference/OppoPreferenceFragment;)V

    iput-object v0, p0, Lcom/oppo/preference/OppoPreferenceFragment;->mRequestFocus:Ljava/lang/Runnable;

    .line 364
    new-instance v0, Lcom/oppo/preference/OppoPreferenceFragment$3;

    invoke-direct {v0, p0}, Lcom/oppo/preference/OppoPreferenceFragment$3;-><init>(Lcom/oppo/preference/OppoPreferenceFragment;)V

    iput-object v0, p0, Lcom/oppo/preference/OppoPreferenceFragment;->mListOnKeyListener:Landroid/view/View$OnKeyListener;

    return-void
.end method

.method static synthetic access$000(Lcom/oppo/preference/OppoPreferenceFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/oppo/preference/OppoPreferenceFragment;->bindPreferences()V

    return-void
.end method

.method static synthetic access$100(Lcom/oppo/preference/OppoPreferenceFragment;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceFragment;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method private bindPreferences()V
    .locals 2

    .prologue
    .line 330
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreferenceFragment;->getPreferenceScreen()Lcom/oppo/preference/OppoPreferenceScreen;

    move-result-object v0

    .line 331
    .local v0, preferenceScreen:Lcom/oppo/preference/OppoPreferenceScreen;
    if-eqz v0, :cond_0

    .line 332
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/preference/OppoPreferenceScreen;->bind(Landroid/widget/ListView;)V

    .line 334
    :cond_0
    return-void
.end method

.method private ensureList()V
    .locals 4

    .prologue
    .line 343
    iget-object v2, p0, Lcom/oppo/preference/OppoPreferenceFragment;->mList:Landroid/widget/ListView;

    if-eqz v2, :cond_0

    .line 362
    :goto_0
    return-void

    .line 346
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 347
    .local v1, root:Landroid/view/View;
    if-nez v1, :cond_1

    .line 348
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Content view not yet created"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 350
    :cond_1
    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 351
    .local v0, rawListView:Landroid/view/View;
    instance-of v2, v0, Landroid/widget/ListView;

    if-nez v2, :cond_2

    .line 352
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Content has view with id attribute \'android.R.id.list\' that is not a ListView class"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 355
    :cond_2
    check-cast v0, Landroid/widget/ListView;

    .end local v0           #rawListView:Landroid/view/View;
    iput-object v0, p0, Lcom/oppo/preference/OppoPreferenceFragment;->mList:Landroid/widget/ListView;

    .line 356
    iget-object v2, p0, Lcom/oppo/preference/OppoPreferenceFragment;->mList:Landroid/widget/ListView;

    if-nez v2, :cond_3

    .line 357
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 360
    :cond_3
    iget-object v2, p0, Lcom/oppo/preference/OppoPreferenceFragment;->mList:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/oppo/preference/OppoPreferenceFragment;->mListOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 361
    iget-object v2, p0, Lcom/oppo/preference/OppoPreferenceFragment;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/oppo/preference/OppoPreferenceFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private postBindPreferences()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 324
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    :goto_0
    return-void

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private requirePreferenceManager()V
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceFragment;->mPreferenceManager:Lcom/oppo/preference/OppoPreferenceManager;

    if-nez v0, :cond_0

    .line 319
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This should be called after super.onCreate."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 321
    :cond_0
    return-void
.end method


# virtual methods
.method public addPreferencesFromIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 272
    invoke-direct {p0}, Lcom/oppo/preference/OppoPreferenceFragment;->requirePreferenceManager()V

    .line 274
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceFragment;->mPreferenceManager:Lcom/oppo/preference/OppoPreferenceManager;

    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreferenceFragment;->getPreferenceScreen()Lcom/oppo/preference/OppoPreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/oppo/preference/OppoPreferenceManager;->inflateFromIntent(Landroid/content/Intent;Lcom/oppo/preference/OppoPreferenceScreen;)Lcom/oppo/preference/OppoPreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/preference/OppoPreferenceFragment;->setPreferenceScreen(Lcom/oppo/preference/OppoPreferenceScreen;)V

    .line 275
    return-void
.end method

.method public addPreferencesFromResource(I)V
    .locals 3
    .parameter "preferencesResId"

    .prologue
    .line 284
    invoke-direct {p0}, Lcom/oppo/preference/OppoPreferenceFragment;->requirePreferenceManager()V

    .line 286
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceFragment;->mPreferenceManager:Lcom/oppo/preference/OppoPreferenceManager;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreferenceFragment;->getPreferenceScreen()Lcom/oppo/preference/OppoPreferenceScreen;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/oppo/preference/OppoPreferenceManager;->inflateFromResource(Landroid/content/Context;ILcom/oppo/preference/OppoPreferenceScreen;)Lcom/oppo/preference/OppoPreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/preference/OppoPreferenceFragment;->setPreferenceScreen(Lcom/oppo/preference/OppoPreferenceScreen;)V

    .line 288
    return-void
.end method

.method public findPreference(Ljava/lang/CharSequence;)Lcom/oppo/preference/OppoPreference;
    .locals 1
    .parameter "key"

    .prologue
    .line 311
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceFragment;->mPreferenceManager:Lcom/oppo/preference/OppoPreferenceManager;

    if-nez v0, :cond_0

    .line 312
    const/4 v0, 0x0

    .line 314
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceFragment;->mPreferenceManager:Lcom/oppo/preference/OppoPreferenceManager;

    invoke-virtual {v0, p1}, Lcom/oppo/preference/OppoPreferenceManager;->findPreference(Ljava/lang/CharSequence;)Lcom/oppo/preference/OppoPreference;

    move-result-object v0

    goto :goto_0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 338
    invoke-direct {p0}, Lcom/oppo/preference/OppoPreferenceFragment;->ensureList()V

    .line 339
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceFragment;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method public getPreferenceManager()Lcom/oppo/preference/OppoPreferenceManager;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceFragment;->mPreferenceManager:Lcom/oppo/preference/OppoPreferenceManager;

    return-object v0
.end method

.method public getPreferenceScreen()Lcom/oppo/preference/OppoPreferenceScreen;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceFragment;->mPreferenceManager:Lcom/oppo/preference/OppoPreferenceManager;

    invoke-virtual {v0}, Lcom/oppo/preference/OppoPreferenceManager;->getPreferenceScreen()Lcom/oppo/preference/OppoPreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 167
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 169
    iget-boolean v2, p0, Lcom/oppo/preference/OppoPreferenceFragment;->mHavePrefs:Z

    if-eqz v2, :cond_0

    .line 170
    invoke-direct {p0}, Lcom/oppo/preference/OppoPreferenceFragment;->bindPreferences()V

    .line 173
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oppo/preference/OppoPreferenceFragment;->mInitDone:Z

    .line 175
    if-eqz p1, :cond_1

    .line 176
    const-string v2, "android:preferences"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 177
    .local v0, container:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 178
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreferenceFragment;->getPreferenceScreen()Lcom/oppo/preference/OppoPreferenceScreen;

    move-result-object v1

    .line 179
    .local v1, preferenceScreen:Lcom/oppo/preference/OppoPreferenceScreen;
    if-eqz v1, :cond_1

    .line 180
    invoke-virtual {v1, v0}, Lcom/oppo/preference/OppoPreference;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 184
    .end local v0           #container:Landroid/os/Bundle;
    .end local v1           #preferenceScreen:Lcom/oppo/preference/OppoPreferenceScreen;
    :cond_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 227
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 229
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceFragment;->mPreferenceManager:Lcom/oppo/preference/OppoPreferenceManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oppo/preference/OppoPreferenceManager;->dispatchActivityResult(IILandroid/content/Intent;)V

    .line 230
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 155
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 156
    new-instance v0, Lcom/oppo/preference/OppoPreferenceManager;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Lcom/oppo/preference/OppoPreferenceManager;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/oppo/preference/OppoPreferenceFragment;->mPreferenceManager:Lcom/oppo/preference/OppoPreferenceManager;

    .line 157
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceFragment;->mPreferenceManager:Lcom/oppo/preference/OppoPreferenceManager;

    invoke-virtual {v0, p0}, Lcom/oppo/preference/OppoPreferenceManager;->setFragment(Lcom/oppo/preference/OppoPreferenceFragment;)V

    .line 158
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 162
    const v0, 0xc090417

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 209
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 210
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceFragment;->mPreferenceManager:Lcom/oppo/preference/OppoPreferenceManager;

    invoke-virtual {v0}, Lcom/oppo/preference/OppoPreferenceManager;->dispatchActivityDestroy()V

    .line 211
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 201
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/preference/OppoPreferenceFragment;->mList:Landroid/widget/ListView;

    .line 202
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oppo/preference/OppoPreferenceFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 203
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 204
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 205
    return-void
.end method

.method public onPreferenceTreeClick(Lcom/oppo/preference/OppoPreferenceScreen;Lcom/oppo/preference/OppoPreference;)Z
    .locals 1
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 295
    invoke-virtual {p2}, Lcom/oppo/preference/OppoPreference;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/oppo/preference/OppoPreferenceFragment$OnPreferenceStartFragmentCallback;

    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/oppo/preference/OppoPreferenceFragment$OnPreferenceStartFragmentCallback;

    invoke-interface {v0, p0, p2}, Lcom/oppo/preference/OppoPreferenceFragment$OnPreferenceStartFragmentCallback;->onPreferenceStartFragment(Lcom/oppo/preference/OppoPreferenceFragment;Lcom/oppo/preference/OppoPreference;)Z

    move-result v0

    .line 300
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 215
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 217
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreferenceFragment;->getPreferenceScreen()Lcom/oppo/preference/OppoPreferenceScreen;

    move-result-object v1

    .line 218
    .local v1, preferenceScreen:Lcom/oppo/preference/OppoPreferenceScreen;
    if-eqz v1, :cond_0

    .line 219
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 220
    .local v0, container:Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Lcom/oppo/preference/OppoPreference;->saveHierarchyState(Landroid/os/Bundle;)V

    .line 221
    const-string v2, "android:preferences"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 223
    .end local v0           #container:Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 188
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 189
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceFragment;->mPreferenceManager:Lcom/oppo/preference/OppoPreferenceManager;

    invoke-virtual {v0, p0}, Lcom/oppo/preference/OppoPreferenceManager;->setOnPreferenceTreeClickListener(Lcom/oppo/preference/OppoPreferenceManager$OnPreferenceTreeClickListener;)V

    .line 190
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 194
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 195
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceFragment;->mPreferenceManager:Lcom/oppo/preference/OppoPreferenceManager;

    invoke-virtual {v0}, Lcom/oppo/preference/OppoPreferenceManager;->dispatchActivityStop()V

    .line 196
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceFragment;->mPreferenceManager:Lcom/oppo/preference/OppoPreferenceManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/preference/OppoPreferenceManager;->setOnPreferenceTreeClickListener(Lcom/oppo/preference/OppoPreferenceManager$OnPreferenceTreeClickListener;)V

    .line 197
    return-void
.end method

.method public setPreferenceScreen(Lcom/oppo/preference/OppoPreferenceScreen;)V
    .locals 1
    .parameter "preferenceScreen"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceFragment;->mPreferenceManager:Lcom/oppo/preference/OppoPreferenceManager;

    invoke-virtual {v0, p1}, Lcom/oppo/preference/OppoPreferenceManager;->setPreferences(Lcom/oppo/preference/OppoPreferenceScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 249
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/preference/OppoPreferenceFragment;->mHavePrefs:Z

    .line 250
    iget-boolean v0, p0, Lcom/oppo/preference/OppoPreferenceFragment;->mInitDone:Z

    if-eqz v0, :cond_0

    .line 251
    invoke-direct {p0}, Lcom/oppo/preference/OppoPreferenceFragment;->postBindPreferences()V

    .line 254
    :cond_0
    return-void
.end method
