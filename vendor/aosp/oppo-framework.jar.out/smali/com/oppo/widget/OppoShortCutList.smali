.class public Lcom/oppo/widget/OppoShortCutList;
.super Landroid/app/Dialog;
.source "OppoShortCutList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoShortCutList$1;,
        Lcom/oppo/widget/OppoShortCutList$OppoShortCutItem;,
        Lcom/oppo/widget/OppoShortCutList$ShortCutListAdapter;,
        Lcom/oppo/widget/OppoShortCutList$OnShortCutListItemSelectedListener;,
        Lcom/oppo/widget/OppoShortCutList$OnShortCutListSelectedListener;,
        Lcom/oppo/widget/OppoShortCutList$ShortCutListClickListener;,
        Lcom/oppo/widget/OppoShortCutList$SubMultiListView;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field public static final DEFAUL_MODE:I = 0x1

.field public static final FIRST_VIEW:I = 0x1

.field public static final LAST_VIEW:I = 0x3

.field public static final LONGSTAND_MODE:I = 0x2

.field public static final MID_VIEW:I = 0x2

.field public static final NONE_BACKGROUND:I = 0x0

.field public static final ONLY_ONE_CHILD_VIEW:I = 0x4

.field public static final SHADE_MODE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "OppoShortCutList"


# instance fields
.field private mAdapter:Lcom/oppo/widget/OppoShortCutList$ShortCutListAdapter;

.field private mContext:Landroid/content/Context;

.field private mFirBg:Landroid/graphics/drawable/Drawable;

.field private mLastBg:Landroid/graphics/drawable/Drawable;

.field private mListener:Lcom/oppo/widget/OppoShortCutList$OnShortCutListSelectedListener;

.field private mMidBg:Landroid/graphics/drawable/Drawable;

.field private mOnlyBg:Landroid/graphics/drawable/Drawable;

.field private mShortCutItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oppo/widget/OppoShortCutList$OppoShortCutItem;",
            ">;"
        }
    .end annotation
.end field

.field private mShortCutItemSelectedListener:Lcom/oppo/widget/OppoShortCutList$OnShortCutListItemSelectedListener;

.field private mShortCutList:Lcom/oppo/widget/OppoShortCutList$SubMultiListView;

.field private mTransBg:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 85
    const v0, 0xc030007

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 72
    iput-object v1, p0, Lcom/oppo/widget/OppoShortCutList;->mAdapter:Lcom/oppo/widget/OppoShortCutList$ShortCutListAdapter;

    .line 78
    iput-object v1, p0, Lcom/oppo/widget/OppoShortCutList;->mFirBg:Landroid/graphics/drawable/Drawable;

    .line 79
    iput-object v1, p0, Lcom/oppo/widget/OppoShortCutList;->mMidBg:Landroid/graphics/drawable/Drawable;

    .line 80
    iput-object v1, p0, Lcom/oppo/widget/OppoShortCutList;->mLastBg:Landroid/graphics/drawable/Drawable;

    .line 81
    iput-object v1, p0, Lcom/oppo/widget/OppoShortCutList;->mOnlyBg:Landroid/graphics/drawable/Drawable;

    .line 82
    iput-object v1, p0, Lcom/oppo/widget/OppoShortCutList;->mTransBg:Landroid/graphics/drawable/Drawable;

    .line 86
    iput-object p1, p0, Lcom/oppo/widget/OppoShortCutList;->mContext:Landroid/content/Context;

    .line 87
    return-void
.end method

