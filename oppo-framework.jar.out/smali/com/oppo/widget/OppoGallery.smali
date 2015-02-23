.class public Lcom/oppo/widget/OppoGallery;
.super Landroid/widget/Gallery;
.source "OppoGallery.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final MESSAGE_SAVEBITMAP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "OppoGallery"

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private mCacheBitmap:Landroid/graphics/Bitmap;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mDstRect:Landroid/graphics/Rect;

.field mHandler:Landroid/os/Handler;

.field private mIsContainer:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mSrcRect:Landroid/graphics/Rect;

.field private mTempChildCount:I

.field private mTempFirstPosition:I

.field private mTempSelectedPosition:I

.field private mUpdateFlag:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oppo/widget/OppoGallery;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/widget/OppoGallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 63
    const v0, 0x1010070

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/widget/OppoGallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    iput-boolean v1, p0, Lcom/oppo/widget/OppoGallery;->mUpdateFlag:Z

    .line 54
    iput v0, p0, Lcom/oppo/widget/OppoGallery;->mTempSelectedPosition:I

    .line 55
    iput v0, p0, Lcom/oppo/widget/OppoGallery;->mTempFirstPosition:I

    .line 56
    iput v0, p0, Lcom/oppo/widget/OppoGallery;->mTempChildCount:I

    .line 234
    new-instance v0, Lcom/oppo/widget/OppoGallery$1;

    invoke-direct {v0, p0}, Lcom/oppo/widget/OppoGallery$1;-><init>(Lcom/oppo/widget/OppoGallery;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoGallery;->mHandler:Landroid/os/Handler;

    .line 250
    iput-boolean v1, p0, Lcom/oppo/widget/OppoGallery;->mIsContainer:Z

    .line 68
    invoke-direct {p0}, Lcom/oppo/widget/OppoGallery;->init()V

    .line 69
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/oppo/widget/OppoGallery;->sLock:Ljava/lang/Object;

    return-object v0
.end method

.method private destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 215
    iget-object v0, p0, Lcom/oppo/widget/OppoGallery;->mCacheBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/oppo/widget/OppoGallery;->mCacheBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 220
    iput-object v2, p0, Lcom/oppo/widget/OppoGallery;->mCacheBitmap:Landroid/graphics/Bitmap;

    .line 221
    iput-object v2, p0, Lcom/oppo/widget/OppoGallery;->mCanvas:Landroid/graphics/Canvas;

    .line 222
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 225
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoGallery;->mUpdateFlag:Z

    .line 227
    iput v1, p0, Lcom/oppo/widget/OppoGallery;->mTempChildCount:I

    .line 228
    iput v1, p0, Lcom/oppo/widget/OppoGallery;->mTempSelectedPosition:I

    .line 229
    iput v1, p0, Lcom/oppo/widget/OppoGallery;->mTempFirstPosition:I

    .line 231
    iget-object v0, p0, Lcom/oppo/widget/OppoGallery;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 232
    return-void
.end method

.method private getSelectedPosition()I
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 72
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/oppo/widget/OppoGallery;->mCanvas:Landroid/graphics/Canvas;

    .line 73
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oppo/widget/OppoGallery;->mPaint:Landroid/graphics/Paint;

    .line 74
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oppo/widget/OppoGallery;->mSrcRect:Landroid/graphics/Rect;

    .line 75
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oppo/widget/OppoGallery;->mDstRect:Landroid/graphics/Rect;

    .line 76
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    .line 94
    sget-object v3, Lcom/oppo/widget/OppoGallery;->sLock:Ljava/lang/Object;

    monitor-enter v3

    .line 95
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 97
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 98
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 106
    .local v0, mScrollX:I
    iget-boolean v2, p0, Lcom/oppo/widget/OppoGallery;->mUpdateFlag:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/oppo/widget/OppoGallery;->mTempChildCount:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ne v2, v4, :cond_0

    iget v2, p0, Lcom/oppo/widget/OppoGallery;->mTempSelectedPosition:I

    invoke-direct {p0}, Lcom/oppo/widget/OppoGallery;->getSelectedPosition()I

    move-result v4

    if-ne v2, v4, :cond_0

    iget v2, p0, Lcom/oppo/widget/OppoGallery;->mTempFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v4

    if-ne v2, v4, :cond_0

    .line 112
    iget-object v2, p0, Lcom/oppo/widget/OppoGallery;->mSrcRect:Landroid/graphics/Rect;

    neg-int v4, v0

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    sub-int/2addr v6, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 113
    iget-object v2, p0, Lcom/oppo/widget/OppoGallery;->mDstRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 114
    iget-object v2, p0, Lcom/oppo/widget/OppoGallery;->mCacheBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/oppo/widget/OppoGallery;->mSrcRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/oppo/widget/OppoGallery;->mDstRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/oppo/widget/OppoGallery;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 124
    .end local v0           #mScrollX:I
    :goto_0
    monitor-exit v3

    .line 125
    return-void

    .line 119
    .restart local v0       #mScrollX:I
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 124
    .end local v0           #mScrollX:I
    .end local v1           #v:Landroid/view/View;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 122
    .restart local v1       #v:Landroid/view/View;
    :cond_1
    :try_start_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public endFlip()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, -0x1

    .line 150
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoGallery;->mUpdateFlag:Z

    .line 152
    iput v1, p0, Lcom/oppo/widget/OppoGallery;->mTempChildCount:I

    .line 153
    iput v1, p0, Lcom/oppo/widget/OppoGallery;->mTempSelectedPosition:I

    .line 154
    iput v1, p0, Lcom/oppo/widget/OppoGallery;->mTempFirstPosition:I

    .line 156
    iget-object v0, p0, Lcom/oppo/widget/OppoGallery;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 157
    iget-object v0, p0, Lcom/oppo/widget/OppoGallery;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 158
    return-void
.end method

.method public onBindBitmap()V
    .locals 7

    .prologue
    .line 168
    iget-object v4, p0, Lcom/oppo/widget/OppoGallery;->mCacheBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    .line 172
    iget-object v4, p0, Lcom/oppo/widget/OppoGallery;->mCacheBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 173
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/oppo/widget/OppoGallery;->mCacheBitmap:Landroid/graphics/Bitmap;

    .line 174
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 177
    :cond_0
    iget-object v4, p0, Lcom/oppo/widget/OppoGallery;->mCanvas:Landroid/graphics/Canvas;

    if-nez v4, :cond_2

    .line 209
    :cond_1
    :goto_0
    return-void

    .line 181
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    iput v4, p0, Lcom/oppo/widget/OppoGallery;->mTempChildCount:I

    .line 182
    invoke-direct {p0}, Lcom/oppo/widget/OppoGallery;->getSelectedPosition()I

    move-result v4

    iput v4, p0, Lcom/oppo/widget/OppoGallery;->mTempSelectedPosition:I

    .line 183
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v4

    iput v4, p0, Lcom/oppo/widget/OppoGallery;->mTempFirstPosition:I

    .line 185
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/oppo/widget/OppoGallery;->mTempChildCount:I

    mul-int v3, v4, v5

    .line 186
    .local v3, w:I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 188
    .local v0, h:I
    if-lez v3, :cond_1

    if-lez v0, :cond_1

    .line 196
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v0, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/widget/OppoGallery;->mCacheBitmap:Landroid/graphics/Bitmap;

    .line 197
    iget-object v4, p0, Lcom/oppo/widget/OppoGallery;->mCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/oppo/widget/OppoGallery;->mCacheBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 199
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget v4, p0, Lcom/oppo/widget/OppoGallery;->mTempChildCount:I

    if-ge v1, v4, :cond_4

    .line 200
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 201
    .local v2, view:Landroid/view/View;
    iget-object v4, p0, Lcom/oppo/widget/OppoGallery;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    .line 202
    iget-object v4, p0, Lcom/oppo/widget/OppoGallery;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    mul-int/2addr v5, v1

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 203
    if-eqz v2, :cond_3

    .line 204
    iget-object v4, p0, Lcom/oppo/widget/OppoGallery;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2, v4}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 206
    :cond_3
    iget-object v4, p0, Lcom/oppo/widget/OppoGallery;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v4}, Landroid/graphics/Canvas;->restore()V

    .line 199
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 208
    .end local v2           #view:Landroid/view/View;
    :cond_4
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/oppo/widget/OppoGallery;->mUpdateFlag:Z

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    const/4 v1, -0x1

    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoGallery;->mUpdateFlag:Z

    .line 136
    iput v1, p0, Lcom/oppo/widget/OppoGallery;->mTempChildCount:I

    .line 137
    iput v1, p0, Lcom/oppo/widget/OppoGallery;->mTempSelectedPosition:I

    .line 138
    iput v1, p0, Lcom/oppo/widget/OppoGallery;->mTempFirstPosition:I

    .line 140
    iget-object v0, p0, Lcom/oppo/widget/OppoGallery;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 141
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/oppo/widget/OppoGallery;->destroy()V

    .line 130
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v1, 0x0

    .line 85
    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-lez v0, :cond_0

    .line 86
    const/16 v0, 0x15

    invoke-super {p0, v0, v1}, Landroid/widget/Gallery;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 88
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x16

    invoke-super {p0, v0, v1}, Landroid/widget/Gallery;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setIsContainer(Z)V
    .locals 0
    .parameter "is"

    .prologue
    .line 258
    iput-boolean p1, p0, Lcom/oppo/widget/OppoGallery;->mIsContainer:Z

    .line 259
    return-void
.end method
