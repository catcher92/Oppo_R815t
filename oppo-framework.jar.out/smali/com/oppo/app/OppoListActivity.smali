.class public Lcom/oppo/app/OppoListActivity;
.super Landroid/app/Activity;
.source "OppoListActivity.java"


# instance fields
.field protected mAdapter:Landroid/widget/ListAdapter;

.field private mFinishedStart:Z

.field private mHandler:Landroid/os/Handler;

.field protected mList:Lcom/oppo/widget/OppoListView;

.field private mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mRequestFocus:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oppo/app/OppoListActivity;->mHandler:Landroid/os/Handler;

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/app/OppoListActivity;->mFinishedStart:Z

    .line 56
    new-instance v0, Lcom/oppo/app/OppoListActivity$1;

    invoke-direct {v0, p0}, Lcom/oppo/app/OppoListActivity$1;-><init>(Lcom/oppo/app/OppoListActivity;)V

    iput-object v0, p0, Lcom/oppo/app/OppoListActivity;->mRequestFocus:Ljava/lang/Runnable;

    .line 167
    new-instance v0, Lcom/oppo/app/OppoListActivity$2;

    invoke-direct {v0, p0}, Lcom/oppo/app/OppoListActivity$2;-><init>(Lcom/oppo/app/OppoListActivity;)V

    iput-object v0, p0, Lcom/oppo/app/OppoListActivity;->mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method private ensureList()V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/oppo/app/OppoListActivity;->mList:Lcom/oppo/widget/OppoListView;

    if-eqz v0, :cond_0

    .line 165
    :goto_0
    return-void

    .line 163
    :cond_0
    const v0, 0xc090412

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    goto :goto_0
.end method


# virtual methods
.method public getListAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/oppo/app/OppoListActivity;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/oppo/app/OppoListActivity;->ensureList()V

    .line 149
    iget-object v0, p0, Lcom/oppo/app/OppoListActivity;->mList:Lcom/oppo/widget/OppoListView;

    return-object v0
.end method

.method public getSelectedItemId()J
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/oppo/app/OppoListActivity;->mList:Lcom/oppo/widget/OppoListView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItemId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/oppo/app/OppoListActivity;->mList:Lcom/oppo/widget/OppoListView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public onContentChanged()V
    .locals 3

    .prologue
    .line 89
    invoke-super {p0}, Landroid/app/Activity;->onContentChanged()V

    .line 90
    const v1, 0x1020004

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 91
    .local v0, emptyView:Landroid/view/View;
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oppo/widget/OppoListView;

    iput-object v1, p0, Lcom/oppo/app/OppoListActivity;->mList:Lcom/oppo/widget/OppoListView;

    .line 92
    iget-object v1, p0, Lcom/oppo/app/OppoListActivity;->mList:Lcom/oppo/widget/OppoListView;

    if-nez v1, :cond_0

    .line 93
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Your content must have a OppoSpringListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 97
    :cond_0
    if-eqz v0, :cond_1

    .line 98
    iget-object v1, p0, Lcom/oppo/app/OppoListActivity;->mList:Lcom/oppo/widget/OppoListView;

    invoke-virtual {v1, v0}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    .line 100
    :cond_1
    iget-object v1, p0, Lcom/oppo/app/OppoListActivity;->mList:Lcom/oppo/widget/OppoListView;

    iget-object v2, p0, Lcom/oppo/app/OppoListActivity;->mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 101
    iget-boolean v1, p0, Lcom/oppo/app/OppoListActivity;->mFinishedStart:Z

    if-eqz v1, :cond_2

    .line 102
    iget-object v1, p0, Lcom/oppo/app/OppoListActivity;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p0, v1}, Lcom/oppo/app/OppoListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 104
    :cond_2
    iget-object v1, p0, Lcom/oppo/app/OppoListActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/oppo/app/OppoListActivity;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 105
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oppo/app/OppoListActivity;->mFinishedStart:Z

    .line 106
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/oppo/app/OppoListActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oppo/app/OppoListActivity;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 84
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 85
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 73
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/oppo/app/OppoListActivity;->ensureList()V

    .line 78
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 79
    return-void
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 114
    monitor-enter p0

    .line 115
    :try_start_0
    invoke-direct {p0}, Lcom/oppo/app/OppoListActivity;->ensureList()V

    .line 116
    iput-object p1, p0, Lcom/oppo/app/OppoListActivity;->mAdapter:Landroid/widget/ListAdapter;

    .line 117
    iget-object v0, p0, Lcom/oppo/app/OppoListActivity;->mList:Lcom/oppo/widget/OppoListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 118
    monitor-exit p0

    .line 119
    return-void

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSelection(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/oppo/app/OppoListActivity;->mList:Lcom/oppo/widget/OppoListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V

    .line 128
    return-void
.end method
