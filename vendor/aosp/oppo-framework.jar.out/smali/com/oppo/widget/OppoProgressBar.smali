.class public Lcom/oppo/widget/OppoProgressBar;
.super Landroid/view/View;
.source "OppoProgressBar.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoProgressBar$1;,
        Lcom/oppo/widget/OppoProgressBar$AccessibilityEventSender;,
        Lcom/oppo/widget/OppoProgressBar$SavedState;,
        Lcom/oppo/widget/OppoProgressBar$RefreshProgressRunnable;
    }
.end annotation


# static fields
.field private static final ANIMATION_RESOLUTION:I = 0xc8

.field private static final DBG:Z = false

.field private static final MAX_LEVEL:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "OppoProgressBar"

.field private static final TIMEOUT_SEND_ACCESSIBILITY_EVENT:I = 0xc8


# instance fields
.field private mAccessibilityEventSender:Lcom/oppo/widget/OppoProgressBar$AccessibilityEventSender;

.field private mAnimation:Landroid/view/animation/AlphaAnimation;

.field private mAnimationResolution:I

.field private mBehavior:I

.field private mCurrentDrawable:Landroid/graphics/drawable/Drawable;

.field private mDrawHeight:I

.field private mDuration:I

.field private mInDrawing:Z

.field private mIndeterminate:Z

.field private mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsCustomStyle:Z

.field private mLastDrawTime:J

.field private mMax:I

.field mMaxHeight:I

.field mMaxWidth:I

.field mMinHeight:I

.field mMinWidth:I

.field private mNoInvalidate:Z

.field private mOnlyIndeterminate:Z

.field protected mOppoProgressBgDrawable:Landroid/graphics/drawable/Drawable;

.field protected mOppoProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private mProgress:I

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private mRefreshProgressRunnable:Lcom/oppo/widget/OppoProgressBar$RefreshProgressRunnable;

.field mSampleTile:Landroid/graphics/Bitmap;

.field private mScale:F

.field private mSecondaryProgress:I

.field private mShouldStartAnimationDrawable:Z

.field private mSpace:I

.field private mTransformation:Landroid/view/animation/Transformation;

