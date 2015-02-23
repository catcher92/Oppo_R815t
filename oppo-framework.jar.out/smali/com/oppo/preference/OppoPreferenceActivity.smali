.class public abstract Lcom/oppo/preference/OppoPreferenceActivity;
.super Lcom/oppo/app/OppoMultiListActivity;
.source "OppoPreferenceActivity.java"

# interfaces
.implements Lcom/oppo/preference/OppoPreferenceFragment$OnPreferenceStartFragmentCallback;
.implements Lcom/oppo/preference/OppoPreferenceManager$OnPreferenceTreeClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/preference/OppoPreferenceActivity$Header;,
        Lcom/oppo/preference/OppoPreferenceActivity$HeaderAdapter;
    }
.end annotation


# static fields
.field private static final BACK_STACK_PREFS:Ljava/lang/String; = ":android:prefs"

.field private static final CUR_HEADER_TAG:Ljava/lang/String; = ":android:cur_header"

.field public static final EXTRA_NO_HEADERS:Ljava/lang/String; = ":android:no_headers"

.field private static final EXTRA_PREFS_SET_BACK_TEXT:Ljava/lang/String; = "extra_prefs_set_back_text"

.field private static final EXTRA_PREFS_SET_NEXT_TEXT:Ljava/lang/String; = "extra_prefs_set_next_text"

.field private static final EXTRA_PREFS_SHOW_BUTTON_BAR:Ljava/lang/String; = "extra_prefs_show_button_bar"

.field private static final EXTRA_PREFS_SHOW_SKIP:Ljava/lang/String; = "extra_prefs_show_skip"

.field public static final EXTRA_SHOW_FRAGMENT:Ljava/lang/String; = ":android:show_fragment"

.field public static final EXTRA_SHOW_FRAGMENT_ARGUMENTS:Ljava/lang/String; = ":android:show_fragment_args"

.field public static final EXTRA_SHOW_FRAGMENT_SHORT_TITLE:Ljava/lang/String; = ":android:show_fragment_short_title"

.field public static final EXTRA_SHOW_FRAGMENT_TITLE:Ljava/lang/String; = ":android:show_fragment_title"

.field private static final FIRST_REQUEST_CODE:I = 0x64

.field private static final HEADERS_TAG:Ljava/lang/String; = ":android:headers"

.field public static final HEADER_ID_UNDEFINED:J = -0x1L

.field private static final MSG_BIND_PREFERENCES:I = 0x1

.field private static final MSG_BUILD_HEADERS:I = 0x2

.field private static final PREFERENCES_TAG:Ljava/lang/String; = ":android:preferences"


# instance fields
.field private mCurHeader:Lcom/oppo/preference/OppoPreferenceActivity$Header;

.field private mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

.field private mHandler:Landroid/os/Handler;

.field private mHeadLayoutResId:I

.field private final mHeaders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oppo/preference/OppoPreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private mListFooter:Landroid/widget/FrameLayout;

.field private mNextButton:Landroid/widget/Button;

.field private mPreferenceManager:Lcom/oppo/preference/OppoPreferenceManager;

.field private mPrefsContainer:Landroid/view/ViewGroup;

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mSinglePane:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/oppo/app/OppoMultiListActivity;-><init>()V

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    .line 196
    const v0, 0xc09041b

    iput v0, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mHeadLayoutResId:I

    .line 225
    new-instance v0, Lcom/oppo/preference/OppoPreferenceActivity$1;

    invoke-direct {v0, p0}, Lcom/oppo/preference/OppoPreferenceActivity$1;-><init>(Lcom/oppo/preference/OppoPreferenceActivity;)V

    iput-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mHandler:Landroid/os/Handler;

    .line 339
    return-void
.end method

.method static synthetic access$000(Lcom/oppo/preference/OppoPreferenceActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/oppo/preference/OppoPreferenceActivity;->bindPreferences()V

    return-void
.end method

.method static synthetic access$100(Lcom/oppo/preference/OppoPreferenceActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oppo/preference/OppoPreferenceActivity;)Landroid/widget/ListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/oppo/app/OppoMultiListActivity;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oppo/preference/OppoPreferenceActivity;)Landroid/widget/ListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/oppo/app/OppoMultiListActivity;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oppo/preference/OppoPreferenceActivity;)Lcom/oppo/preference/OppoPreferenceActivity$Header;
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mCurHeader:Lcom/oppo/preference/OppoPreferenceActivity$Header;

    return-object v0
.end method

.method private bindPreferences()V
    .locals 2

    .prologue
    .line 1380
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreferenceActivity;->getPreferenceScreen()Lcom/oppo/preference/OppoPreferenceScreen;

    move-result-object v0

    .line 1381
    .local v0, preferenceScreen:Lcom/oppo/preference/OppoPreferenceScreen;
    if-eqz v0, :cond_0

    .line 1382
    invoke-virtual {p0}, Lcom/oppo/app/OppoMultiListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/preference/OppoPreferenceScreen;->bind(Landroid/widget/ListView;)V

    .line 1383
    iget-object v1, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mSavedInstanceState:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 1384
    iget-object v1, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-super {p0, v1}, Lcom/oppo/app/OppoMultiListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1385
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mSavedInstanceState:Landroid/os/Bundle;

    .line 1388
    :cond_0
    return-void
.end method

.method private postBindPreferences()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1374
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1377
    :goto_0
    return-void

    .line 1376
    :cond_0
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private requirePreferenceManager()V
    .locals 2

    .prologue
    .line 1403
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mPreferenceManager:Lcom/oppo/preference/OppoPreferenceManager;

    if-nez v0, :cond_1

    .line 1404
    iget-object v0, p0, Lcom/oppo/app/OppoMultiListActivity;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    .line 1405
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This should be called after super.onCreate."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1407
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Modern two-pane OppoPreferenceActivity requires use of a OppoPreferenceFragment"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1410
    :cond_1
    return-void
.end method

