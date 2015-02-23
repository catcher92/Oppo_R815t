.class Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;
.super Landroid/view/View;
.source "OppoSmartWakeImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/app/OppoSmartWakeImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SmartWakeGestureView"
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mClipHeight:I

.field private mClipWidth:I

.field private mCol:I

.field mDestRect:Landroid/graphics/Rect;

.field private mDirection:I

.field private mDrawableResource:I

.field private mPaint:Landroid/graphics/Paint;

.field private mRow:I

.field mSrcRect:Landroid/graphics/Rect;

.field private mStep:I

.field private mXScale:F

.field private mYScale:F

.field final synthetic this$0:Lcom/oppo/app/OppoSmartWakeImpl;


# direct methods
.method public constructor <init>(Lcom/oppo/app/OppoSmartWakeImpl;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "context"

    .prologue
    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 288
    iput-object p1, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->this$0:Lcom/oppo/app/OppoSmartWakeImpl;

    .line 289
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 275
    iput v1, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mRow:I

    .line 276
    iput v1, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mCol:I

    .line 279
    const/4 v0, -0x1

    iput v0, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mStep:I

    .line 283
    iput v1, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mDirection:I

    .line 284
    iput v2, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mXScale:F

    .line 285
    iput v2, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mYScale:F

    .line 290
    invoke-direct {p0}, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->init()V

    .line 291
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    const/16 v3, 0xff

    const/4 v2, 0x0

    .line 294
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc0d0417

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mRow:I

    .line 295
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc0d0418

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mCol:I

    .line 296
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mSrcRect:Landroid/graphics/Rect;

    .line 297
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mDestRect:Landroid/graphics/Rect;

    .line 298
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mPaint:Landroid/graphics/Paint;

    .line 299
    iget-object v0, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v3, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 300
    iget-object v0, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 301
    return-void
.end method


# virtual methods
.method public initDate(II)V
    .locals 0
    .parameter "row"
    .parameter "col"

    .prologue
    .line 304
    iput p1, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mRow:I

    .line 305
    iput p2, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mCol:I

    .line 306
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    const/4 v8, 0x0

    const/high16 v6, 0x4000

    const/4 v7, 0x1

    .line 338
    iget-object v2, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mStep:I

    if-gez v2, :cond_1

    .line 401
    :cond_0
    :goto_0
    return-void

    .line 341
    :cond_1
    iget v2, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mClipWidth:I

    iget v3, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mStep:I

    iget v4, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mCol:I

    rem-int/2addr v3, v4

    mul-int v0, v2, v3

    .line 342
    .local v0, left:I
    iget v2, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mClipHeight:I

    iget v3, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mStep:I

    iget v4, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mCol:I

    div-int/2addr v3, v4

    mul-int v1, v2, v3

    .line 343
    .local v1, top:I
    iget-object v2, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->this$0:Lcom/oppo/app/OppoSmartWakeImpl;

    #getter for: Lcom/oppo/app/OppoSmartWakeImpl;->mShowInCenter:Z
    invoke-static {v2}, Lcom/oppo/app/OppoSmartWakeImpl;->access$000(Lcom/oppo/app/OppoSmartWakeImpl;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->this$0:Lcom/oppo/app/OppoSmartWakeImpl;

    #getter for: Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;
    invoke-static {v2}, Lcom/oppo/app/OppoSmartWakeImpl;->access$100(Lcom/oppo/app/OppoSmartWakeImpl;)Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    move-result-object v2

    iget v2, v2, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mMode:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 344
    iget v2, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mClipWidth:I

    iget v3, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mCol:I

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v2, v3

    iget v3, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mClipWidth:I

    iget v4, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mStep:I

    iget v5, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mCol:I

    rem-int/2addr v4, v5

    mul-int/2addr v3, v4

    sub-int v0, v2, v3

    .line 346
    :cond_2
    iget-object v2, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->this$0:Lcom/oppo/app/OppoSmartWakeImpl;

    #getter for: Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;
    invoke-static {v2}, Lcom/oppo/app/OppoSmartWakeImpl;->access$100(Lcom/oppo/app/OppoSmartWakeImpl;)Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    move-result-object v2

    iget v2, v2, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mDirection:I

    if-eq v2, v7, :cond_3

    .line 347
    iget v2, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mClipWidth:I

    iget v3, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mCol:I

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mStep:I

    iget v5, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mCol:I

    rem-int/2addr v4, v5

    sub-int/2addr v3, v4

    mul-int v0, v2, v3

    .line 348
    iget v2, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mClipHeight:I

    iget v3, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mRow:I

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mStep:I

    iget v5, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mCol:I

    div-int/2addr v4, v5

    sub-int/2addr v3, v4

    mul-int v1, v2, v3

    .line 350
    :cond_3
    iget-object v2, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mSrcRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mClipWidth:I

    add-int/2addr v3, v0

    iget v4, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mClipHeight:I

    add-int/2addr v4, v1

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 352
    iget-object v2, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->this$0:Lcom/oppo/app/OppoSmartWakeImpl;

    #getter for: Lcom/oppo/app/OppoSmartWakeImpl;->mShowInCenter:Z
    invoke-static {v2}, Lcom/oppo/app/OppoSmartWakeImpl;->access$000(Lcom/oppo/app/OppoSmartWakeImpl;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 353
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mYScale:F

    iput v2, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mXScale:F

    .line 354
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mClipWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mXScale:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mXScale:F

    mul-float/2addr v3, v6

    div-float/2addr v2, v3

    float-to-int v0, v2

    .line 355
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mClipHeight:I

    int-to-float v3, v3

    iget v4, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mYScale:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mYScale:F

    mul-float/2addr v3, v6

    div-float/2addr v2, v3

    float-to-int v1, v2

    .line 362
    :goto_1
    iget-object v2, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mDestRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mClipWidth:I

    add-int/2addr v3, v0

    iget v4, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mClipHeight:I

    add-int/2addr v4, v1

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 365
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 366
    iget-object v2, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->this$0:Lcom/oppo/app/OppoSmartWakeImpl;

    #getter for: Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;
    invoke-static {v2}, Lcom/oppo/app/OppoSmartWakeImpl;->access$100(Lcom/oppo/app/OppoSmartWakeImpl;)Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    move-result-object v2

    iget v2, v2, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mMode:I

    if-ne v2, v7, :cond_4

    iget-object v2, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->this$0:Lcom/oppo/app/OppoSmartWakeImpl;

    #getter for: Lcom/oppo/app/OppoSmartWakeImpl;->mShowInCenter:Z
    invoke-static {v2}, Lcom/oppo/app/OppoSmartWakeImpl;->access$000(Lcom/oppo/app/OppoSmartWakeImpl;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 367
    iget-object v2, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->this$0:Lcom/oppo/app/OppoSmartWakeImpl;

    #getter for: Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;
    invoke-static {v2}, Lcom/oppo/app/OppoSmartWakeImpl;->access$100(Lcom/oppo/app/OppoSmartWakeImpl;)Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    move-result-object v2

    iget v2, v2, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mRotation:F

    iget v3, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mClipWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v0

    int-to-float v3, v3

    iget v4, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mXScale:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mClipHeight:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v1

    int-to-float v4, v4

    iget v5, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mYScale:F

    mul-float/2addr v4, v5

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 370
    :cond_4
    iget v2, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mXScale:F

    iget v3, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mYScale:F

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 371
    iget-object v2, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mSrcRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mDestRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2, v3, v4, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 372
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 374
    iget-object v2, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->this$0:Lcom/oppo/app/OppoSmartWakeImpl;

    #getter for: Lcom/oppo/app/OppoSmartWakeImpl;->mShowInCenter:Z
    invoke-static {v2}, Lcom/oppo/app/OppoSmartWakeImpl;->access$000(Lcom/oppo/app/OppoSmartWakeImpl;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 381
    :cond_5
    iget v2, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mStep:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mStep:I

    .line 382
    iget v2, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mStep:I

    if-lez v2, :cond_8

    iget v2, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mStep:I

    iget v3, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mRow:I

    iget v4, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mCol:I

    mul-int/2addr v3, v4

    if-ge v2, v3, :cond_8

    .line 386
    iget v2, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mStep:I

    if-ne v7, v2, :cond_7

    .line 387
    iget-object v2, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->this$0:Lcom/oppo/app/OppoSmartWakeImpl;

    #getter for: Lcom/oppo/app/OppoSmartWakeImpl;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/oppo/app/OppoSmartWakeImpl;->access$400(Lcom/oppo/app/OppoSmartWakeImpl;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->this$0:Lcom/oppo/app/OppoSmartWakeImpl;

    #getter for: Lcom/oppo/app/OppoSmartWakeImpl;->mDuration:J
    invoke-static {v3}, Lcom/oppo/app/OppoSmartWakeImpl;->access$200(Lcom/oppo/app/OppoSmartWakeImpl;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->this$0:Lcom/oppo/app/OppoSmartWakeImpl;

    #getter for: Lcom/oppo/app/OppoSmartWakeImpl;->mFisrtFrameDelay:I
    invoke-static {v5}, Lcom/oppo/app/OppoSmartWakeImpl;->access$300(Lcom/oppo/app/OppoSmartWakeImpl;)I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    invoke-virtual {v2, v7, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 357
    :cond_6
    iget-object v2, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->this$0:Lcom/oppo/app/OppoSmartWakeImpl;

    #getter for: Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;
    invoke-static {v2}, Lcom/oppo/app/OppoSmartWakeImpl;->access$100(Lcom/oppo/app/OppoSmartWakeImpl;)Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    move-result-object v2

    iget v2, v2, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mClipWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mXScale:F

    .line 358
    iget-object v2, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->this$0:Lcom/oppo/app/OppoSmartWakeImpl;

    #getter for: Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;
    invoke-static {v2}, Lcom/oppo/app/OppoSmartWakeImpl;->access$100(Lcom/oppo/app/OppoSmartWakeImpl;)Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    move-result-object v2

    iget v2, v2, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mClipHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mYScale:F

    .line 359
    iget-object v2, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->this$0:Lcom/oppo/app/OppoSmartWakeImpl;

    #getter for: Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;
    invoke-static {v2}, Lcom/oppo/app/OppoSmartWakeImpl;->access$100(Lcom/oppo/app/OppoSmartWakeImpl;)Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    move-result-object v2

    iget v2, v2, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mPositionX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mXScale:F

    div-float/2addr v2, v3

    float-to-int v0, v2

    .line 360
    iget-object v2, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->this$0:Lcom/oppo/app/OppoSmartWakeImpl;

    #getter for: Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;
    invoke-static {v2}, Lcom/oppo/app/OppoSmartWakeImpl;->access$100(Lcom/oppo/app/OppoSmartWakeImpl;)Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    move-result-object v2

    iget v2, v2, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mPositionY:I

    int-to-float v2, v2

    iget v3, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mYScale:F

    div-float/2addr v2, v3

    float-to-int v1, v2

    goto/16 :goto_1

    .line 389
    :cond_7
    iget-object v2, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->this$0:Lcom/oppo/app/OppoSmartWakeImpl;

    #getter for: Lcom/oppo/app/OppoSmartWakeImpl;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/oppo/app/OppoSmartWakeImpl;->access$400(Lcom/oppo/app/OppoSmartWakeImpl;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->this$0:Lcom/oppo/app/OppoSmartWakeImpl;

    #getter for: Lcom/oppo/app/OppoSmartWakeImpl;->mDuration:J
    invoke-static {v3}, Lcom/oppo/app/OppoSmartWakeImpl;->access$200(Lcom/oppo/app/OppoSmartWakeImpl;)J

    move-result-wide v3

    invoke-virtual {v2, v7, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 393
    :cond_8
    const/4 v2, -0x1

    iput v2, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mStep:I

    .line 394
    iget-object v2, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 395
    iput-object v8, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mBitmap:Landroid/graphics/Bitmap;

    .line 396
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 397
    iget-object v2, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->this$0:Lcom/oppo/app/OppoSmartWakeImpl;

    #getter for: Lcom/oppo/app/OppoSmartWakeImpl;->mOnAnimationEndListener:Lcom/oppo/app/OppoSmartWakeImpl$onAnimationEndListener;
    invoke-static {v2}, Lcom/oppo/app/OppoSmartWakeImpl;->access$500(Lcom/oppo/app/OppoSmartWakeImpl;)Lcom/oppo/app/OppoSmartWakeImpl$onAnimationEndListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 398
    iget-object v2, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->this$0:Lcom/oppo/app/OppoSmartWakeImpl;

    #getter for: Lcom/oppo/app/OppoSmartWakeImpl;->mOnAnimationEndListener:Lcom/oppo/app/OppoSmartWakeImpl$onAnimationEndListener;
    invoke-static {v2}, Lcom/oppo/app/OppoSmartWakeImpl;->access$500(Lcom/oppo/app/OppoSmartWakeImpl;)Lcom/oppo/app/OppoSmartWakeImpl$onAnimationEndListener;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->this$0:Lcom/oppo/app/OppoSmartWakeImpl;

    invoke-interface {v2, v3}, Lcom/oppo/app/OppoSmartWakeImpl$onAnimationEndListener;->onAnimationEnd(Lcom/oppo/app/OppoSmartWakeImpl;)V

    goto/16 :goto_0
.end method

.method public setDrawableResource(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 320
    iget v0, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mDrawableResource:I

    if-eq v0, p1, :cond_1

    .line 321
    iput p1, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mDrawableResource:I

    .line 322
    iget-object v0, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 325
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mBitmap:Landroid/graphics/Bitmap;

    .line 326
    iget-object v0, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 327
    iget-object v0, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mCol:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mClipWidth:I

    .line 328
    iget-object v0, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mRow:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mClipHeight:I

    .line 333
    :cond_1
    :goto_0
    return-void

    .line 330
    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mClipHeight:I

    iput v0, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mClipWidth:I

    goto :goto_0
.end method

.method public startAnimation()V
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 310
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mStep:I

    .line 311
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 315
    :goto_0
    return-void

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->this$0:Lcom/oppo/app/OppoSmartWakeImpl;

    invoke-virtual {v0}, Lcom/oppo/app/OppoSmartWakeImpl;->destroy()V

    goto :goto_0
.end method
