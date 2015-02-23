.class public Lcom/oppo/app/OppoTabActivity;
.super Landroid/app/ActivityGroup;
.source "OppoTabActivity.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "OppoTabActivity"


# instance fields
.field private bUseFragment:Z

.field private mDefaultTab:Ljava/lang/String;

.field private mDefaultTabIndex:I

.field private mOppoTabHost:Lcom/oppo/widget/OppoTabHost;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Landroid/app/ActivityGroup;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/app/OppoTabActivity;->mDefaultTab:Ljava/lang/String;

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lcom/oppo/app/OppoTabActivity;->mDefaultTabIndex:I

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/app/OppoTabActivity;->bUseFragment:Z

    .line 79
    return-void
.end method

.method private ensureTabHost()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/oppo/app/OppoTabActivity;->mOppoTabHost:Lcom/oppo/widget/OppoTabHost;

    if-nez v0, :cond_0

    .line 164
    const v0, 0xc09040a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 166
    :cond_0
    return-void
.end method


# virtual methods
.method public getOppoTabHost()Lcom/oppo/widget/OppoTabHost;
    .locals 1

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/oppo/app/OppoTabActivity;->ensureTabHost()V

    .line 186
    iget-object v0, p0, Lcom/oppo/app/OppoTabActivity;->mOppoTabHost:Lcom/oppo/widget/OppoTabHost;

    return-object v0
.end method

.method public getOppoTabWidget()Lcom/oppo/widget/OppoTabWidget;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/oppo/app/OppoTabActivity;->mOppoTabHost:Lcom/oppo/widget/OppoTabHost;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoTabHost;->getOppoTabWidget()Lcom/oppo/widget/OppoTabWidget;

    move-result-object v0

    return-object v0
.end method

.method protected onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "childActivity"
    .parameter "title"

    .prologue
    .line 171
    invoke-virtual {p0}, Landroid/app/ActivityGroup;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/LocalActivityManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/oppo/app/OppoTabActivity;->mOppoTabHost:Lcom/oppo/widget/OppoTabHost;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoTabHost;->getCurrentTabView()Landroid/view/View;

    move-result-object v0

    .line 173
    .local v0, tabView:Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 174
    check-cast v0, Landroid/widget/TextView;

    .end local v0           #tabView:Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    :cond_0
    return-void
.end method

.method public onContentChanged()V
    .locals 2

    .prologue
    .line 149
    invoke-super {p0}, Landroid/app/Activity;->onContentChanged()V

    .line 150
    const v0, 0xc020005

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoTabHost;

    iput-object v0, p0, Lcom/oppo/app/OppoTabActivity;->mOppoTabHost:Lcom/oppo/widget/OppoTabHost;

    .line 152
    iget-object v0, p0, Lcom/oppo/app/OppoTabActivity;->mOppoTabHost:Lcom/oppo/widget/OppoTabHost;

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your content must have an OppoTabHost whose id attribute is \'oppo.R.id.oppo_tabhost\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/oppo/app/OppoTabActivity;->mOppoTabHost:Lcom/oppo/widget/OppoTabHost;

    iget-boolean v1, p0, Lcom/oppo/app/OppoTabActivity;->bUseFragment:Z

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoTabHost;->setUseFragment(Z)V

    .line 158
    iget-object v0, p0, Lcom/oppo/app/OppoTabActivity;->mOppoTabHost:Lcom/oppo/widget/OppoTabHost;

    invoke-virtual {p0}, Landroid/app/ActivityGroup;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoTabHost;->setup(Landroid/app/LocalActivityManager;)V

    .line 159
    iget-object v0, p0, Lcom/oppo/app/OppoTabActivity;->mOppoTabHost:Lcom/oppo/widget/OppoTabHost;

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoTabHost;->setFragmentManager(Landroid/app/FragmentManager;)V

    .line 160
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    const/4 v2, 0x0

    .line 124
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 125
    const-string v0, "OppoTabActivity"

    const-string v1, "onPostCreate begin:"

    invoke-static {v2, v0, v1}, Lcom/oppo/util/OppoLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-direct {p0}, Lcom/oppo/app/OppoTabActivity;->ensureTabHost()V

    .line 128
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/oppo/app/OppoTabActivity;->mOppoTabHost:Lcom/oppo/widget/OppoTabHost;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoTabHost;->getCurrentTab()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 129
    iget-object v0, p0, Lcom/oppo/app/OppoTabActivity;->mOppoTabHost:Lcom/oppo/widget/OppoTabHost;

    invoke-virtual {v0, v2}, Lcom/oppo/widget/OppoTabHost;->setCurrentTab(I)V

    .line 131
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 107
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 108
    invoke-direct {p0}, Lcom/oppo/app/OppoTabActivity;->ensureTabHost()V

    .line 109
    const-string v1, "currentTab"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, cur:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 111
    iget-object v1, p0, Lcom/oppo/app/OppoTabActivity;->mOppoTabHost:Lcom/oppo/widget/OppoTabHost;

    invoke-virtual {v1, v0}, Lcom/oppo/widget/OppoTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 113
    :cond_0
    iget-object v1, p0, Lcom/oppo/app/OppoTabActivity;->mOppoTabHost:Lcom/oppo/widget/OppoTabHost;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoTabHost;->getCurrentTab()I

    move-result v1

    if-gez v1, :cond_1

    .line 114
    iget-object v1, p0, Lcom/oppo/app/OppoTabActivity;->mDefaultTab:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 115
    iget-object v1, p0, Lcom/oppo/app/OppoTabActivity;->mOppoTabHost:Lcom/oppo/widget/OppoTabHost;

    iget-object v2, p0, Lcom/oppo/app/OppoTabActivity;->mDefaultTab:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/oppo/widget/OppoTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 120
    :cond_1
    :goto_0
    return-void

    .line 116
    :cond_2
    iget v1, p0, Lcom/oppo/app/OppoTabActivity;->mDefaultTabIndex:I

    if-ltz v1, :cond_1

    .line 117
    iget-object v1, p0, Lcom/oppo/app/OppoTabActivity;->mOppoTabHost:Lcom/oppo/widget/OppoTabHost;

    iget v2, p0, Lcom/oppo/app/OppoTabActivity;->mDefaultTabIndex:I

    invoke-virtual {v1, v2}, Lcom/oppo/widget/OppoTabHost;->setCurrentTab(I)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 135
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 136
    iget-object v1, p0, Lcom/oppo/app/OppoTabActivity;->mOppoTabHost:Lcom/oppo/widget/OppoTabHost;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, currentTabTag:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 138
    const-string v1, "currentTab"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_0
    return-void
.end method

.method public setDefaultTab(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/app/OppoTabActivity;->mDefaultTab:Ljava/lang/String;

    .line 102
    iput p1, p0, Lcom/oppo/app/OppoTabActivity;->mDefaultTabIndex:I

    .line 103
    return-void
.end method

.method public setDefaultTab(Ljava/lang/String;)V
    .locals 1
    .parameter "tag"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/oppo/app/OppoTabActivity;->mDefaultTab:Ljava/lang/String;

    .line 92
    const/4 v0, -0x1

    iput v0, p0, Lcom/oppo/app/OppoTabActivity;->mDefaultTabIndex:I

    .line 93
    return-void
.end method

.method public setUseFragment(Z)V
    .locals 0
    .parameter "useFragment"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/oppo/app/OppoTabActivity;->bUseFragment:Z

    .line 83
    return-void
.end method
