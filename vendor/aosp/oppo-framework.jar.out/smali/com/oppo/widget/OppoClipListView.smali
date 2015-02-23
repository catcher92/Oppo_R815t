.class public Lcom/oppo/widget/OppoClipListView;
.super Lcom/oppo/widget/OppoListView;
.source "OppoClipListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoClipListView$OnClipListener;
    }
.end annotation


# static fields
.field public static final CLIP_MODE:I = 0x2

.field private static final NONE_MODE:I = 0x0

.field public static final SORT_MODE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "OppoClipListView"


# instance fields
.field private final LOGD:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mClipLimitX:I

.field private mClipLimitY:I

.field private mClipListener:Lcom/oppo/widget/OppoClipListView$OnClipListener;

.field mContext:Landroid/content/Context;

.field mCooradinatesLocateInWindow:[I

.field private mCoordOffset:I

.field private mDragBitmap:Landroid/graphics/Bitmap;

.field private mDragPointX:I

.field private mDragPointY:I

.field private mDragPos:I

.field private mDragView:Landroid/widget/ImageView;

.field mDragger:Landroid/view/View;

.field private mFirstDragPos:I

.field private mMode:I

.field public mPortrait:Z

.field mScale:Landroid/graphics/Matrix;

.field mScaleFactor:F

.field private mTempRect:Landroid/graphics/Rect;

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/widget/OppoClipListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 127
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/widget/OppoClipListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 128
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 141
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/widget/OppoListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    iput-boolean v2, p0, Lcom/oppo/widget/OppoClipListView;->LOGD:Z

    .line 62
    iput v0, p0, Lcom/oppo/widget/OppoClipListView;->mMode:I

    .line 63
    iput v0, p0, Lcom/oppo/widget/OppoClipListView;->mClipLimitX:I

    .line 64
    iput v0, p0, Lcom/oppo/widget/OppoClipListView;->mClipLimitY:I

    .line 66
    iput-object v1, p0, Lcom/oppo/widget/OppoClipListView;->mDragView:Landroid/widget/ImageView;

    .line 67
    iput-object v1, p0, Lcom/oppo/widget/OppoClipListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 84
    iput-object v1, p0, Lcom/oppo/widget/OppoClipListView;->mClipListener:Lcom/oppo/widget/OppoClipListView$OnClipListener;

    .line 86
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oppo/widget/OppoClipListView;->mTempRect:Landroid/graphics/Rect;

    .line 89
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoClipListView;->mContext:Landroid/content/Context;

    .line 91
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/oppo/widget/OppoClipListView;->mCooradinatesLocateInWindow:[I

    .line 98
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/oppo/widget/OppoClipListView;->mScale:Landroid/graphics/Matrix;

    .line 99
    const v0, 0x3fa66666

    iput v0, p0, Lcom/oppo/widget/OppoClipListView;->mScaleFactor:F

    .line 101
    iput-object v1, p0, Lcom/oppo/widget/OppoClipListView;->mAudioManager:Landroid/media/AudioManager;

    .line 102
    iput-object v1, p0, Lcom/oppo/widget/OppoClipListView;->mWindowManager:Landroid/view/WindowManager;

    .line 142
    iput-object p1, p0, Lcom/oppo/widget/OppoClipListView;->mContext:Landroid/content/Context;

    .line 143
    invoke-virtual {p0, v2}, Lcom/oppo/widget/OppoClipListView;->setListMode(I)V

    .line 144
    return-void
.end method

.method private dragView(II)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/16 v3, 0x3e

    .line 393
    iget-object v0, p0, Lcom/oppo/widget/OppoClipListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x3f4ccccd

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 395
    iget-object v0, p0, Lcom/oppo/widget/OppoClipListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/oppo/widget/OppoClipListView;->mDragPointX:I

    sub-int v1, p1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 396
    iget-object v0, p0, Lcom/oppo/widget/OppoClipListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/oppo/widget/OppoClipListView;->mDragPointY:I

    sub-int v1, p2, v1

    iget v2, p0, Lcom/oppo/widget/OppoClipListView;->mCoordOffset:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 399
    iget-object v0, p0, Lcom/oppo/widget/OppoClipListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    if-ge v0, v3, :cond_0

    .line 400
    iget-object v0, p0, Lcom/oppo/widget/OppoClipListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoClipListView;->mDragView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 404
    iget-object v0, p0, Lcom/oppo/widget/OppoClipListView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/oppo/widget/OppoClipListView;->mDragView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/oppo/widget/OppoClipListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 406
    :cond_1
    return-void
.end method

.method private getScreenPortrait()Z
    .locals 3

    .prologue
    .line 433
    iget-object v1, p0, Lcom/oppo/widget/OppoClipListView;->mWindowManager:Landroid/view/WindowManager;

    if-nez v1, :cond_0

    .line 434
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/oppo/widget/OppoClipListView;->mWindowManager:Landroid/view/WindowManager;

    .line 436
    :cond_0
    iget-object v1, p0, Lcom/oppo/widget/OppoClipListView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 438
    .local v0, rotation:I
    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 440
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oppo/widget/OppoClipListView;->mPortrait:Z

    .line 445
    :goto_0
    iget-boolean v1, p0, Lcom/oppo/widget/OppoClipListView;->mPortrait:Z

    return v1

    .line 442
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/widget/OppoClipListView;->mPortrait:Z

    goto :goto_0
.end method

.method private startDragging(Landroid/graphics/Bitmap;II)V
    .locals 4
    .parameter "bm"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, -0x2

    .line 329
    invoke-direct {p0}, Lcom/oppo/widget/OppoClipListView;->stopDragging()V

    .line 331
    iget-object v1, p0, Lcom/oppo/widget/OppoClipListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v1, :cond_0

    .line 332
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Lcom/oppo/widget/OppoClipListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 333
    iget-object v1, p0, Lcom/oppo/widget/OppoClipListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x33

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 335
    iget-object v1, p0, Lcom/oppo/widget/OppoClipListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 336
    iget-object v1, p0, Lcom/oppo/widget/OppoClipListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 337
    iget-object v1, p0, Lcom/oppo/widget/OppoClipListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x398

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 342
    iget-object v1, p0, Lcom/oppo/widget/OppoClipListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 343
    iget-object v1, p0, Lcom/oppo/widget/OppoClipListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const v2, 0xc03000a

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 347
    :cond_0
    iget-object v1, p0, Lcom/oppo/widget/OppoClipListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/oppo/widget/OppoClipListView;->mDragPointX:I

    sub-int v2, p2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 348
    iget-object v1, p0, Lcom/oppo/widget/OppoClipListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/oppo/widget/OppoClipListView;->mDragPointY:I

    sub-int v2, p3, v2

    iget v3, p0, Lcom/oppo/widget/OppoClipListView;->mCoordOffset:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 350
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/oppo/widget/OppoClipListView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 351
    .local v0, v:Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 352
    iput-object p1, p0, Lcom/oppo/widget/OppoClipListView;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 354
    iget-object v1, p0, Lcom/oppo/widget/OppoClipListView;->mWindowManager:Landroid/view/WindowManager;

    if-nez v1, :cond_1

    .line 355
    iget-object v1, p0, Lcom/oppo/widget/OppoClipListView;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/oppo/widget/OppoClipListView;->mWindowManager:Landroid/view/WindowManager;

    .line 358
    :cond_1
    iget-object v1, p0, Lcom/oppo/widget/OppoClipListView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/oppo/widget/OppoClipListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v0, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 360
    iput-object v0, p0, Lcom/oppo/widget/OppoClipListView;->mDragView:Landroid/widget/ImageView;

    .line 361
    return-void
.end method

.method private stopDragging()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 367
    iget-object v0, p0, Lcom/oppo/widget/OppoClipListView;->mDragView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/oppo/widget/OppoClipListView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/oppo/widget/OppoClipListView;->mDragView:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 369
    iget-object v0, p0, Lcom/oppo/widget/OppoClipListView;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 370
    iput-object v2, p0, Lcom/oppo/widget/OppoClipListView;->mDragView:Landroid/widget/ImageView;

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoClipListView;->mDragBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 373
    iget-object v0, p0, Lcom/oppo/widget/OppoClipListView;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 374
    iput-object v2, p0, Lcom/oppo/widget/OppoClipListView;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 376
    :cond_1
    return-void
.end method


# virtual methods
.method public cancelClip()V
    .locals 0

    .prologue
    .line 382
    invoke-direct {p0}, Lcom/oppo/widget/OppoClipListView;->stopDragging()V

    .line 383
    return-void
.end method

.method public getOnClipListener()Lcom/oppo/widget/OppoClipListView$OnClipListener;
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/oppo/widget/OppoClipListView;->mClipListener:Lcom/oppo/widget/OppoClipListView$OnClipListener;

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "ev"

    .prologue
    const/4 v11, 0x1

    const/4 v8, 0x0

    .line 205
    iget v9, p0, Lcom/oppo/widget/OppoClipListView;->mMode:I

    if-ne v9, v11, :cond_1

    .line 278
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/oppo/widget/OppoListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    :goto_1
    return v8

    .line 207
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    goto :goto_0

    .line 209
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v6, v9

    .line 210
    .local v6, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v7, v9

    .line 211
    .local v7, y:I
    invoke-virtual {p0, v6, v7}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v3

    .line 212
    .local v3, itemnum:I
    const/4 v9, -0x1

    if-eq v3, v9, :cond_0

    .line 216
    iput v3, p0, Lcom/oppo/widget/OppoClipListView;->mFirstDragPos:I

    .line 218
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v9

    sub-int v9, v3, v9

    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 219
    .local v2, item:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v9

    sub-int v9, v6, v9

    iput v9, p0, Lcom/oppo/widget/OppoClipListView;->mDragPointX:I

    .line 220
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v9

    sub-int v9, v7, v9

    iput v9, p0, Lcom/oppo/widget/OppoClipListView;->mDragPointY:I

    .line 221
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    float-to-int v9, v9

    sub-int/2addr v9, v7

    iput v9, p0, Lcom/oppo/widget/OppoClipListView;->mCoordOffset:I

    .line 222
    const-string v9, "drag_view"

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/oppo/widget/OppoClipListView;->mDragger:Landroid/view/View;

    .line 224
    iget-object v9, p0, Lcom/oppo/widget/OppoClipListView;->mDragger:Landroid/view/View;

    if-eqz v9, :cond_0

    .line 228
    iget-object v9, p0, Lcom/oppo/widget/OppoClipListView;->mDragger:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_0

    .line 232
    iget-object v9, p0, Lcom/oppo/widget/OppoClipListView;->mDragger:Landroid/view/View;

    iget-object v10, p0, Lcom/oppo/widget/OppoClipListView;->mCooradinatesLocateInWindow:[I

    invoke-virtual {v9, v10}, Landroid/view/View;->getLocationInWindow([I)V

    .line 237
    iget-object v9, p0, Lcom/oppo/widget/OppoClipListView;->mCooradinatesLocateInWindow:[I

    aget v9, v9, v8

    if-le v6, v9, :cond_2

    .line 238
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 239
    invoke-virtual {v2, v8}, Landroid/view/View;->setPressed(Z)V

    .line 240
    iget-object v9, p0, Lcom/oppo/widget/OppoClipListView;->mDragger:Landroid/view/View;

    invoke-virtual {v9, v11}, Landroid/view/View;->setPressed(Z)V

    .line 242
    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 243
    .local v4, originalBg:Landroid/graphics/drawable/Drawable;
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 245
    invoke-virtual {v2}, Landroid/view/View;->willNotCacheDrawing()Z

    move-result v5

    .line 246
    .local v5, willNotCache:Z
    invoke-virtual {v2, v8}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 248
    invoke-virtual {v2}, Landroid/view/View;->getDrawingCacheBackgroundColor()I

    move-result v1

    .line 250
    .local v1, color:I
    invoke-virtual {v2}, Landroid/view/View;->destroyDrawingCache()V

    .line 252
    const v9, 0xc08001c

    invoke-virtual {v2, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 253
    invoke-virtual {v2}, Landroid/view/View;->buildDrawingCache()V

    .line 260
    invoke-virtual {v2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-static {v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 262
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-direct {p0, v0, v6, v7}, Lcom/oppo/widget/OppoClipListView;->startDragging(Landroid/graphics/Bitmap;II)V

    .line 265
    invoke-virtual {v2}, Landroid/view/View;->destroyDrawingCache()V

    .line 266
    invoke-virtual {v2, v1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 267
    invoke-virtual {v2, v5}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 268
    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 273
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #color:I
    .end local v4           #originalBg:Landroid/graphics/drawable/Drawable;
    .end local v5           #willNotCache:Z
    :cond_2
    invoke-direct {p0}, Lcom/oppo/widget/OppoClipListView;->stopDragging()V

    goto/16 :goto_0

    .line 207
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "ev"

    .prologue
    const/4 v1, 0x1

    .line 282
    iget v2, p0, Lcom/oppo/widget/OppoClipListView;->mMode:I

    if-ne v2, v1, :cond_2

    .line 319
    :cond_0
    invoke-super {p0, p1}, Lcom/oppo/widget/OppoListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :cond_1
    :goto_0
    return v1

    .line 285
    :cond_2
    iget-object v2, p0, Lcom/oppo/widget/OppoClipListView;->mDragView:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 286
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 287
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 312
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {p0, v2, v3}, Lcom/oppo/widget/OppoClipListView;->dragView(II)V

    goto :goto_0

    .line 291
    :pswitch_1
    iget-object v2, p0, Lcom/oppo/widget/OppoClipListView;->mDragger:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setPressed(Z)V

    .line 292
    invoke-direct {p0}, Lcom/oppo/widget/OppoClipListView;->stopDragging()V

    .line 294
    invoke-direct {p0}, Lcom/oppo/widget/OppoClipListView;->getScreenPortrait()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 295
    iget-object v2, p0, Lcom/oppo/widget/OppoClipListView;->mClipListener:Lcom/oppo/widget/OppoClipListView$OnClipListener;

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/oppo/widget/OppoClipListView;->mClipLimitY:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 296
    invoke-virtual {p0}, Lcom/oppo/widget/OppoClipListView;->playSoundEffect()V

    .line 297
    iget-object v2, p0, Lcom/oppo/widget/OppoClipListView;->mClipListener:Lcom/oppo/widget/OppoClipListView$OnClipListener;

    iget v3, p0, Lcom/oppo/widget/OppoClipListView;->mFirstDragPos:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    iget v5, p0, Lcom/oppo/widget/OppoClipListView;->mFirstDragPos:I

    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-interface {v2, p0, v3, v4, v5}, Lcom/oppo/widget/OppoClipListView$OnClipListener;->onClip(Landroid/widget/AdapterView;IJ)V

    goto :goto_0

    .line 301
    :cond_3
    iget-object v2, p0, Lcom/oppo/widget/OppoClipListView;->mClipListener:Lcom/oppo/widget/OppoClipListView$OnClipListener;

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, p0, Lcom/oppo/widget/OppoClipListView;->mClipLimitX:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 302
    invoke-virtual {p0}, Lcom/oppo/widget/OppoClipListView;->playSoundEffect()V

    .line 303
    iget-object v2, p0, Lcom/oppo/widget/OppoClipListView;->mClipListener:Lcom/oppo/widget/OppoClipListView$OnClipListener;

    iget v3, p0, Lcom/oppo/widget/OppoClipListView;->mFirstDragPos:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    iget v5, p0, Lcom/oppo/widget/OppoClipListView;->mFirstDragPos:I

    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-interface {v2, p0, v3, v4, v5}, Lcom/oppo/widget/OppoClipListView$OnClipListener;->onClip(Landroid/widget/AdapterView;IJ)V

    goto :goto_0

    .line 287
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public playSoundEffect()V
    .locals 0

    .prologue
    .line 202
    return-void
.end method

.method public setClipMargin(II)V
    .locals 0
    .parameter "marginX"
    .parameter "marginY"

    .prologue
    .line 184
    iput p1, p0, Lcom/oppo/widget/OppoClipListView;->mClipLimitX:I

    .line 185
    iput p2, p0, Lcom/oppo/widget/OppoClipListView;->mClipLimitY:I

    .line 186
    return-void
.end method

.method public setClipMarginX(I)V
    .locals 0
    .parameter "marginX"

    .prologue
    .line 163
    iput p1, p0, Lcom/oppo/widget/OppoClipListView;->mClipLimitX:I

    .line 164
    return-void
.end method

.method public setClipMarginY(I)V
    .locals 0
    .parameter "marginY"

    .prologue
    .line 173
    iput p1, p0, Lcom/oppo/widget/OppoClipListView;->mClipLimitY:I

    .line 174
    return-void
.end method

.method public setListMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 153
    iput p1, p0, Lcom/oppo/widget/OppoClipListView;->mMode:I

    .line 154
    return-void
.end method

.method public setOnClipListener(Lcom/oppo/widget/OppoClipListView$OnClipListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 414
    iput-object p1, p0, Lcom/oppo/widget/OppoClipListView;->mClipListener:Lcom/oppo/widget/OppoClipListView$OnClipListener;

    .line 415
    return-void
.end method