.field private mUiThreadId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 216
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/widget/OppoProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 217
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 220
    const v0, 0x1010077

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/widget/OppoProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 221
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 224
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oppo/widget/OppoProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 225
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"
    .parameter "styleRes"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 231
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 232
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/oppo/widget/OppoProgressBar;->mUiThreadId:J

    .line 233
    invoke-direct {p0}, Lcom/oppo/widget/OppoProgressBar;->initProgressBar()V

    .line 235
    sget-object v6, Landroid/R$styleable;->ProgressBar:[I

    invoke-virtual {p1, p2, v6, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 238
    .local v0, a:Landroid/content/res/TypedArray;
    iput-boolean v4, p0, Lcom/oppo/widget/OppoProgressBar;->mNoInvalidate:Z

    .line 240
    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 241
    .local v2, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 242
    invoke-direct {p0, v2, v5}, Lcom/oppo/widget/OppoProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 245
    invoke-virtual {p0, v2}, Lcom/oppo/widget/OppoProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 248
    :cond_0
    const/16 v6, 0x9

    iget v7, p0, Lcom/oppo/widget/OppoProgressBar;->mDuration:I

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Lcom/oppo/widget/OppoProgressBar;->mDuration:I

    .line 250
    const/16 v6, 0xb

    iget v7, p0, Lcom/oppo/widget/OppoProgressBar;->mMinWidth:I

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lcom/oppo/widget/OppoProgressBar;->mMinWidth:I

    .line 251
    iget v6, p0, Lcom/oppo/widget/OppoProgressBar;->mMaxWidth:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lcom/oppo/widget/OppoProgressBar;->mMaxWidth:I

    .line 252
    const/16 v6, 0xc

    iget v7, p0, Lcom/oppo/widget/OppoProgressBar;->mMinHeight:I

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lcom/oppo/widget/OppoProgressBar;->mMinHeight:I

    .line 253
    iget v6, p0, Lcom/oppo/widget/OppoProgressBar;->mMaxHeight:I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lcom/oppo/widget/OppoProgressBar;->mMaxHeight:I

    .line 255
    const/16 v6, 0xa

    iget v7, p0, Lcom/oppo/widget/OppoProgressBar;->mBehavior:I

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Lcom/oppo/widget/OppoProgressBar;->mBehavior:I

    .line 257
    const/16 v6, 0xd

    const v7, 0x10a000b

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 259
    .local v3, resID:I
    if-lez v3, :cond_1

    .line 260
    invoke-virtual {p0, p1, v3}, Lcom/oppo/widget/OppoProgressBar;->setInterpolator(Landroid/content/Context;I)V

    .line 263
    :cond_1
    const/4 v6, 0x2

    iget v7, p0, Lcom/oppo/widget/OppoProgressBar;->mMax:I

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/oppo/widget/OppoProgressBar;->setMax(I)V

    .line 265
    const/4 v6, 0x3

    iget v7, p0, Lcom/oppo/widget/OppoProgressBar;->mProgress:I

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/oppo/widget/OppoProgressBar;->setProgress(I)V

    .line 267
    const/4 v6, 0x4

    iget v7, p0, Lcom/oppo/widget/OppoProgressBar;->mSecondaryProgress:I

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/oppo/widget/OppoProgressBar;->setSecondaryProgress(I)V

    .line 270
    const/4 v6, 0x7

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 271
    if-eqz v2, :cond_2

    .line 272
    invoke-direct {p0, v2}, Lcom/oppo/widget/OppoProgressBar;->tileifyIndeterminate(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 273
    invoke-virtual {p0, v2}, Lcom/oppo/widget/OppoProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 276
    :cond_2
    const/4 v6, 0x6

    iget-boolean v7, p0, Lcom/oppo/widget/OppoProgressBar;->mOnlyIndeterminate:Z

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/oppo/widget/OppoProgressBar;->mOnlyIndeterminate:Z

    .line 279
    iput-boolean v5, p0, Lcom/oppo/widget/OppoProgressBar;->mNoInvalidate:Z

    .line 281
    iget-boolean v6, p0, Lcom/oppo/widget/OppoProgressBar;->mOnlyIndeterminate:Z

    if-nez v6, :cond_3

    const/4 v6, 0x5

    iget-boolean v7, p0, Lcom/oppo/widget/OppoProgressBar;->mIndeterminate:Z

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    :goto_0
    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoProgressBar;->setIndeterminate(Z)V

    .line 284
    const/16 v4, 0xe

    const/16 v6, 0xc8

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, p0, Lcom/oppo/widget/OppoProgressBar;->mAnimationResolution:I

    .line 287
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 289
    sget-object v4, Loppo/R$styleable;->OppoProgressBar:[I

    invoke-virtual {p1, p2, v4, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 291
    .local v1, b:Landroid/content/res/TypedArray;
    invoke-virtual {v1, v5, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/oppo/widget/OppoProgressBar;->mIsCustomStyle:Z

    .line 292
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 294
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0xc08041e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/widget/OppoProgressBar;->mOppoProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 296
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0xc08041f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/widget/OppoProgressBar;->mOppoProgressBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 297
    return-void

    .end local v1           #b:Landroid/content/res/TypedArray;
    :cond_4
    move v4, v5

    .line 281
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/oppo/widget/OppoProgressBar;IIZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 155
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oppo/widget/OppoProgressBar;->doRefreshProgress(IIZZ)V

    return-void
.end method

.method static synthetic access$102(Lcom/oppo/widget/OppoProgressBar;Lcom/oppo/widget/OppoProgressBar$RefreshProgressRunnable;)Lcom/oppo/widget/OppoProgressBar$RefreshProgressRunnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    iput-object p1, p0, Lcom/oppo/widget/OppoProgressBar;->mRefreshProgressRunnable:Lcom/oppo/widget/OppoProgressBar$RefreshProgressRunnable;

    return-object p1
.end method

.method private declared-synchronized doRefreshProgress(IIZZ)V
    .locals 7
    .parameter "id"
    .parameter "progress"
    .parameter "fromUser"
    .parameter "callBackToApp"

    .prologue
    .line 615
    monitor-enter p0

    :try_start_0
    iget v5, p0, Lcom/oppo/widget/OppoProgressBar;->mMax:I

    if-lez v5, :cond_2

    int-to-float v5, p2

    iget v6, p0, Lcom/oppo/widget/OppoProgressBar;->mMax:I

    int-to-float v6, v6

    div-float v4, v5, v6

    .line 616
    .local v4, scale:F
    :goto_0
    iput v4, p0, Lcom/oppo/widget/OppoProgressBar;->mScale:F

    .line 617
    iget-object v1, p0, Lcom/oppo/widget/OppoProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 618
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_4

    .line 619
    const/4 v3, 0x0

    .line 621
    .local v3, progressDrawable:Landroid/graphics/drawable/Drawable;
    instance-of v5, v1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v5, :cond_0

    .line 622
    move-object v0, v1

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    move-object v5, v0

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 625
    :cond_0
    const v5, 0x461c4000

    mul-float/2addr v5, v4

    float-to-int v2, v5

    .line 626
    .local v2, level:I
    if-eqz v3, :cond_3

    .end local v3           #progressDrawable:Landroid/graphics/drawable/Drawable;
    :goto_1
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 631
    .end local v2           #level:I
    :goto_2
    if-eqz p4, :cond_1

    const v5, 0x102000d

    if-ne p1, v5, :cond_1

    .line 632
    invoke-virtual {p0, v4, p3}, Lcom/oppo/widget/OppoProgressBar;->onProgressRefresh(FZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 634
    :cond_1
    monitor-exit p0

    return-void

    .line 615
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    .end local v4           #scale:F
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .restart local v1       #d:Landroid/graphics/drawable/Drawable;
    .restart local v2       #level:I
    .restart local v3       #progressDrawable:Landroid/graphics/drawable/Drawable;
    .restart local v4       #scale:F
    :cond_3
    move-object v3, v1

    .line 626
    goto :goto_1

    .line 628
    .end local v2           #level:I
    .end local v3           #progressDrawable:Landroid/graphics/drawable/Drawable;
    :cond_4
    :try_start_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 615
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    .end local v4           #scale:F
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private initProgressBar()V
    .locals 4

    .prologue
    const/16 v3, 0x30

    const/16 v2, 0x18

    const/4 v1, 0x0

    .line 392
    const/16 v0, 0x64

    iput v0, p0, Lcom/oppo/widget/OppoProgressBar;->mMax:I

    .line 393
    iput v1, p0, Lcom/oppo/widget/OppoProgressBar;->mProgress:I

    .line 394
    iput v1, p0, Lcom/oppo/widget/OppoProgressBar;->mSecondaryProgress:I

    .line 395
    iput-boolean v1, p0, Lcom/oppo/widget/OppoProgressBar;->mIndeterminate:Z

    .line 396
    iput-boolean v1, p0, Lcom/oppo/widget/OppoProgressBar;->mOnlyIndeterminate:Z

    .line 397
    const/16 v0, 0xfa0

    iput v0, p0, Lcom/oppo/widget/OppoProgressBar;->mDuration:I

    .line 398
    const/4 v0, 0x1

    iput v0, p0, Lcom/oppo/widget/OppoProgressBar;->mBehavior:I

    .line 399
    iput v2, p0, Lcom/oppo/widget/OppoProgressBar;->mMinWidth:I

    .line 400
    iput v3, p0, Lcom/oppo/widget/OppoProgressBar;->mMaxWidth:I

    .line 401
    iput v2, p0, Lcom/oppo/widget/OppoProgressBar;->mMinHeight:I

    .line 402
    iput v3, p0, Lcom/oppo/widget/OppoProgressBar;->mMaxHeight:I

    .line 403
    return-void
.end method

.method private declared-synchronized refreshProgress(IIZ)V
    .locals 5
    .parameter "id"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 643
    monitor-enter p0

    :try_start_0
    iget-wide v1, p0, Lcom/oppo/widget/OppoProgressBar;->mUiThreadId:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 644
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/oppo/widget/OppoProgressBar;->doRefreshProgress(IIZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 659
    :goto_0
    monitor-exit p0

    return-void

    .line 647
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/oppo/widget/OppoProgressBar;->mRefreshProgressRunnable:Lcom/oppo/widget/OppoProgressBar$RefreshProgressRunnable;

    if-eqz v1, :cond_1

    .line 649
    iget-object v0, p0, Lcom/oppo/widget/OppoProgressBar;->mRefreshProgressRunnable:Lcom/oppo/widget/OppoProgressBar$RefreshProgressRunnable;

    .line 651
    .local v0, r:Lcom/oppo/widget/OppoProgressBar$RefreshProgressRunnable;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oppo/widget/OppoProgressBar;->mRefreshProgressRunnable:Lcom/oppo/widget/OppoProgressBar$RefreshProgressRunnable;

    .line 652
    invoke-virtual {v0, p1, p2, p3}, Lcom/oppo/widget/OppoProgressBar$RefreshProgressRunnable;->setup(IIZ)V

    .line 657
    :goto_1
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 643
    .end local v0           #r:Lcom/oppo/widget/OppoProgressBar$RefreshProgressRunnable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 655
    :cond_1
    :try_start_2
    new-instance v0, Lcom/oppo/widget/OppoProgressBar$RefreshProgressRunnable;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/oppo/widget/OppoProgressBar$RefreshProgressRunnable;-><init>(Lcom/oppo/widget/OppoProgressBar;IIZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .restart local v0       #r:Lcom/oppo/widget/OppoProgressBar$RefreshProgressRunnable;
    goto :goto_1
.end method

.method private scheduleAccessibilityEventSender()V
    .locals 3

    .prologue
    .line 1220
    iget-object v0, p0, Lcom/oppo/widget/OppoProgressBar;->mAccessibilityEventSender:Lcom/oppo/widget/OppoProgressBar$AccessibilityEventSender;

    if-nez v0, :cond_0

    .line 1221
    new-instance v0, Lcom/oppo/widget/OppoProgressBar$AccessibilityEventSender;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oppo/widget/OppoProgressBar$AccessibilityEventSender;-><init>(Lcom/oppo/widget/OppoProgressBar;Lcom/oppo/widget/OppoProgressBar$1;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoProgressBar;->mAccessibilityEventSender:Lcom/oppo/widget/OppoProgressBar$AccessibilityEventSender;

    .line 1225
    :goto_0
    iget-object v0, p0, Lcom/oppo/widget/OppoProgressBar;->mAccessibilityEventSender:Lcom/oppo/widget/OppoProgressBar$AccessibilityEventSender;

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1226
    return-void

    .line 1223
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoProgressBar;->mAccessibilityEventSender:Lcom/oppo/widget/OppoProgressBar$AccessibilityEventSender;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
    .locals 17
    .parameter "drawable"
    .parameter "clip"

    .prologue
    .line 305
    move-object/from16 v0, p1

    instance-of v14, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v14, :cond_3

    move-object/from16 v3, p1

    .line 306
    check-cast v3, Landroid/graphics/drawable/LayerDrawable;

    .line 307
    .local v3, background:Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v2

    .line 308
    .local v2, N:I
    new-array v11, v2, [Landroid/graphics/drawable/Drawable;

    .line 310
    .local v11, outDrawables:[Landroid/graphics/drawable/Drawable;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v2, :cond_2

    .line 311
    invoke-virtual {v3, v5}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v6

    .line 312
    .local v6, id:I
    invoke-virtual {v3, v5}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    const v14, 0x102000d

    if-eq v6, v14, :cond_0

    const v14, 0x102000f

    if-ne v6, v14, :cond_1

    :cond_0
    const/4 v14, 0x1

    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v14}, Lcom/oppo/widget/OppoProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    aput-object v14, v11, v5

    .line 310
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 312
    :cond_1
    const/4 v14, 0x0

    goto :goto_1

    .line 316
    .end local v6           #id:I
    :cond_2
    new-instance v8, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v8, v11}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 318
    .local v8, newBg:Landroid/graphics/drawable/LayerDrawable;
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v2, :cond_5

    .line 319
    invoke-virtual {v3, v5}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v14

    invoke-virtual {v8, v5, v14}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 318
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 324
    .end local v2           #N:I
    .end local v3           #background:Landroid/graphics/drawable/LayerDrawable;
    .end local v5           #i:I
    .end local v8           #newBg:Landroid/graphics/drawable/LayerDrawable;
    .end local v11           #outDrawables:[Landroid/graphics/drawable/Drawable;
    :cond_3
    move-object/from16 v0, p1

    instance-of v14, v0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v14, :cond_6

    move-object/from16 v7, p1

    .line 325
    check-cast v7, Landroid/graphics/drawable/StateListDrawable;

    .line 326
    .local v7, in:Landroid/graphics/drawable/StateListDrawable;
    new-instance v10, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v10}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 327
    .local v10, out:Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {v7}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v9

    .line 328
    .local v9, numStates:I
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_3
    if-ge v5, v9, :cond_4

    .line 329
    invoke-virtual {v7, v5}, Landroid/graphics/drawable/StateListDrawable;->getStateSet(I)[I

    move-result-object v14

    invoke-virtual {v7, v5}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v15, v1}, Lcom/oppo/widget/OppoProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v10, v14, v15}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 328
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_4
    move-object v8, v10

    .line 349
    .end local v5           #i:I
    .end local v7           #in:Landroid/graphics/drawable/StateListDrawable;
    .end local v9           #numStates:I
    .end local v10           #out:Landroid/graphics/drawable/StateListDrawable;
    .end local p1
    :cond_5
    :goto_4
    return-object v8

    .line 333
    .restart local p1
    :cond_6
    move-object/from16 v0, p1

    instance-of v14, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v14, :cond_9

    .line 334
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v13

    .line 335
    .local v13, tileBitmap:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoProgressBar;->mSampleTile:Landroid/graphics/Bitmap;

    if-nez v14, :cond_7

    .line 336
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/oppo/widget/OppoProgressBar;->mSampleTile:Landroid/graphics/Bitmap;

    .line 339
    :cond_7
    new-instance v12, Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoProgressBar;->getDrawableShape()Landroid/graphics/drawable/shapes/Shape;

    move-result-object v14

    invoke-direct {v12, v14}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 341
    .local v12, shapeDrawable:Landroid/graphics/drawable/ShapeDrawable;
    new-instance v4, Landroid/graphics/BitmapShader;

    sget-object v14, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v15, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v4, v13, v14, v15}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 343
    .local v4, bitmapShader:Landroid/graphics/BitmapShader;
    invoke-virtual {v12}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v14

    invoke-virtual {v14, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 345
    if-eqz p2, :cond_8

    new-instance v14, Landroid/graphics/drawable/ClipDrawable;

    const/4 v15, 0x3

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-direct {v14, v12, v15, v0}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    move-object v12, v14

    .end local v12           #shapeDrawable:Landroid/graphics/drawable/ShapeDrawable;
    :cond_8
    move-object v8, v12

    goto :goto_4

    .end local v4           #bitmapShader:Landroid/graphics/BitmapShader;
    .end local v13           #tileBitmap:Landroid/graphics/Bitmap;
    .restart local p1
    :cond_9
    move-object/from16 v8, p1

    .line 349
    goto :goto_4
.end method

.method private tileifyIndeterminate(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .parameter "drawable"

    .prologue
    const/16 v7, 0x2710

    .line 362
    instance-of v5, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v5, :cond_1

    move-object v1, p1

    .line 363
    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 364
    .local v1, background:Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v0

    .line 365
    .local v0, N:I
    new-instance v4, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 366
    .local v4, newBg:Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->isOneShot()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 368
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 369
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lcom/oppo/widget/OppoProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 370
    .local v2, frame:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 371
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v5

    invoke-virtual {v4, v2, v5}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 368
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 373
    .end local v2           #frame:Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {v4, v7}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 374
    move-object p1, v4

    .line 376
    .end local v0           #N:I
    .end local v1           #background:Landroid/graphics/drawable/AnimationDrawable;
    .end local v3           #i:I
    .end local v4           #newBg:Landroid/graphics/drawable/AnimationDrawable;
    :cond_1
    return-object p1
.end method

.method private updateDrawableBounds(II)V
    .locals 13
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v12, 0x0

    .line 974
    iget v10, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v10, p1, v10

    iget v11, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int v7, v10, v11

    .line 975
    .local v7, right:I
    iget v10, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int v10, p2, v10

    iget v11, p0, Landroid/view/View;->mPaddingTop:I

    sub-int v0, v10, v11

    .line 976
    .local v0, bottom:I
    const/4 v8, 0x0

    .line 977
    .local v8, top:I
    const/4 v6, 0x0

    .line 979
    .local v6, left:I
    iget-object v10, p0, Lcom/oppo/widget/OppoProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_1

    .line 981
    iget-boolean v10, p0, Lcom/oppo/widget/OppoProgressBar;->mOnlyIndeterminate:Z

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/oppo/widget/OppoProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v10, v10, Landroid/graphics/drawable/AnimationDrawable;

    if-nez v10, :cond_0

    .line 984
    iget-object v10, p0, Lcom/oppo/widget/OppoProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 985
    .local v5, intrinsicWidth:I
    iget-object v10, p0, Lcom/oppo/widget/OppoProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 986
    .local v4, intrinsicHeight:I
    int-to-float v10, v5

    int-to-float v11, v4

    div-float v3, v10, v11

    .line 987
    .local v3, intrinsicAspect:F
    int-to-float v10, p1

    int-to-float v11, p2

    div-float v1, v10, v11

    .line 988
    .local v1, boundAspect:F
    cmpl-float v10, v3, v1

    if-eqz v10, :cond_0

    .line 989
    cmpl-float v10, v1, v3

    if-lez v10, :cond_3

    .line 991
    int-to-float v10, p2

    mul-float/2addr v10, v3

    float-to-int v9, v10

    .line 992
    .local v9, width:I
    sub-int v10, p1, v9

    div-int/lit8 v6, v10, 0x2

    .line 993
    add-int v7, v6, v9

    .line 1002
    .end local v1           #boundAspect:F
    .end local v3           #intrinsicAspect:F
    .end local v4           #intrinsicHeight:I
    .end local v5           #intrinsicWidth:I
    .end local v9           #width:I
    :cond_0
    :goto_0
    iget-object v10, p0, Lcom/oppo/widget/OppoProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, v6, v8, v7, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1005
    :cond_1
    iget-object v10, p0, Lcom/oppo/widget/OppoProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_2

    .line 1006
    iget-object v10, p0, Lcom/oppo/widget/OppoProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, v12, v12, v7, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1008
    :cond_2
    return-void

    .line 996
    .restart local v1       #boundAspect:F
    .restart local v3       #intrinsicAspect:F
    .restart local v4       #intrinsicHeight:I
    .restart local v5       #intrinsicWidth:I
    :cond_3
    int-to-float v10, p1

    const/high16 v11, 0x3f80

    div-float/2addr v11, v3

    mul-float/2addr v10, v11

    float-to-int v2, v10

    .line 997
    .local v2, height:I
    sub-int v10, p2, v2

    div-int/lit8 v8, v10, 0x2

    .line 998
    add-int v0, v8, v2

    goto :goto_0
.end method

.method private updateDrawableState()V
    .locals 2

    .prologue
    .line 1111
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    .line 1113
    .local v0, state:[I
    iget-object v1, p0, Lcom/oppo/widget/OppoProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/widget/OppoProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1114
    iget-object v1, p0, Lcom/oppo/widget/OppoProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1117
    :cond_0
    iget-object v1, p0, Lcom/oppo/widget/OppoProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oppo/widget/OppoProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1118
    iget-object v1, p0, Lcom/oppo/widget/OppoProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1120
    :cond_1
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 1106
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 1107
    invoke-direct {p0}, Lcom/oppo/widget/OppoProgressBar;->updateDrawableState()V

    .line 1108
    return-void
.end method

.method getCurrentDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lcom/oppo/widget/OppoProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getDrawableShape()Landroid/graphics/drawable/shapes/Shape;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 353
    const/16 v1, 0x8

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    .line 354
    .local v0, roundedCorners:[F
    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v1, v0, v2, v2}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    return-object v1

    .line 353
    :array_0
    .array-data 0x4
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
    .end array-data
.end method

.method public getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/oppo/widget/OppoProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 909
    iget-object v0, p0, Lcom/oppo/widget/OppoProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public getLayoutDirection()I
    .locals 1

    .prologue
    .line 964
    invoke-super {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    return v0
.end method

.method public declared-synchronized getMax()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    .prologue
    .line 782
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/oppo/widget/OppoProgressBar;->mMax:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProgress()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    .prologue
    .line 747
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/oppo/widget/OppoProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/oppo/widget/OppoProgressBar;->mProgress:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProgressDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lcom/oppo/widget/OppoProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public declared-synchronized getSecondaryProgress()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    .prologue
    .line 766
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/oppo/widget/OppoProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/oppo/widget/OppoProgressBar;->mSecondaryProgress:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized incrementProgressBy(I)V
    .locals 1
    .parameter "diff"

    .prologue
    .line 822
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/oppo/widget/OppoProgressBar;->mProgress:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoProgressBar;->setProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 823
    monitor-exit p0

    return-void

    .line 822
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized incrementSecondaryProgressBy(I)V
    .locals 1
    .parameter "diff"

    .prologue
    .line 835
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/oppo/widget/OppoProgressBar;->mSecondaryProgress:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoProgressBar;->setSecondaryProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 836
    monitor-exit p0

    return-void

    .line 835
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .parameter "dr"

    .prologue
    .line 945
    iget-boolean v3, p0, Lcom/oppo/widget/OppoProgressBar;->mInDrawing:Z

    if-nez v3, :cond_0

    .line 946
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoProgressBar;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 947
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 948
    .local v0, dirty:Landroid/graphics/Rect;
    iget v3, p0, Landroid/view/View;->mScrollX:I

    iget v4, p0, Landroid/view/View;->mPaddingLeft:I

    add-int v1, v3, v4

    .line 949
    .local v1, scrollX:I
    iget v3, p0, Landroid/view/View;->mScrollY:I

    iget v4, p0, Landroid/view/View;->mPaddingTop:I

    add-int v2, v3, v4

    .line 951
    .local v2, scrollY:I
    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v1

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v2

    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/view/View;->invalidate(IIII)V

    .line 957
    .end local v0           #dirty:Landroid/graphics/Rect;
    .end local v1           #scrollX:I
    .end local v2           #scrollY:I
    :cond_0
    :goto_0
    return-void

    .line 954
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public declared-synchronized isIndeterminate()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    .prologue
    .line 414
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/oppo/widget/OppoProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 571
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 572
    iget-object v0, p0, Lcom/oppo/widget/OppoProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/oppo/widget/OppoProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 575
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 576
    iget-object v0, p0, Lcom/oppo/widget/OppoProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 578
    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 1185
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 1186
    iget-boolean v0, p0, Lcom/oppo/widget/OppoProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_0

    .line 1187
    invoke-virtual {p0}, Lcom/oppo/widget/OppoProgressBar;->startAnimation()V

    .line 1189
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1193
    iget-boolean v0, p0, Lcom/oppo/widget/OppoProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_0

    .line 1194
    invoke-virtual {p0}, Lcom/oppo/widget/OppoProgressBar;->stopAnimation()V

    .line 1196
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoProgressBar;->mRefreshProgressRunnable:Lcom/oppo/widget/OppoProgressBar$RefreshProgressRunnable;

    if-eqz v0, :cond_1

    .line 1197
    iget-object v0, p0, Lcom/oppo/widget/OppoProgressBar;->mRefreshProgressRunnable:Lcom/oppo/widget/OppoProgressBar$RefreshProgressRunnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1199
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoProgressBar;->mAccessibilityEventSender:Lcom/oppo/widget/OppoProgressBar$AccessibilityEventSender;

    if-eqz v0, :cond_2

    .line 1200
    iget-object v0, p0, Lcom/oppo/widget/OppoProgressBar;->mAccessibilityEventSender:Lcom/oppo/widget/OppoProgressBar$AccessibilityEventSender;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1204
    :cond_2
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1205
    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    .line 1022
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 1027
    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->isOppoStyle()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/oppo/widget/OppoProgressBar;->mOnlyIndeterminate:Z

    if-eqz v5, :cond_1

    :cond_0
    iget-boolean v5, p0, Lcom/oppo/widget/OppoProgressBar;->mIsCustomStyle:Z

    if-eqz v5, :cond_5

    .line 1031
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1032
    iget v5, p0, Landroid/view/View;->mPaddingLeft:I

    int-to-float v5, v5

    iget v6, p0, Landroid/view/View;->mPaddingTop:I

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1033
    iget v5, p0, Lcom/oppo/widget/OppoProgressBar;->mScale:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    iget v7, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lcom/oppo/widget/OppoProgressBar;->mSpace:I

    .line 1034
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    iget v6, p0, Landroid/view/View;->mPaddingTop:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/oppo/widget/OppoProgressBar;->mDrawHeight:I

    .line 1035
    iget-object v5, p0, Lcom/oppo/widget/OppoProgressBar;->mOppoProgressBgDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v8

    iget v9, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/oppo/widget/OppoProgressBar;->mDrawHeight:I

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1037
    iget-object v5, p0, Lcom/oppo/widget/OppoProgressBar;->mOppoProgressBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1038
    iget-object v5, p0, Lcom/oppo/widget/OppoProgressBar;->mOppoProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 1040
    .local v1, min:I
    iget v5, p0, Lcom/oppo/widget/OppoProgressBar;->mSpace:I

    if-ge v5, v1, :cond_4

    .line 1041
    iget v5, p0, Lcom/oppo/widget/OppoProgressBar;->mSpace:I

    if-lez v5, :cond_3

    .line 1042
    iget-object v5, p0, Lcom/oppo/widget/OppoProgressBar;->mOppoProgressDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v8, p0, Lcom/oppo/widget/OppoProgressBar;->mDrawHeight:I

    invoke-virtual {v5, v6, v7, v1, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1049
    :goto_0
    iget-object v5, p0, Lcom/oppo/widget/OppoProgressBar;->mOppoProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1050
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1084
    .end local v1           #min:I
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    .line 1044
    .restart local v1       #min:I
    :cond_3
    :try_start_1
    iget-object v5, p0, Lcom/oppo/widget/OppoProgressBar;->mOppoProgressDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v9, p0, Lcom/oppo/widget/OppoProgressBar;->mDrawHeight:I

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1022
    .end local v1           #min:I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 1047
    .restart local v1       #min:I
    :cond_4
    :try_start_2
    iget-object v5, p0, Lcom/oppo/widget/OppoProgressBar;->mOppoProgressDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v8, p0, Lcom/oppo/widget/OppoProgressBar;->mSpace:I

    iget v9, p0, Lcom/oppo/widget/OppoProgressBar;->mDrawHeight:I

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 1055
    .end local v1           #min:I
    :cond_5
    iget-object v0, p0, Lcom/oppo/widget/OppoProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 1056
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    .line 1059
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1060
    iget v5, p0, Landroid/view/View;->mPaddingLeft:I

    int-to-float v5, v5

    iget v6, p0, Landroid/view/View;->mPaddingTop:I

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1061
    invoke-virtual {p0}, Landroid/view/View;->getDrawingTime()J

    move-result-wide v3

    .line 1062
    .local v3, time:J
    iget-object v5, p0, Lcom/oppo/widget/OppoProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    if-eqz v5, :cond_6

    .line 1063
    iget-object v5, p0, Lcom/oppo/widget/OppoProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v6, p0, Lcom/oppo/widget/OppoProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v5, v3, v4, v6}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 1064
    iget-object v5, p0, Lcom/oppo/widget/OppoProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v5}, Landroid/view/animation/Transformation;->getAlpha()F
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    .line 1066
    .local v2, scale:F
    const/4 v5, 0x1

    :try_start_3
    iput-boolean v5, p0, Lcom/oppo/widget/OppoProgressBar;->mInDrawing:Z

    .line 1067
    const v5, 0x461c4000

    mul-float/2addr v5, v2

    float-to-int v5, v5

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1069
    const/4 v5, 0x0

    :try_start_4
    iput-boolean v5, p0, Lcom/oppo/widget/OppoProgressBar;->mInDrawing:Z

    .line 1071
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/oppo/widget/OppoProgressBar;->mLastDrawTime:J

    sub-long/2addr v5, v7

    iget v7, p0, Lcom/oppo/widget/OppoProgressBar;->mAnimationResolution:I

    int-to-long v7, v7

    cmp-long v5, v5, v7

    if-ltz v5, :cond_6

    .line 1072
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/oppo/widget/OppoProgressBar;->mLastDrawTime:J

    .line 1073
    iget v5, p0, Lcom/oppo/widget/OppoProgressBar;->mAnimationResolution:I

    int-to-long v5, v5

    invoke-virtual {p0, v5, v6}, Landroid/view/View;->postInvalidateDelayed(J)V

    .line 1076
    .end local v2           #scale:F
    :cond_6
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1077
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1078
    iget-boolean v5, p0, Lcom/oppo/widget/OppoProgressBar;->mShouldStartAnimationDrawable:Z

    if-eqz v5, :cond_2

    instance-of v5, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v5, :cond_2

    .line 1079
    check-cast v0, Landroid/graphics/drawable/Animatable;

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    .line 1080
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/oppo/widget/OppoProgressBar;->mShouldStartAnimationDrawable:Z

    goto :goto_1

    .line 1069
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    .restart local v2       #scale:F
    :catchall_1
    move-exception v5

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/oppo/widget/OppoProgressBar;->mInDrawing:Z

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 1209
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1210
    iget v0, p0, Lcom/oppo/widget/OppoProgressBar;->mMax:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setItemCount(I)V

    .line 1211
    iget v0, p0, Lcom/oppo/widget/OppoProgressBar;->mProgress:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setCurrentItemIndex(I)V

    .line 1212
    return-void
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 1088
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oppo/widget/OppoProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 1090
    .local v0, d:Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .line 1091
    .local v2, dw:I
    const/4 v1, 0x0

    .line 1092
    .local v1, dh:I
    if-eqz v0, :cond_0

    .line 1093
    iget v3, p0, Lcom/oppo/widget/OppoProgressBar;->mMinWidth:I

    iget v4, p0, Lcom/oppo/widget/OppoProgressBar;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1094
    iget v3, p0, Lcom/oppo/widget/OppoProgressBar;->mMinHeight:I

    iget v4, p0, Lcom/oppo/widget/OppoProgressBar;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1096
    :cond_0
    invoke-direct {p0}, Lcom/oppo/widget/OppoProgressBar;->updateDrawableState()V

    .line 1097
    iget v3, p0, Landroid/view/View;->mPaddingLeft:I

    iget v4, p0, Landroid/view/View;->mPaddingRight:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 1098
    iget v3, p0, Landroid/view/View;->mPaddingTop:I

    iget v4, p0, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 1100
    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Lcom/oppo/widget/OppoProgressBar;->resolveSizeAndState(III)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v1, p2, v4}, Lcom/oppo/widget/OppoProgressBar;->resolveSizeAndState(III)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroid/view/View;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1102
    monitor-exit p0

    return-void

    .line 1088
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    .end local v1           #dh:I
    .end local v2           #dw:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method onProgressRefresh(FZ)V
    .locals 1
    .parameter "scale"
    .parameter "fromUser"

    .prologue
    .line 637
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 638
    invoke-direct {p0}, Lcom/oppo/widget/OppoProgressBar;->scheduleAccessibilityEventSender()V

    .line 640
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 1176
    move-object v0, p1

    check-cast v0, Lcom/oppo/widget/OppoProgressBar$SavedState;

    .line 1177
    .local v0, ss:Lcom/oppo/widget/OppoProgressBar$SavedState;
    invoke-virtual {v0}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1179
    iget v1, v0, Lcom/oppo/widget/OppoProgressBar$SavedState;->progress:I

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoProgressBar;->setProgress(I)V

    .line 1180
    iget v1, v0, Lcom/oppo/widget/OppoProgressBar$SavedState;->secondaryProgress:I

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoProgressBar;->setSecondaryProgress(I)V

    .line 1181
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1165
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1166
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Lcom/oppo/widget/OppoProgressBar$SavedState;

    invoke-direct {v0, v1}, Lcom/oppo/widget/OppoProgressBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1168
    .local v0, ss:Lcom/oppo/widget/OppoProgressBar$SavedState;
    iget v2, p0, Lcom/oppo/widget/OppoProgressBar;->mProgress:I

    iput v2, v0, Lcom/oppo/widget/OppoProgressBar$SavedState;->progress:I

    .line 1169
    iget v2, p0, Lcom/oppo/widget/OppoProgressBar;->mSecondaryProgress:I

    iput v2, v0, Lcom/oppo/widget/OppoProgressBar$SavedState;->secondaryProgress:I

    .line 1171
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 969
    invoke-direct {p0, p1, p2}, Lcom/oppo/widget/OppoProgressBar;->updateDrawableBounds(II)V

    .line 970
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 931
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 933
    iget-boolean v0, p0, Lcom/oppo/widget/OppoProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_1

    .line 935
    const/16 v0, 0x8

    if-eq p2, v0, :cond_0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    .line 936
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/widget/OppoProgressBar;->stopAnimation()V

    .line 941
    :cond_1
    :goto_0
    return-void

    .line 938
    :cond_2
    invoke-virtual {p0}, Lcom/oppo/widget/OppoProgressBar;->startAnimation()V

    goto :goto_0
.end method

.method public postInvalidate()V
    .locals 1

    .prologue
    .line 582
    iget-boolean v0, p0, Lcom/oppo/widget/OppoProgressBar;->mNoInvalidate:Z

    if-nez v0, :cond_0

    .line 583
    invoke-super {p0}, Landroid/view/View;->postInvalidate()V

    .line 585
    :cond_0
    return-void
.end method

.method public setCustomStyled(Z)V
    .locals 3
    .parameter "isCustomStyle"

    .prologue
    .line 1016
    const-string v0, "OppoProgressBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCustomStyled isCustomStyle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    iput-boolean p1, p0, Lcom/oppo/widget/OppoProgressBar;->mIsCustomStyle:Z

    .line 1018
    return-void
.end method

.method public declared-synchronized setIndeterminate(Z)V
    .locals 1
    .parameter "indeterminate"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 430
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/oppo/widget/OppoProgressBar;->mOnlyIndeterminate:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/widget/OppoProgressBar;->mIndeterminate:Z

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/oppo/widget/OppoProgressBar;->mIndeterminate:Z

    if-eq p1, v0, :cond_1

    .line 431
    iput-boolean p1, p0, Lcom/oppo/widget/OppoProgressBar;->mIndeterminate:Z

    .line 433
    if-eqz p1, :cond_2

    .line 435
    iget-object v0, p0, Lcom/oppo/widget/OppoProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/oppo/widget/OppoProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 436
    invoke-virtual {p0}, Lcom/oppo/widget/OppoProgressBar;->startAnimation()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 438
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/oppo/widget/OppoProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/oppo/widget/OppoProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 439
    invoke-virtual {p0}, Lcom/oppo/widget/OppoProgressBar;->stopAnimation()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 430
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 469
    if-eqz p1, :cond_0

    .line 470
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 472
    :cond_0
    iput-object p1, p0, Lcom/oppo/widget/OppoProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    .line 473
    iget-boolean v0, p0, Lcom/oppo/widget/OppoProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_1

    .line 474
    iput-object p1, p0, Lcom/oppo/widget/OppoProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 475
    invoke-virtual {p0}, Lcom/oppo/widget/OppoProgressBar;->postInvalidate()V

    .line 477
    :cond_1
    return-void
.end method

.method public setInterpolator(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "resID"

    .prologue
    .line 890
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoProgressBar;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 891
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .parameter "interpolator"

    .prologue
    .line 900
    iput-object p1, p0, Lcom/oppo/widget/OppoProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 901
    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 3
    .parameter "max"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 798
    monitor-enter p0

    if-gez p1, :cond_0

    .line 799
    const/4 p1, 0x0

    .line 801
    :cond_0
    :try_start_0
    iget v0, p0, Lcom/oppo/widget/OppoProgressBar;->mMax:I

    if-eq p1, v0, :cond_2

    .line 802
    iput p1, p0, Lcom/oppo/widget/OppoProgressBar;->mMax:I

    .line 803
    invoke-virtual {p0}, Lcom/oppo/widget/OppoProgressBar;->postInvalidate()V

    .line 805
    iget v0, p0, Lcom/oppo/widget/OppoProgressBar;->mProgress:I

    if-le v0, p1, :cond_1

    .line 806
    iput p1, p0, Lcom/oppo/widget/OppoProgressBar;->mProgress:I

    .line 808
    :cond_1
    const v0, 0x102000d

    iget v1, p0, Lcom/oppo/widget/OppoProgressBar;->mProgress:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/oppo/widget/OppoProgressBar;->refreshProgress(IIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 810
    :cond_2
    monitor-exit p0

    return-void

    .line 798
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setOppoProgressBgDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "d"

    .prologue
    .line 559
    iput-object p1, p0, Lcom/oppo/widget/OppoProgressBar;->mOppoProgressBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 560
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 561
    return-void
.end method

.method public setOppoProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "d"

    .prologue
    .line 549
    iput-object p1, p0, Lcom/oppo/widget/OppoProgressBar;->mOppoProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 550
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 551
    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .locals 1
    .parameter "progress"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 676
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/oppo/widget/OppoProgressBar;->setProgress(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 677
    monitor-exit p0

    return-void

    .line 676
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setProgress(IZ)V
    .locals 2
    .parameter "progress"
    .parameter "fromUser"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 681
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/oppo/widget/OppoProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 697
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 685
    :cond_1
    if-gez p1, :cond_2

    .line 686
    const/4 p1, 0x0

    .line 689
    :cond_2
    :try_start_1
    iget v0, p0, Lcom/oppo/widget/OppoProgressBar;->mMax:I

    if-le p1, v0, :cond_3

    .line 690
    iget p1, p0, Lcom/oppo/widget/OppoProgressBar;->mMax:I

    .line 693
    :cond_3
    iget v0, p0, Lcom/oppo/widget/OppoProgressBar;->mProgress:I

    if-eq p1, v0, :cond_0

    .line 694
    iput p1, p0, Lcom/oppo/widget/OppoProgressBar;->mProgress:I

    .line 695
    const v0, 0x102000d

    iget v1, p0, Lcom/oppo/widget/OppoProgressBar;->mProgress:I

    invoke-direct {p0, v0, v1, p2}, Lcom/oppo/widget/OppoProgressBar;->refreshProgress(IIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 681
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .parameter "d"

    .prologue
    const/4 v4, 0x0

    .line 505
    iget-object v2, p0, Lcom/oppo/widget/OppoProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/oppo/widget/OppoProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v2, :cond_3

    .line 506
    iget-object v2, p0, Lcom/oppo/widget/OppoProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 507
    const/4 v1, 0x1

    .line 512
    .local v1, needUpdate:Z
    :goto_0
    if-eqz p1, :cond_0

    .line 513
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 516
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 517
    .local v0, drawableHeight:I
    iget v2, p0, Lcom/oppo/widget/OppoProgressBar;->mMaxHeight:I

    if-ge v2, v0, :cond_0

    .line 518
    iput v0, p0, Lcom/oppo/widget/OppoProgressBar;->mMaxHeight:I

    .line 519
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 522
    .end local v0           #drawableHeight:I
    :cond_0
    iput-object p1, p0, Lcom/oppo/widget/OppoProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 523
    iget-boolean v2, p0, Lcom/oppo/widget/OppoProgressBar;->mIndeterminate:Z

    if-nez v2, :cond_1

    .line 524
    iput-object p1, p0, Lcom/oppo/widget/OppoProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 525
    invoke-virtual {p0}, Lcom/oppo/widget/OppoProgressBar;->postInvalidate()V

    .line 528
    :cond_1
    if-eqz v1, :cond_2

    .line 529
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/oppo/widget/OppoProgressBar;->updateDrawableBounds(II)V

    .line 530
    invoke-direct {p0}, Lcom/oppo/widget/OppoProgressBar;->updateDrawableState()V

    .line 531
    const v2, 0x102000d

    iget v3, p0, Lcom/oppo/widget/OppoProgressBar;->mProgress:I

    invoke-direct {p0, v2, v3, v4, v4}, Lcom/oppo/widget/OppoProgressBar;->doRefreshProgress(IIZZ)V

    .line 532
    const v2, 0x102000f

    iget v3, p0, Lcom/oppo/widget/OppoProgressBar;->mSecondaryProgress:I

    invoke-direct {p0, v2, v3, v4, v4}, Lcom/oppo/widget/OppoProgressBar;->doRefreshProgress(IIZZ)V

    .line 534
    :cond_2
    return-void

    .line 509
    .end local v1           #needUpdate:Z
    :cond_3
    const/4 v1, 0x0

    .restart local v1       #needUpdate:Z
    goto :goto_0
.end method

.method public declared-synchronized setSecondaryProgress(I)V
    .locals 3
    .parameter "secondaryProgress"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 713
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/oppo/widget/OppoProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 729
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 717
    :cond_1
    if-gez p1, :cond_2

    .line 718
    const/4 p1, 0x0

    .line 721
    :cond_2
    :try_start_1
    iget v0, p0, Lcom/oppo/widget/OppoProgressBar;->mMax:I

    if-le p1, v0, :cond_3

    .line 722
    iget p1, p0, Lcom/oppo/widget/OppoProgressBar;->mMax:I

    .line 725
    :cond_3
    iget v0, p0, Lcom/oppo/widget/OppoProgressBar;->mSecondaryProgress:I

    if-eq p1, v0, :cond_0

    .line 726
    iput p1, p0, Lcom/oppo/widget/OppoProgressBar;->mSecondaryProgress:I

    .line 727
    const v0, 0x102000f

    iget v1, p0, Lcom/oppo/widget/OppoProgressBar;->mSecondaryProgress:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/oppo/widget/OppoProgressBar;->refreshProgress(IIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 713
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "v"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 915
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 916
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 918
    iget-boolean v0, p0, Lcom/oppo/widget/OppoProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_1

    .line 920
    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 921
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/widget/OppoProgressBar;->stopAnimation()V

    .line 927
    :cond_1
    :goto_0
    return-void

    .line 923
    :cond_2
    invoke-virtual {p0}, Lcom/oppo/widget/OppoProgressBar;->startAnimation()V

    goto :goto_0
.end method

.method startAnimation()V
    .locals 3

    .prologue
    .line 844
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 865
    :goto_0
    return-void

    .line 848
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_1

    .line 849
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/OppoProgressBar;->mShouldStartAnimationDrawable:Z

    .line 850
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/widget/OppoProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    .line 864
    :goto_1
    invoke-virtual {p0}, Lcom/oppo/widget/OppoProgressBar;->postInvalidate()V

    goto :goto_0

    .line 852
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_2

    .line 853
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/oppo/widget/OppoProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 856
    :cond_2
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/oppo/widget/OppoProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    .line 857
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/oppo/widget/OppoProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    .line 858
    iget-object v0, p0, Lcom/oppo/widget/OppoProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget v1, p0, Lcom/oppo/widget/OppoProgressBar;->mBehavior:I

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 859
    iget-object v0, p0, Lcom/oppo/widget/OppoProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 860
    iget-object v0, p0, Lcom/oppo/widget/OppoProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget v1, p0, Lcom/oppo/widget/OppoProgressBar;->mDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 861
    iget-object v0, p0, Lcom/oppo/widget/OppoProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v1, p0, Lcom/oppo/widget/OppoProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 862
    iget-object v0, p0, Lcom/oppo/widget/OppoProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartTime(J)V

    goto :goto_1
.end method

.method stopAnimation()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 873
    iput-object v0, p0, Lcom/oppo/widget/OppoProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    .line 874
    iput-object v0, p0, Lcom/oppo/widget/OppoProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    .line 875
    iget-object v0, p0, Lcom/oppo/widget/OppoProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_0

    .line 876
    iget-object v0, p0, Lcom/oppo/widget/OppoProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 877
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoProgressBar;->mShouldStartAnimationDrawable:Z

    .line 879
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/widget/OppoProgressBar;->postInvalidate()V

    .line 880
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "who"

    .prologue
    .line 565
    iget-object v0, p0, Lcom/oppo/widget/OppoProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/oppo/widget/OppoProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