.method private switchToHeaderInner(Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 5
    .parameter "fragmentName"
    .parameter "args"
    .parameter "direction"

    .prologue
    .line 1196
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, ":android:prefs"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 1198
    invoke-static {p0, p1, p2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    .line 1199
    .local v0, f:Landroid/app/Fragment;
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 1200
    .local v1, transaction:Landroid/app/FragmentTransaction;
    const/16 v2, 0x1003

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 1201
    const v2, 0xc020436

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1202
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1203
    return-void
.end method


# virtual methods
.method public addPreferencesFromIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1459
    invoke-direct {p0}, Lcom/oppo/preference/OppoPreferenceActivity;->requirePreferenceManager()V

    .line 1461
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mPreferenceManager:Lcom/oppo/preference/OppoPreferenceManager;

    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreferenceActivity;->getPreferenceScreen()Lcom/oppo/preference/OppoPreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/oppo/preference/OppoPreferenceManager;->inflateFromIntent(Landroid/content/Intent;Lcom/oppo/preference/OppoPreferenceScreen;)Lcom/oppo/preference/OppoPreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/preference/OppoPreferenceActivity;->setPreferenceScreen(Lcom/oppo/preference/OppoPreferenceScreen;)V

    .line 1462
    return-void
.end method

.method public addPreferencesFromResource(I)V
    .locals 2
    .parameter "preferencesResId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1474
    invoke-direct {p0}, Lcom/oppo/preference/OppoPreferenceActivity;->requirePreferenceManager()V

    .line 1476
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mPreferenceManager:Lcom/oppo/preference/OppoPreferenceManager;

    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreferenceActivity;->getPreferenceScreen()Lcom/oppo/preference/OppoPreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/oppo/preference/OppoPreferenceManager;->inflateFromResource(Landroid/content/Context;ILcom/oppo/preference/OppoPreferenceScreen;)Lcom/oppo/preference/OppoPreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/preference/OppoPreferenceActivity;->setPreferenceScreen(Lcom/oppo/preference/OppoPreferenceScreen;)V

    .line 1478
    return-void
.end method

.method findBestMatchingHeader(Lcom/oppo/preference/OppoPreferenceActivity$Header;Ljava/util/ArrayList;)Lcom/oppo/preference/OppoPreferenceActivity$Header;
    .locals 9
    .parameter "cur"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oppo/preference/OppoPreferenceActivity$Header;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oppo/preference/OppoPreferenceActivity$Header;",
            ">;)",
            "Lcom/oppo/preference/OppoPreferenceActivity$Header;"
        }
    .end annotation

    .prologue
    .local p2, from:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/oppo/preference/OppoPreferenceActivity$Header;>;"
    const/4 v8, 0x1

    .line 1235
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1236
    .local v2, matches:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/oppo/preference/OppoPreferenceActivity$Header;>;"
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 1237
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oppo/preference/OppoPreferenceActivity$Header;

    .line 1238
    .local v3, oh:Lcom/oppo/preference/OppoPreferenceActivity$Header;
    if-eq p1, v3, :cond_0

    iget-wide v4, p1, Lcom/oppo/preference/OppoPreferenceActivity$Header;->id:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    iget-wide v4, p1, Lcom/oppo/preference/OppoPreferenceActivity$Header;->id:J

    iget-wide v6, v3, Lcom/oppo/preference/OppoPreferenceActivity$Header;->id:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    .line 1240
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1241
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1258
    .end local v3           #oh:Lcom/oppo/preference/OppoPreferenceActivity$Header;
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1259
    .local v0, NM:I
    if-ne v0, v8, :cond_7

    .line 1260
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oppo/preference/OppoPreferenceActivity$Header;

    move-object v3, v4

    .line 1276
    :cond_2
    :goto_1
    return-object v3

    .line 1244
    .end local v0           #NM:I
    .restart local v3       #oh:Lcom/oppo/preference/OppoPreferenceActivity$Header;
    :cond_3
    iget-object v4, p1, Lcom/oppo/preference/OppoPreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 1245
    iget-object v4, p1, Lcom/oppo/preference/OppoPreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v5, v3, Lcom/oppo/preference/OppoPreferenceActivity$Header;->fragment:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1246
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1236
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1248
    :cond_5
    iget-object v4, p1, Lcom/oppo/preference/OppoPreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-eqz v4, :cond_6

    .line 1249
    iget-object v4, p1, Lcom/oppo/preference/OppoPreferenceActivity$Header;->intent:Landroid/content/Intent;

    iget-object v5, v3, Lcom/oppo/preference/OppoPreferenceActivity$Header;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1250
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1252
    :cond_6
    iget-object v4, p1, Lcom/oppo/preference/OppoPreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    if-eqz v4, :cond_4

    .line 1253
    iget-object v4, p1, Lcom/oppo/preference/OppoPreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    iget-object v5, v3, Lcom/oppo/preference/OppoPreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1254
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1261
    .end local v3           #oh:Lcom/oppo/preference/OppoPreferenceActivity$Header;
    .restart local v0       #NM:I
    :cond_7
    if-le v0, v8, :cond_b

    .line 1262
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_b

    .line 1263
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oppo/preference/OppoPreferenceActivity$Header;

    .line 1264
    .restart local v3       #oh:Lcom/oppo/preference/OppoPreferenceActivity$Header;
    iget-object v4, p1, Lcom/oppo/preference/OppoPreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    if-eqz v4, :cond_8

    iget-object v4, p1, Lcom/oppo/preference/OppoPreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    iget-object v5, v3, Lcom/oppo/preference/OppoPreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1268
    :cond_8
    iget-object v4, p1, Lcom/oppo/preference/OppoPreferenceActivity$Header;->extras:Landroid/os/Bundle;

    if-eqz v4, :cond_9

    iget-object v4, p1, Lcom/oppo/preference/OppoPreferenceActivity$Header;->extras:Landroid/os/Bundle;

    iget-object v5, v3, Lcom/oppo/preference/OppoPreferenceActivity$Header;->extras:Landroid/os/Bundle;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1271
    :cond_9
    iget-object v4, p1, Lcom/oppo/preference/OppoPreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    if-eqz v4, :cond_a

    iget-object v4, p1, Lcom/oppo/preference/OppoPreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    iget-object v5, v3, Lcom/oppo/preference/OppoPreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1262
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1276
    .end local v3           #oh:Lcom/oppo/preference/OppoPreferenceActivity$Header;
    :cond_b
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public findPreference(Ljava/lang/CharSequence;)Lcom/oppo/preference/OppoPreference;
    .locals 1
    .parameter "key"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1503
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mPreferenceManager:Lcom/oppo/preference/OppoPreferenceManager;

    if-nez v0, :cond_0

    .line 1504
    const/4 v0, 0x0

    .line 1507
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mPreferenceManager:Lcom/oppo/preference/OppoPreferenceManager;

    invoke-virtual {v0, p1}, Lcom/oppo/preference/OppoPreferenceManager;->findPreference(Ljava/lang/CharSequence;)Lcom/oppo/preference/OppoPreference;

    move-result-object v0

    goto :goto_0
.end method

.method public finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V
    .locals 2
    .parameter "caller"
    .parameter "resultCode"
    .parameter "resultData"

    .prologue
    .line 1345
    iget-boolean v0, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mSinglePane:Z

    if-eqz v0, :cond_1

    .line 1346
    invoke-virtual {p0, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 1347
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 1358
    :cond_0
    :goto_0
    return-void

    .line 1350
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 1351
    if-eqz p1, :cond_0

    .line 1352
    invoke-virtual {p1}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1353
    invoke-virtual {p1}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Fragment;->getTargetRequestCode()I

    move-result v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method protected getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 1525
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mNextButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getPreferenceManager()Lcom/oppo/preference/OppoPreferenceManager;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1399
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mPreferenceManager:Lcom/oppo/preference/OppoPreferenceManager;

    return-object v0
.end method

.method public getPreferenceScreen()Lcom/oppo/preference/OppoPreferenceScreen;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1444
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mPreferenceManager:Lcom/oppo/preference/OppoPreferenceManager;

    if-eqz v0, :cond_0

    .line 1445
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mPreferenceManager:Lcom/oppo/preference/OppoPreferenceManager;

    invoke-virtual {v0}, Lcom/oppo/preference/OppoPreferenceManager;->getPreferenceScreen()Lcom/oppo/preference/OppoPreferenceScreen;

    move-result-object v0

    .line 1447
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHeaders()Z
    .locals 1

    .prologue
    .line 730
    invoke-virtual {p0}, Lcom/oppo/app/OppoMultiListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mPreferenceManager:Lcom/oppo/preference/OppoPreferenceManager;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected hasNextButton()Z
    .locals 1

    .prologue
    .line 1520
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mNextButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public invalidateHeaders()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 803
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 804
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 806
    :cond_0
    return-void
.end method

.method public isMultiPane()Z
    .locals 1

    .prologue
    .line 738
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreferenceActivity;->hasHeaders()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadHeadersFromResource(ILjava/util/List;)V
    .locals 18
    .parameter "resid"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/preference/OppoPreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 816
    .local p2, target:Ljava/util/List;,"Ljava/util/List<Lcom/oppo/preference/OppoPreferenceActivity$Header;>;"
    const/4 v9, 0x0

    .line 818
    .local v9, parser:Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v9

    .line 819
    invoke-static {v9}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 823
    .local v1, attrs:Landroid/util/AttributeSet;
    :cond_0
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v14

    .local v14, type:I
    const/4 v15, 0x1

    if-eq v14, v15, :cond_1

    const/4 v15, 0x2

    if-ne v14, v15, :cond_0

    .line 827
    :cond_1
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 828
    .local v7, nodeName:Ljava/lang/String;
    const-string v15, "preference-headers"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 829
    new-instance v15, Ljava/lang/RuntimeException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "XML document must start with <preference-headers> tag; found"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " at "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 934
    .end local v1           #attrs:Landroid/util/AttributeSet;
    .end local v7           #nodeName:Ljava/lang/String;
    .end local v14           #type:I
    :catch_0
    move-exception v3

    .line 935
    .local v3, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v15, Ljava/lang/RuntimeException;

    const-string v16, "Error parsing headers"

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 941
    .end local v3           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v15

    if-eqz v9, :cond_2

    .line 942
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_2
    throw v15

    .line 834
    .restart local v1       #attrs:Landroid/util/AttributeSet;
    .restart local v7       #nodeName:Ljava/lang/String;
    .restart local v14       #type:I
    :cond_3
    const/4 v2, 0x0

    .line 836
    .local v2, curBundle:Landroid/os/Bundle;
    :try_start_2
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v8

    .line 838
    .local v8, outerDepth:I
    :cond_4
    :goto_0
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v14

    const/4 v15, 0x1

    if-eq v14, v15, :cond_16

    const/4 v15, 0x3

    if-ne v14, v15, :cond_5

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v15

    if-le v15, v8, :cond_16

    .line 839
    :cond_5
    const/4 v15, 0x3

    if-eq v14, v15, :cond_4

    const/4 v15, 0x4

    if-eq v14, v15, :cond_4

    .line 843
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 844
    const-string v15, "header"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_15

    .line 845
    new-instance v4, Lcom/oppo/preference/OppoPreferenceActivity$Header;

    invoke-direct {v4}, Lcom/oppo/preference/OppoPreferenceActivity$Header;-><init>()V

    .line 847
    .local v4, header:Lcom/oppo/preference/OppoPreferenceActivity$Header;
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget-object v16, Landroid/R$styleable;->PreferenceHeader:[I

    move-object/from16 v0, v16

    invoke-virtual {v15, v1, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v10

    .line 849
    .local v10, sa:Landroid/content/res/TypedArray;
    const/4 v15, 0x1

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    int-to-long v15, v15

    iput-wide v15, v4, Lcom/oppo/preference/OppoPreferenceActivity$Header;->id:J

    .line 851
    const/4 v15, 0x2

    invoke-virtual {v10, v15}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v13

    .line 852
    .local v13, tv:Landroid/util/TypedValue;
    if-eqz v13, :cond_6

    iget v15, v13, Landroid/util/TypedValue;->type:I

    const/16 v16, 0x3

    move/from16 v0, v16

    if-ne v15, v0, :cond_6

    .line 853
    iget v15, v13, Landroid/util/TypedValue;->resourceId:I

    if-eqz v15, :cond_d

    .line 854
    iget v15, v13, Landroid/util/TypedValue;->resourceId:I

    iput v15, v4, Lcom/oppo/preference/OppoPreferenceActivity$Header;->titleRes:I

    .line 859
    :cond_6
    :goto_1
    const/4 v15, 0x3

    invoke-virtual {v10, v15}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v13

    .line 860
    if-eqz v13, :cond_7

    iget v15, v13, Landroid/util/TypedValue;->type:I

    const/16 v16, 0x3

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    .line 861
    iget v15, v13, Landroid/util/TypedValue;->resourceId:I

    if-eqz v15, :cond_e

    .line 862
    iget v15, v13, Landroid/util/TypedValue;->resourceId:I

    iput v15, v4, Lcom/oppo/preference/OppoPreferenceActivity$Header;->summaryRes:I

    .line 867
    :cond_7
    :goto_2
    const/4 v15, 0x5

    invoke-virtual {v10, v15}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v13

    .line 868
    if-eqz v13, :cond_8

    iget v15, v13, Landroid/util/TypedValue;->type:I

    const/16 v16, 0x3

    move/from16 v0, v16

    if-ne v15, v0, :cond_8

    .line 869
    iget v15, v13, Landroid/util/TypedValue;->resourceId:I

    if-eqz v15, :cond_f

    .line 870
    iget v15, v13, Landroid/util/TypedValue;->resourceId:I

    iput v15, v4, Lcom/oppo/preference/OppoPreferenceActivity$Header;->breadCrumbTitleRes:I

    .line 875
    :cond_8
    :goto_3
    const/4 v15, 0x6

    invoke-virtual {v10, v15}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v13

    .line 876
    if-eqz v13, :cond_9

    iget v15, v13, Landroid/util/TypedValue;->type:I

    const/16 v16, 0x3

    move/from16 v0, v16

    if-ne v15, v0, :cond_9

    .line 877
    iget v15, v13, Landroid/util/TypedValue;->resourceId:I

    if-eqz v15, :cond_10

    .line 878
    iget v15, v13, Landroid/util/TypedValue;->resourceId:I

    iput v15, v4, Lcom/oppo/preference/OppoPreferenceActivity$Header;->breadCrumbShortTitleRes:I

    .line 883
    :cond_9
    :goto_4
    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    iput v15, v4, Lcom/oppo/preference/OppoPreferenceActivity$Header;->iconRes:I

    .line 884
    const/4 v15, 0x4

    invoke-virtual {v10, v15}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v4, Lcom/oppo/preference/OppoPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 885
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 887
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget-object v16, Landroid/R$styleable;->Preference:[I

    move-object/from16 v0, v16

    invoke-virtual {v15, v1, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v11

    .line 889
    .local v11, sb:Landroid/content/res/TypedArray;
    const/4 v15, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/preference/OppoPreferenceActivity;->mHeadLayoutResId:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    iput v15, v4, Lcom/oppo/preference/OppoPreferenceActivity$Header;->layoutResid:I

    .line 891
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 893
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget-object v16, Loppo/R$styleable;->OppoPreference:[I

    move-object/from16 v0, v16

    invoke-virtual {v15, v1, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v12

    .line 895
    .local v12, sc:Landroid/content/res/TypedArray;
    const/4 v15, 0x0

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    iput v15, v4, Lcom/oppo/preference/OppoPreferenceActivity$Header;->overlap:I

    .line 896
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    .line 898
    if-nez v2, :cond_a

    .line 899
    new-instance v2, Landroid/os/Bundle;

    .end local v2           #curBundle:Landroid/os/Bundle;
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 902
    .restart local v2       #curBundle:Landroid/os/Bundle;
    :cond_a
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    .line 904
    .local v5, innerDepth:I
    :cond_b
    :goto_5
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v14

    const/4 v15, 0x1

    if-eq v14, v15, :cond_13

    const/4 v15, 0x3

    if-ne v14, v15, :cond_c

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v15

    if-le v15, v5, :cond_13

    .line 905
    :cond_c
    const/4 v15, 0x3

    if-eq v14, v15, :cond_b

    const/4 v15, 0x4

    if-eq v14, v15, :cond_b

    .line 909
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 910
    .local v6, innerNodeName:Ljava/lang/String;
    const-string v15, "extra"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_11

    .line 911
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const-string v16, "extra"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v1, v2}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 912
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    .line 937
    .end local v1           #attrs:Landroid/util/AttributeSet;
    .end local v2           #curBundle:Landroid/os/Bundle;
    .end local v4           #header:Lcom/oppo/preference/OppoPreferenceActivity$Header;
    .end local v5           #innerDepth:I
    .end local v6           #innerNodeName:Ljava/lang/String;
    .end local v7           #nodeName:Ljava/lang/String;
    .end local v8           #outerDepth:I
    .end local v10           #sa:Landroid/content/res/TypedArray;
    .end local v11           #sb:Landroid/content/res/TypedArray;
    .end local v12           #sc:Landroid/content/res/TypedArray;
    .end local v13           #tv:Landroid/util/TypedValue;
    .end local v14           #type:I
    :catch_1
    move-exception v3

    .line 938
    .local v3, e:Ljava/io/IOException;
    :try_start_3
    new-instance v15, Ljava/lang/RuntimeException;

    const-string v16, "Error parsing headers"

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 856
    .end local v3           #e:Ljava/io/IOException;
    .restart local v1       #attrs:Landroid/util/AttributeSet;
    .restart local v2       #curBundle:Landroid/os/Bundle;
    .restart local v4       #header:Lcom/oppo/preference/OppoPreferenceActivity$Header;
    .restart local v7       #nodeName:Ljava/lang/String;
    .restart local v8       #outerDepth:I
    .restart local v10       #sa:Landroid/content/res/TypedArray;
    .restart local v13       #tv:Landroid/util/TypedValue;
    .restart local v14       #type:I
    :cond_d
    :try_start_4
    iget-object v15, v13, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v15, v4, Lcom/oppo/preference/OppoPreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    goto/16 :goto_1

    .line 864
    :cond_e
    iget-object v15, v13, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v15, v4, Lcom/oppo/preference/OppoPreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    goto/16 :goto_2

    .line 872
    :cond_f
    iget-object v15, v13, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v15, v4, Lcom/oppo/preference/OppoPreferenceActivity$Header;->breadCrumbTitle:Ljava/lang/CharSequence;

    goto/16 :goto_3

    .line 880
    :cond_10
    iget-object v15, v13, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v15, v4, Lcom/oppo/preference/OppoPreferenceActivity$Header;->breadCrumbShortTitle:Ljava/lang/CharSequence;

    goto/16 :goto_4

    .line 914
    .restart local v5       #innerDepth:I
    .restart local v6       #innerNodeName:Ljava/lang/String;
    .restart local v11       #sb:Landroid/content/res/TypedArray;
    .restart local v12       #sc:Landroid/content/res/TypedArray;
    :cond_11
    const-string v15, "intent"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_12

    .line 915
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-static {v15, v9, v1}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;

    move-result-object v15

    iput-object v15, v4, Lcom/oppo/preference/OppoPreferenceActivity$Header;->intent:Landroid/content/Intent;

    goto :goto_5

    .line 918
    :cond_12
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_5

    .line 922
    .end local v6           #innerNodeName:Ljava/lang/String;
    :cond_13
    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    move-result v15

    if-lez v15, :cond_14

    .line 923
    iput-object v2, v4, Lcom/oppo/preference/OppoPreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 924
    const/4 v2, 0x0

    .line 927
    :cond_14
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 929
    .end local v4           #header:Lcom/oppo/preference/OppoPreferenceActivity$Header;
    .end local v5           #innerDepth:I
    .end local v10           #sa:Landroid/content/res/TypedArray;
    .end local v11           #sb:Landroid/content/res/TypedArray;
    .end local v12           #sc:Landroid/content/res/TypedArray;
    .end local v13           #tv:Landroid/util/TypedValue;
    :cond_15
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 941
    :cond_16
    if-eqz v9, :cond_17

    .line 942
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    .line 945
    :cond_17
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1019
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1021
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mPreferenceManager:Lcom/oppo/preference/OppoPreferenceManager;

    if-eqz v0, :cond_0

    .line 1022
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mPreferenceManager:Lcom/oppo/preference/OppoPreferenceManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oppo/preference/OppoPreferenceManager;->dispatchActivityResult(IILandroid/content/Intent;)V

    .line 1024
    :cond_0
    return-void
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/preference/OppoPreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 796
    .local p1, target:Ljava/util/List;,"Ljava/util/List<Lcom/oppo/preference/OppoPreferenceActivity$Header;>;"
    return-void
.end method

.method public onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;
    .locals 3
    .parameter "fragmentName"
    .parameter "args"
    .parameter "titleRes"
    .parameter "shortTitleRes"

    .prologue
    .line 1087
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1088
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1089
    const-string v1, ":android:show_fragment"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1090
    const-string v1, ":android:show_fragment_args"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1091
    const-string v1, ":android:show_fragment_title"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1092
    const-string v1, ":android:show_fragment_short_title"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1093
    const-string v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1094
    return-object v0
.end method

.method public onContentChanged()V
    .locals 1

    .prologue
    .line 1028
    invoke-super {p0}, Lcom/oppo/app/OppoMultiListActivity;->onContentChanged()V

    .line 1030
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mPreferenceManager:Lcom/oppo/preference/OppoPreferenceManager;

    if-eqz v0, :cond_0

    .line 1031
    invoke-direct {p0}, Lcom/oppo/preference/OppoPreferenceActivity;->postBindPreferences()V

    .line 1033
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 20
    .parameter "savedInstanceState"

    .prologue
    .line 581
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 583
    const v17, 0xc090418

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 585
    const v17, 0xc020438

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/FrameLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/preference/OppoPreferenceActivity;->mListFooter:Landroid/widget/FrameLayout;

    .line 586
    const v17, 0xc020439

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/view/ViewGroup;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/preference/OppoPreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    .line 587
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/preference/OppoPreferenceActivity;->onIsHidingHeaders()Z

    move-result v8

    .line 588
    .local v8, hidingHeaders:Z
    if-nez v8, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/preference/OppoPreferenceActivity;->onIsMultiPane()Z

    move-result v17

    if-nez v17, :cond_6

    :cond_0
    const/16 v17, 0x1

    :goto_0
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/oppo/preference/OppoPreferenceActivity;->mSinglePane:Z

    .line 589
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    const-string v18, ":android:show_fragment"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 590
    .local v10, initialFragment:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    const-string v18, ":android:show_fragment_args"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    .line 591
    .local v9, initialArguments:Landroid/os/Bundle;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    const-string v18, ":android:show_fragment_title"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 592
    .local v13, initialTitle:I
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    const-string v18, ":android:show_fragment_short_title"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 594
    .local v11, initialShortTitle:I
    if-eqz p1, :cond_7

    .line 597
    const-string v17, ":android:headers"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 598
    .local v7, headers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/oppo/preference/OppoPreferenceActivity$Header;>;"
    if-eqz v7, :cond_1

    .line 599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/preference/OppoPreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 600
    const-string v17, ":android:cur_header"

    const/16 v18, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 602
    .local v5, curHeader:I
    if-ltz v5, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/preference/OppoPreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v5, v0, :cond_1

    .line 603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/preference/OppoPreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/oppo/preference/OppoPreferenceActivity$Header;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/oppo/preference/OppoPreferenceActivity;->setSelectedHeader(Lcom/oppo/preference/OppoPreferenceActivity$Header;)V

    .line 642
    .end local v5           #curHeader:I
    .end local v7           #headers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/oppo/preference/OppoPreferenceActivity$Header;>;"
    :cond_1
    :goto_1
    if-eqz v10, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oppo/preference/OppoPreferenceActivity;->mSinglePane:Z

    move/from16 v17, v0

    if-eqz v17, :cond_c

    .line 644
    const v17, 0xc020437

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/preference/OppoPreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 646
    if-eqz v13, :cond_2

    .line 647
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    .line 648
    .local v14, initialTitleStr:Ljava/lang/CharSequence;
    if-eqz v11, :cond_b

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    .line 650
    .local v12, initialShortTitleStr:Ljava/lang/CharSequence;
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v12}, Lcom/oppo/preference/OppoPreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 673
    .end local v12           #initialShortTitleStr:Ljava/lang/CharSequence;
    .end local v14           #initialTitleStr:Ljava/lang/CharSequence;
    :cond_2
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v15

    .line 674
    .local v15, intent:Landroid/content/Intent;
    const-string v17, "extra_prefs_show_button_bar"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 676
    const v17, 0xc02043a

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 678
    const v17, 0xc02043b

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 679
    .local v3, backButton:Landroid/widget/Button;
    new-instance v17, Lcom/oppo/preference/OppoPreferenceActivity$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/oppo/preference/OppoPreferenceActivity$2;-><init>(Lcom/oppo/preference/OppoPreferenceActivity;)V

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 686
    const v17, 0xc02043c

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/Button;

    .line 687
    .local v16, skipButton:Landroid/widget/Button;
    new-instance v17, Lcom/oppo/preference/OppoPreferenceActivity$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/oppo/preference/OppoPreferenceActivity$3;-><init>(Lcom/oppo/preference/OppoPreferenceActivity;)V

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 694
    const v17, 0xc02043d

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Button;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/preference/OppoPreferenceActivity;->mNextButton:Landroid/widget/Button;

    .line 695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/preference/OppoPreferenceActivity;->mNextButton:Landroid/widget/Button;

    move-object/from16 v17, v0

    new-instance v18, Lcom/oppo/preference/OppoPreferenceActivity$4;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/oppo/preference/OppoPreferenceActivity$4;-><init>(Lcom/oppo/preference/OppoPreferenceActivity;)V

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 704
    const-string v17, "extra_prefs_set_next_text"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 705
    const-string v17, "extra_prefs_set_next_text"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 706
    .local v4, buttonText:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_f

    .line 707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/preference/OppoPreferenceActivity;->mNextButton:Landroid/widget/Button;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 712
    .end local v4           #buttonText:Ljava/lang/String;
    :cond_3
    :goto_4
    const-string v17, "extra_prefs_set_back_text"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 713
    const-string v17, "extra_prefs_set_back_text"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 714
    .restart local v4       #buttonText:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_10

    .line 715
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 720
    .end local v4           #buttonText:Ljava/lang/String;
    :cond_4
    :goto_5
    const-string v17, "extra_prefs_show_skip"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 721
    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    .line 724
    .end local v3           #backButton:Landroid/widget/Button;
    .end local v16           #skipButton:Landroid/widget/Button;
    :cond_5
    return-void

    .line 588
    .end local v9           #initialArguments:Landroid/os/Bundle;
    .end local v10           #initialFragment:Ljava/lang/String;
    .end local v11           #initialShortTitle:I
    .end local v13           #initialTitle:I
    .end local v15           #intent:Landroid/content/Intent;
    :cond_6
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 608
    .restart local v9       #initialArguments:Landroid/os/Bundle;
    .restart local v10       #initialFragment:Ljava/lang/String;
    .restart local v11       #initialShortTitle:I
    .restart local v13       #initialTitle:I
    :cond_7
    if-eqz v10, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oppo/preference/OppoPreferenceActivity;->mSinglePane:Z

    move/from16 v17, v0

    if-eqz v17, :cond_9

    .line 612
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v9}, Lcom/oppo/preference/OppoPreferenceActivity;->switchToHeader(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 613
    if-eqz v13, :cond_1

    .line 614
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    .line 615
    .restart local v14       #initialTitleStr:Ljava/lang/CharSequence;
    if-eqz v11, :cond_8

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    .line 617
    .restart local v12       #initialShortTitleStr:Ljava/lang/CharSequence;
    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v12}, Lcom/oppo/preference/OppoPreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 615
    .end local v12           #initialShortTitleStr:Ljava/lang/CharSequence;
    :cond_8
    const/4 v12, 0x0

    goto :goto_6

    .line 622
    .end local v14           #initialTitleStr:Ljava/lang/CharSequence;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/preference/OppoPreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/oppo/preference/OppoPreferenceActivity;->onBuildHeaders(Ljava/util/List;)V

    .line 627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/preference/OppoPreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_1

    .line 628
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oppo/preference/OppoPreferenceActivity;->mSinglePane:Z

    move/from16 v17, v0

    if-nez v17, :cond_1

    .line 629
    if-nez v10, :cond_a

    .line 630
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/preference/OppoPreferenceActivity;->onGetInitialHeader()Lcom/oppo/preference/OppoPreferenceActivity$Header;

    move-result-object v6

    .line 631
    .local v6, h:Lcom/oppo/preference/OppoPreferenceActivity$Header;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/oppo/preference/OppoPreferenceActivity;->switchToHeader(Lcom/oppo/preference/OppoPreferenceActivity$Header;)V

    goto/16 :goto_1

    .line 633
    .end local v6           #h:Lcom/oppo/preference/OppoPreferenceActivity$Header;
    :cond_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v9}, Lcom/oppo/preference/OppoPreferenceActivity;->switchToHeader(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 648
    .restart local v14       #initialTitleStr:Ljava/lang/CharSequence;
    :cond_b
    const/4 v12, 0x0

    goto/16 :goto_2

    .line 652
    .end local v14           #initialTitleStr:Ljava/lang/CharSequence;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/preference/OppoPreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_e

    .line 653
    new-instance v17, Lcom/oppo/preference/OppoPreferenceActivity$HeaderAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/preference/OppoPreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/oppo/preference/OppoPreferenceActivity$HeaderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/oppo/app/OppoMultiListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 654
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oppo/preference/OppoPreferenceActivity;->mSinglePane:Z

    move/from16 v17, v0

    if-nez v17, :cond_2

    .line 656
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/app/OppoMultiListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/preference/OppoPreferenceActivity;->mCurHeader:Lcom/oppo/preference/OppoPreferenceActivity$Header;

    move-object/from16 v17, v0

    if-eqz v17, :cond_d

    .line 658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/preference/OppoPreferenceActivity;->mCurHeader:Lcom/oppo/preference/OppoPreferenceActivity$Header;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/oppo/preference/OppoPreferenceActivity;->setSelectedHeader(Lcom/oppo/preference/OppoPreferenceActivity$Header;)V

    .line 660
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/preference/OppoPreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 665
    :cond_e
    const v17, 0xc090419

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 666
    const v17, 0xc020438

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/FrameLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/preference/OppoPreferenceActivity;->mListFooter:Landroid/widget/FrameLayout;

    .line 667
    const v17, 0xc020436

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/view/ViewGroup;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/preference/OppoPreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    .line 668
    new-instance v17, Lcom/oppo/preference/OppoPreferenceManager;

    const/16 v18, 0x64

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/oppo/preference/OppoPreferenceManager;-><init>(Landroid/app/Activity;I)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/preference/OppoPreferenceActivity;->mPreferenceManager:Lcom/oppo/preference/OppoPreferenceManager;

    .line 669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/preference/OppoPreferenceActivity;->mPreferenceManager:Lcom/oppo/preference/OppoPreferenceManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/oppo/preference/OppoPreferenceManager;->setOnPreferenceTreeClickListener(Lcom/oppo/preference/OppoPreferenceManager$OnPreferenceTreeClickListener;)V

    goto/16 :goto_3

    .line 709
    .restart local v3       #backButton:Landroid/widget/Button;
    .restart local v4       #buttonText:Ljava/lang/String;
    .restart local v15       #intent:Landroid/content/Intent;
    .restart local v16       #skipButton:Landroid/widget/Button;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/preference/OppoPreferenceActivity;->mNextButton:Landroid/widget/Button;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 717
    :cond_10
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 967
    invoke-super {p0}, Lcom/oppo/app/OppoMultiListActivity;->onDestroy()V

    .line 969
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mPreferenceManager:Lcom/oppo/preference/OppoPreferenceManager;

    if-eqz v0, :cond_0

    .line 970
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mPreferenceManager:Lcom/oppo/preference/OppoPreferenceManager;

    invoke-virtual {v0}, Lcom/oppo/preference/OppoPreferenceManager;->dispatchActivityDestroy()V

    .line 972
    :cond_0
    return-void
.end method

.method public onGetInitialHeader()Lcom/oppo/preference/OppoPreferenceActivity$Header;
    .locals 2

    .prologue
    .line 768
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/preference/OppoPreferenceActivity$Header;

    return-object v0
.end method

.method public onGetNewHeader()Lcom/oppo/preference/OppoPreferenceActivity$Header;
    .locals 1

    .prologue
    .line 778
    const/4 v0, 0x0

    return-object v0
.end method

.method public onHeaderClick(Lcom/oppo/preference/OppoPreferenceActivity$Header;I)V
    .locals 7
    .parameter "header"
    .parameter "position"

    .prologue
    .line 1055
    iget-object v0, p1, Lcom/oppo/preference/OppoPreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1056
    iget-boolean v0, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mSinglePane:Z

    if-eqz v0, :cond_2

    .line 1057
    iget v5, p1, Lcom/oppo/preference/OppoPreferenceActivity$Header;->breadCrumbTitleRes:I

    .line 1058
    .local v5, titleRes:I
    iget v6, p1, Lcom/oppo/preference/OppoPreferenceActivity$Header;->breadCrumbShortTitleRes:I

    .line 1059
    .local v6, shortTitleRes:I
    if-nez v5, :cond_0

    .line 1060
    iget v5, p1, Lcom/oppo/preference/OppoPreferenceActivity$Header;->titleRes:I

    .line 1061
    const/4 v6, 0x0

    .line 1063
    :cond_0
    iget-object v1, p1, Lcom/oppo/preference/OppoPreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v2, p1, Lcom/oppo/preference/OppoPreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/oppo/preference/OppoPreferenceActivity;->startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V

    .line 1071
    .end local v5           #titleRes:I
    .end local v6           #shortTitleRes:I
    :cond_1
    :goto_0
    return-void

    .line 1066
    :cond_2
    invoke-virtual {p0, p1}, Lcom/oppo/preference/OppoPreferenceActivity;->switchToHeader(Lcom/oppo/preference/OppoPreferenceActivity$Header;)V

    goto :goto_0

    .line 1068
    :cond_3
    iget-object v0, p1, Lcom/oppo/preference/OppoPreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 1069
    iget-object v0, p1, Lcom/oppo/preference/OppoPreferenceActivity$Header;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onIsHidingHeaders()Z
    .locals 3

    .prologue
    .line 758
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, ":android:no_headers"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public onIsMultiPane()Z
    .locals 3

    .prologue
    .line 746
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xc0c0405

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 748
    .local v0, preferMultiPane:Z
    return v0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1037
    invoke-super/range {p0 .. p5}, Lcom/oppo/app/OppoMultiListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 1039
    iget-object v1, p0, Lcom/oppo/app/OppoMultiListActivity;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    .line 1040
    iget-object v1, p0, Lcom/oppo/app/OppoMultiListActivity;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 1041
    .local v0, item:Ljava/lang/Object;
    instance-of v1, v0, Lcom/oppo/preference/OppoPreferenceActivity$Header;

    if-eqz v1, :cond_0

    .line 1042
    check-cast v0, Lcom/oppo/preference/OppoPreferenceActivity$Header;

    .end local v0           #item:Ljava/lang/Object;
    invoke-virtual {p0, v0, p3}, Lcom/oppo/preference/OppoPreferenceActivity;->onHeaderClick(Lcom/oppo/preference/OppoPreferenceActivity$Header;I)V

    .line 1044
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 1512
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mPreferenceManager:Lcom/oppo/preference/OppoPreferenceManager;

    if-eqz v0, :cond_0

    .line 1513
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mPreferenceManager:Lcom/oppo/preference/OppoPreferenceManager;

    invoke-virtual {v0, p1}, Lcom/oppo/preference/OppoPreferenceManager;->dispatchNewIntent(Landroid/content/Intent;)V

    .line 1515
    :cond_0
    return-void
.end method

.method public onPreferenceStartFragment(Lcom/oppo/preference/OppoPreferenceFragment;Lcom/oppo/preference/OppoPreference;)Z
    .locals 7
    .parameter "caller"
    .parameter "pref"

    .prologue
    .line 1362
    invoke-virtual {p2}, Lcom/oppo/preference/OppoPreference;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/oppo/preference/OppoPreference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p2}, Lcom/oppo/preference/OppoPreference;->getTitleRes()I

    move-result v3

    invoke-virtual {p2}, Lcom/oppo/preference/OppoPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/oppo/preference/OppoPreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1364
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Lcom/oppo/preference/OppoPreferenceScreen;Lcom/oppo/preference/OppoPreference;)Z
    .locals 1
    .parameter "preferenceScreen"
    .parameter "preference"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1488
    const/4 v0, 0x0

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 1000
    iget-object v2, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mPreferenceManager:Lcom/oppo/preference/OppoPreferenceManager;

    if-eqz v2, :cond_0

    .line 1001
    const-string v2, ":android:preferences"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1002
    .local v0, container:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 1003
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreferenceActivity;->getPreferenceScreen()Lcom/oppo/preference/OppoPreferenceScreen;

    move-result-object v1

    .line 1004
    .local v1, preferenceScreen:Lcom/oppo/preference/OppoPreferenceScreen;
    if-eqz v1, :cond_0

    .line 1005
    invoke-virtual {v1, v0}, Lcom/oppo/preference/OppoPreference;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 1006
    iput-object p1, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mSavedInstanceState:Landroid/os/Bundle;

    .line 1015
    .end local v0           #container:Landroid/os/Bundle;
    .end local v1           #preferenceScreen:Lcom/oppo/preference/OppoPreferenceScreen;
    :goto_0
    return-void

    .line 1014
    :cond_0
    invoke-super {p0, p1}, Lcom/oppo/app/OppoMultiListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .parameter "outState"

    .prologue
    .line 976
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 978
    iget-object v3, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 979
    const-string v3, ":android:headers"

    iget-object v4, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 980
    iget-object v3, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mCurHeader:Lcom/oppo/preference/OppoPreferenceActivity$Header;

    if-eqz v3, :cond_0

    .line 981
    iget-object v3, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mCurHeader:Lcom/oppo/preference/OppoPreferenceActivity$Header;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 982
    .local v1, index:I
    if-ltz v1, :cond_0

    .line 983
    const-string v3, ":android:cur_header"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 988
    .end local v1           #index:I
    :cond_0
    iget-object v3, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mPreferenceManager:Lcom/oppo/preference/OppoPreferenceManager;

    if-eqz v3, :cond_1

    .line 989
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreferenceActivity;->getPreferenceScreen()Lcom/oppo/preference/OppoPreferenceScreen;

    move-result-object v2

    .line 990
    .local v2, preferenceScreen:Lcom/oppo/preference/OppoPreferenceScreen;
    if-eqz v2, :cond_1

    .line 991
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 992
    .local v0, container:Landroid/os/Bundle;
    invoke-virtual {v2, v0}, Lcom/oppo/preference/OppoPreference;->saveHierarchyState(Landroid/os/Bundle;)V

    .line 993
    const-string v3, ":android:preferences"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 996
    .end local v0           #container:Landroid/os/Bundle;
    .end local v2           #preferenceScreen:Lcom/oppo/preference/OppoPreferenceScreen;
    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 958
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 960
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mPreferenceManager:Lcom/oppo/preference/OppoPreferenceManager;

    if-eqz v0, :cond_0

    .line 961
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mPreferenceManager:Lcom/oppo/preference/OppoPreferenceManager;

    invoke-virtual {v0}, Lcom/oppo/preference/OppoPreferenceManager;->dispatchActivityStop()V

    .line 963
    :cond_0
    return-void
.end method

.method public setListFooter(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 951
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mListFooter:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 952
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mListFooter:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 954
    return-void
.end method

.method public setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "title"
    .parameter "shortTitle"
    .parameter "listener"

    .prologue
    .line 1166
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    if-eqz v0, :cond_0

    .line 1167
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/FragmentBreadCrumbs;->setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 1169
    :cond_0
    return-void
.end method

.method public setPreferenceScreen(Lcom/oppo/preference/OppoPreferenceScreen;)V
    .locals 2
    .parameter "preferenceScreen"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1422
    invoke-direct {p0}, Lcom/oppo/preference/OppoPreferenceActivity;->requirePreferenceManager()V

    .line 1424
    iget-object v1, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mPreferenceManager:Lcom/oppo/preference/OppoPreferenceManager;

    invoke-virtual {v1, p1}, Lcom/oppo/preference/OppoPreferenceManager;->setPreferences(Lcom/oppo/preference/OppoPreferenceScreen;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 1425
    invoke-direct {p0}, Lcom/oppo/preference/OppoPreferenceActivity;->postBindPreferences()V

    .line 1426
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreferenceActivity;->getPreferenceScreen()Lcom/oppo/preference/OppoPreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oppo/preference/OppoPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1428
    .local v0, title:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 1429
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1432
    .end local v0           #title:Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method

.method setSelectedHeader(Lcom/oppo/preference/OppoPreferenceActivity$Header;)V
    .locals 3
    .parameter "header"

    .prologue
    .line 1172
    iput-object p1, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mCurHeader:Lcom/oppo/preference/OppoPreferenceActivity$Header;

    .line 1173
    iget-object v1, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1174
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 1175
    invoke-virtual {p0}, Lcom/oppo/app/OppoMultiListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 1179
    :goto_0
    invoke-virtual {p0, p1}, Lcom/oppo/preference/OppoPreferenceActivity;->showBreadCrumbs(Lcom/oppo/preference/OppoPreferenceActivity$Header;)V

    .line 1180
    return-void

    .line 1177
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/app/OppoMultiListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AbsListView;->clearChoices()V

    goto :goto_0
.end method

.method showBreadCrumbs(Lcom/oppo/preference/OppoPreferenceActivity$Header;)V
    .locals 3
    .parameter "header"

    .prologue
    .line 1183
    if-eqz p1, :cond_2

    .line 1184
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/oppo/preference/OppoPreferenceActivity$Header;->getBreadCrumbTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1185
    .local v0, title:Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .line 1186
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/oppo/preference/OppoPreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1187
    :cond_0
    if-nez v0, :cond_1

    .line 1188
    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1189
    :cond_1
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/oppo/preference/OppoPreferenceActivity$Header;->getBreadCrumbShortTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oppo/preference/OppoPreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1193
    .end local v0           #title:Ljava/lang/CharSequence;
    :goto_0
    return-void

    .line 1191
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/oppo/preference/OppoPreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 5
    .parameter "title"
    .parameter "shortTitle"

    .prologue
    const/4 v4, 0x0

    .line 1135
    iget-object v2, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    if-nez v2, :cond_2

    .line 1136
    const v2, 0xc020006

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1139
    .local v0, crumbs:Landroid/view/View;
    :try_start_0
    check-cast v0, Landroid/app/FragmentBreadCrumbs;

    .end local v0           #crumbs:Landroid/view/View;
    iput-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1144
    iget-object v2, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    if-nez v2, :cond_1

    .line 1145
    if-eqz p1, :cond_0

    .line 1146
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1155
    :cond_0
    :goto_0
    return-void

    .line 1141
    :catch_0
    move-exception v1

    .line 1142
    .local v1, e:Ljava/lang/ClassCastException;
    goto :goto_0

    .line 1150
    .end local v1           #e:Ljava/lang/ClassCastException;
    :cond_1
    iget-object v2, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/app/FragmentBreadCrumbs;->setMaxVisible(I)V

    .line 1151
    iget-object v2, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v2, p0}, Landroid/app/FragmentBreadCrumbs;->setActivity(Landroid/app/Activity;)V

    .line 1153
    :cond_2
    iget-object v2, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v2, p1, p2}, Landroid/app/FragmentBreadCrumbs;->setTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1154
    iget-object v2, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v2, v4, v4, v4}, Landroid/app/FragmentBreadCrumbs;->setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public startPreferenceFragment(Landroid/app/Fragment;Z)V
    .locals 2
    .parameter "fragment"
    .parameter "push"

    .prologue
    .line 1287
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 1288
    .local v0, transaction:Landroid/app/FragmentTransaction;
    const v1, 0xc020436

    invoke-virtual {v0, v1, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1289
    if-eqz p2, :cond_0

    .line 1290
    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 1291
    const-string v1, ":android:prefs"

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1295
    :goto_0
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1296
    return-void

    .line 1293
    :cond_0
    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method

.method public startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V
    .locals 9
    .parameter "fragmentClass"
    .parameter "args"
    .parameter "titleRes"
    .parameter "titleText"
    .parameter "resultTo"
    .parameter "resultRequestCode"

    .prologue
    .line 1317
    iget-boolean v0, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mSinglePane:Z

    if-eqz v0, :cond_0

    .line 1318
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move v4, p6

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/oppo/preference/OppoPreferenceActivity;->startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V

    .line 1335
    :goto_0
    return-void

    .line 1320
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v7

    .line 1321
    .local v7, f:Landroid/app/Fragment;
    if-eqz p5, :cond_1

    .line 1322
    invoke-virtual {v7, p5, p6}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1324
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v8

    .line 1325
    .local v8, transaction:Landroid/app/FragmentTransaction;
    const v0, 0xc020436

    invoke-virtual {v8, v0, v7}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1326
    if-eqz p3, :cond_3

    .line 1327
    invoke-virtual {v8, p3}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(I)Landroid/app/FragmentTransaction;

    .line 1331
    :cond_2
    :goto_1
    const/16 v0, 0x1001

    invoke-virtual {v8, v0}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 1332
    const-string v0, ":android:prefs"

    invoke-virtual {v8, v0}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1333
    invoke-virtual {v8}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 1328
    :cond_3
    if-eqz p4, :cond_2

    .line 1329
    invoke-virtual {v8, p4}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    goto :goto_1
.end method

.method public startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;I)V
    .locals 7
    .parameter "fragmentName"
    .parameter "args"
    .parameter "resultTo"
    .parameter "resultRequestCode"

    .prologue
    const/4 v5, 0x0

    .line 1103
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/oppo/preference/OppoPreferenceActivity;->startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V

    .line 1104
    return-void
.end method

.method public startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V
    .locals 1
    .parameter "fragmentName"
    .parameter "args"
    .parameter "resultTo"
    .parameter "resultRequestCode"
    .parameter "titleRes"
    .parameter "shortTitleRes"

    .prologue
    .line 1122
    invoke-virtual {p0, p1, p2, p5, p6}, Lcom/oppo/preference/OppoPreferenceActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v0

    .line 1123
    .local v0, intent:Landroid/content/Intent;
    if-nez p3, :cond_0

    .line 1124
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1128
    :goto_0
    return-void

    .line 1126
    :cond_0
    invoke-virtual {p3, v0, p4}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public switchToHeader(Lcom/oppo/preference/OppoPreferenceActivity$Header;)V
    .locals 4
    .parameter "header"

    .prologue
    .line 1222
    iget-object v1, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mCurHeader:Lcom/oppo/preference/OppoPreferenceActivity$Header;

    if-ne v1, p1, :cond_0

    .line 1225
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, ":android:prefs"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 1232
    :goto_0
    return-void

    .line 1228
    :cond_0
    iget-object v1, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/oppo/preference/OppoPreferenceActivity;->mCurHeader:Lcom/oppo/preference/OppoPreferenceActivity$Header;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    sub-int v0, v1, v2

    .line 1229
    .local v0, direction:I
    iget-object v1, p1, Lcom/oppo/preference/OppoPreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v2, p1, Lcom/oppo/preference/OppoPreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    invoke-direct {p0, v1, v2, v0}, Lcom/oppo/preference/OppoPreferenceActivity;->switchToHeaderInner(Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 1230
    invoke-virtual {p0, p1}, Lcom/oppo/preference/OppoPreferenceActivity;->setSelectedHeader(Lcom/oppo/preference/OppoPreferenceActivity$Header;)V

    goto :goto_0
.end method

.method public switchToHeader(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .parameter "fragmentName"
    .parameter "args"

    .prologue
    .line 1212
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oppo/preference/OppoPreferenceActivity;->setSelectedHeader(Lcom/oppo/preference/OppoPreferenceActivity$Header;)V

    .line 1213
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/preference/OppoPreferenceActivity;->switchToHeaderInner(Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 1214
    return-void
.end method