.method static synthetic access$100(Lcom/oppo/widget/OppoShortCutList;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private setAdapter(Lcom/oppo/widget/OppoShortCutList$ShortCutListAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 187
    if-eqz p1, :cond_0

    .line 188
    iput-object p1, p0, Lcom/oppo/widget/OppoShortCutList;->mAdapter:Lcom/oppo/widget/OppoShortCutList$ShortCutListAdapter;

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutList:Lcom/oppo/widget/OppoShortCutList$SubMultiListView;

    iget-object v1, p0, Lcom/oppo/widget/OppoShortCutList;->mAdapter:Lcom/oppo/widget/OppoShortCutList$ShortCutListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 191
    return-void
.end method


# virtual methods
.method public addShortCutItem(IIILjava/lang/String;)V
    .locals 2
    .parameter "index"
    .parameter "id"
    .parameter "res"
    .parameter "label"

    .prologue
    .line 251
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutItemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutItemList:Ljava/util/ArrayList;

    new-instance v1, Lcom/oppo/widget/OppoShortCutList$OppoShortCutItem;

    invoke-direct {v1, p2, p3, p4}, Lcom/oppo/widget/OppoShortCutList$OppoShortCutItem;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public addShortCutItem(IILjava/lang/String;)V
    .locals 2
    .parameter "id"
    .parameter "res"
    .parameter "label"

    .prologue
    .line 215
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutItemList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutItemList:Ljava/util/ArrayList;

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutItemList:Ljava/util/ArrayList;

    new-instance v1, Lcom/oppo/widget/OppoShortCutList$OppoShortCutItem;

    invoke-direct {v1, p1, p2, p3}, Lcom/oppo/widget/OppoShortCutList$OppoShortCutItem;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    return-void
.end method

.method public addShortCutItem(ILjava/lang/String;)V
    .locals 2
    .parameter "res"
    .parameter "label"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutItemList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutItemList:Ljava/util/ArrayList;

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutItemList:Ljava/util/ArrayList;

    new-instance v1, Lcom/oppo/widget/OppoShortCutList$OppoShortCutItem;

    invoke-direct {v1, p1, p2}, Lcom/oppo/widget/OppoShortCutList$OppoShortCutItem;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    return-void
.end method

.method public clearShortCutItem()V
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutItemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public getIdByIndex(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 387
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutItemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 388
    :cond_0
    const/4 v0, -0x1

    .line 390
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoShortCutList$OppoShortCutItem;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoShortCutList$OppoShortCutItem;->getId()I

    move-result v0

    goto :goto_0
.end method

.method public getIndexById(I)I
    .locals 4
    .parameter "id"

    .prologue
    const/4 v3, -0x1

    .line 367
    iget-object v2, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutItemList:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    move v0, v3

    .line 376
    :cond_0
    :goto_0
    return v0

    .line 370
    :cond_1
    iget-object v2, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 371
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 372
    iget-object v2, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutItemList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/widget/OppoShortCutList$OppoShortCutItem;

    invoke-virtual {v2}, Lcom/oppo/widget/OppoShortCutList$OppoShortCutItem;->getId()I

    move-result v2

    if-eq p1, v2, :cond_0

    .line 371
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v3

    .line 376
    goto :goto_0
.end method

.method public getOnShortCutListItemSelectedListener()Lcom/oppo/widget/OppoShortCutList$OnShortCutListItemSelectedListener;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutItemSelectedListener:Lcom/oppo/widget/OppoShortCutList$OnShortCutListItemSelectedListener;

    return-object v0
.end method

.method public getOnShortCutListSelectedListener()Lcom/oppo/widget/OppoShortCutList$OnShortCutListSelectedListener;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutList;->mListener:Lcom/oppo/widget/OppoShortCutList$OnShortCutListSelectedListener;

    return-object v0
.end method

.method public getShortCutItem(I)Lcom/oppo/widget/OppoShortCutList$OppoShortCutItem;
    .locals 1
    .parameter "index"

    .prologue
    .line 351
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutItemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoShortCutList$OppoShortCutItem;

    .line 356
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getShortCutItemEnabled(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 335
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutItemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoShortCutList$OppoShortCutItem;

    iget-boolean v0, v0, Lcom/oppo/widget/OppoShortCutList$OppoShortCutItem;->enabled:Z

    .line 340
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getShortCutListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutList:Lcom/oppo/widget/OppoShortCutList$SubMultiListView;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 282
    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    .line 283
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, -0x1

    .line 127
    const v2, 0xc09040c

    invoke-virtual {p0, v2}, Landroid/app/Dialog;->setContentView(I)V

    .line 128
    const v2, 0xc02040c

    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oppo/widget/OppoShortCutList$SubMultiListView;

    iput-object v2, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutList:Lcom/oppo/widget/OppoShortCutList$SubMultiListView;

    .line 129
    iget-object v2, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutList:Lcom/oppo/widget/OppoShortCutList$SubMultiListView;

    new-instance v3, Lcom/oppo/widget/OppoShortCutList$ShortCutListClickListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/oppo/widget/OppoShortCutList$ShortCutListClickListener;-><init>(Lcom/oppo/widget/OppoShortCutList;Lcom/oppo/widget/OppoShortCutList$1;)V

    invoke-virtual {v2, v3}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 132
    iget-object v2, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutList:Lcom/oppo/widget/OppoShortCutList$SubMultiListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/AdapterView;->setFocusable(Z)V

    .line 134
    iget-object v2, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutList:Lcom/oppo/widget/OppoShortCutList$SubMultiListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->setOverScrollMode(I)V

    .line 135
    iget-object v2, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutList:Lcom/oppo/widget/OppoShortCutList$SubMultiListView;

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 138
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 139
    .local v1, window:Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 140
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 141
    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 143
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x2

    or-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 144
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 147
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 174
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 175
    .local v0, handled:Z
    if-eqz v0, :cond_0

    .line 183
    .end local v0           #handled:Z
    :goto_0
    return v0

    .line 179
    .restart local v0       #handled:Z
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isPrintingKey()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 180
    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    .line 181
    const/4 v0, 0x1

    goto :goto_0

    .line 183
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 151
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 152
    new-instance v0, Lcom/oppo/widget/OppoShortCutList$ShortCutListAdapter;

    iget-object v1, p0, Lcom/oppo/widget/OppoShortCutList;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/oppo/widget/OppoShortCutList$ShortCutListAdapter;-><init>(Lcom/oppo/widget/OppoShortCutList;Landroid/content/Context;)V

    .line 153
    .local v0, adapter:Lcom/oppo/widget/OppoShortCutList$ShortCutListAdapter;
    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoShortCutList;->setAdapter(Lcom/oppo/widget/OppoShortCutList$ShortCutListAdapter;)V

    .line 154
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 159
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 160
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 164
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 166
    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    .line 167
    const/4 v0, 0x1

    .line 169
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeShortCutItem(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 263
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutItemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected selectShortCutList(ILandroid/view/View;I)V
    .locals 1
    .parameter "index"
    .parameter "view"
    .parameter "id"

    .prologue
    .line 286
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoShortCutList;->getShortCutItemEnabled(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 289
    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 291
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutList;->mListener:Lcom/oppo/widget/OppoShortCutList$OnShortCutListSelectedListener;

    if-eqz v0, :cond_2

    .line 294
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutList;->mListener:Lcom/oppo/widget/OppoShortCutList$OnShortCutListSelectedListener;

    invoke-interface {v0, p1}, Lcom/oppo/widget/OppoShortCutList$OnShortCutListSelectedListener;->onShortCutListSelected(I)V

    goto :goto_0

    .line 295
    :cond_2
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutItemSelectedListener:Lcom/oppo/widget/OppoShortCutList$OnShortCutListItemSelectedListener;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutItemSelectedListener:Lcom/oppo/widget/OppoShortCutList$OnShortCutListItemSelectedListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/oppo/widget/OppoShortCutList$OnShortCutListItemSelectedListener;->onShortCutListItemSelected(ILandroid/view/View;I)V

    goto :goto_0
.end method

.method public setOnShortCutListItemSelectedListener(Lcom/oppo/widget/OppoShortCutList$OnShortCutListItemSelectedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutItemSelectedListener:Lcom/oppo/widget/OppoShortCutList$OnShortCutListItemSelectedListener;

    .line 114
    return-void
.end method

.method public setOnShortCutListSelectedListener(Lcom/oppo/widget/OppoShortCutList$OnShortCutListSelectedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/oppo/widget/OppoShortCutList;->mListener:Lcom/oppo/widget/OppoShortCutList$OnShortCutListSelectedListener;

    .line 96
    return-void
.end method

.method public setShortCutItem(IIILjava/lang/String;)V
    .locals 2
    .parameter "index"
    .parameter "id"
    .parameter "res"
    .parameter "label"

    .prologue
    .line 231
    iget-object v1, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutItemList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    iget-object v1, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoShortCutList$OppoShortCutItem;

    .line 237
    .local v0, mItem:Lcom/oppo/widget/OppoShortCutList$OppoShortCutItem;
    invoke-virtual {v0, p2}, Lcom/oppo/widget/OppoShortCutList$OppoShortCutItem;->setId(I)V

    .line 238
    invoke-virtual {v0, p3}, Lcom/oppo/widget/OppoShortCutList$OppoShortCutItem;->setDrawableResource(I)V

    .line 239
    invoke-virtual {v0, p4}, Lcom/oppo/widget/OppoShortCutList$OppoShortCutItem;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setShortCutItemEnabled(IZ)V
    .locals 1
    .parameter "index"
    .parameter "enable"

    .prologue
    .line 320
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutItemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoShortCutList$OppoShortCutItem;

    iput-boolean p2, v0, Lcom/oppo/widget/OppoShortCutList$OppoShortCutItem;->enabled:Z

    .line 325
    :cond_0
    return-void
.end method

.method public setShortCutListView(Lcom/oppo/widget/OppoShortCutList$SubMultiListView;)V
    .locals 0
    .parameter "list"

    .prologue
    .line 399
    iput-object p1, p0, Lcom/oppo/widget/OppoShortCutList;->mShortCutList:Lcom/oppo/widget/OppoShortCutList$SubMultiListView;

    .line 400
    return-void
.end method
