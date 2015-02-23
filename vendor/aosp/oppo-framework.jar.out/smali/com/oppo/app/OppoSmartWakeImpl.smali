.class public Lcom/oppo/app/OppoSmartWakeImpl;
.super Ljava/lang/Object;
.source "OppoSmartWakeImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;,
        Lcom/oppo/app/OppoSmartWakeImpl$onAnimationEndListener;,
        Lcom/oppo/app/OppoSmartWakeImpl$Gesture;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final MSG_INVALIDATE:I = 0x1

.field public static final SMART_WAKE_GESTURE_NEXT:I = 0x5

.field public static final SMART_WAKE_GESTURE_O:I = 0x1

.field public static final SMART_WAKE_GESTURE_PAUSE:I = 0x6

.field public static final SMART_WAKE_GESTURE_PRE:I = 0x4

.field public static final SMART_WAKE_GESTURE_TRIANGLE:I = 0x3

.field public static final SMART_WAKE_GESTURE_V:I = 0x2

.field private static final TAG:Ljava/lang/String; = "jinpeng/OppoSmartWakeImpl"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDuration:J

.field private mFisrtFrameDelay:I

.field private mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

.field private mGestureView:Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;

.field private mHandler:Landroid/os/Handler;

.field private mOnAnimationEndListener:Lcom/oppo/app/OppoSmartWakeImpl$onAnimationEndListener;

.field private mShowInCenter:Z

.field private mWM:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mDuration:J

    .line 58
    iput v2, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mFisrtFrameDelay:I

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mShowInCenter:Z

    .line 64
    new-instance v0, Lcom/oppo/app/OppoSmartWakeImpl$1;

    invoke-direct {v0, p0}, Lcom/oppo/app/OppoSmartWakeImpl$1;-><init>(Lcom/oppo/app/OppoSmartWakeImpl;)V

    iput-object v0, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mHandler:Landroid/os/Handler;

    .line 90
    iput-object p1, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mContext:Landroid/content/Context;

    .line 91
    invoke-direct {p0, v2}, Lcom/oppo/app/OppoSmartWakeImpl;->init(I)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "mode"

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mDuration:J

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mFisrtFrameDelay:I

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mShowInCenter:Z

    .line 64
    new-instance v0, Lcom/oppo/app/OppoSmartWakeImpl$1;

    invoke-direct {v0, p0}, Lcom/oppo/app/OppoSmartWakeImpl$1;-><init>(Lcom/oppo/app/OppoSmartWakeImpl;)V

    iput-object v0, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mHandler:Landroid/os/Handler;

    .line 95
    iput-object p1, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mContext:Landroid/content/Context;

    .line 96
    invoke-direct {p0, p2}, Lcom/oppo/app/OppoSmartWakeImpl;->init(I)V

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/oppo/app/OppoSmartWakeImpl;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mShowInCenter:Z

    return v0
.end method

.method static synthetic access$100(Lcom/oppo/app/OppoSmartWakeImpl;)Lcom/oppo/app/OppoSmartWakeImpl$Gesture;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oppo/app/OppoSmartWakeImpl;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mDuration:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/oppo/app/OppoSmartWakeImpl;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mFisrtFrameDelay:I

    return v0
.end method

.method static synthetic access$400(Lcom/oppo/app/OppoSmartWakeImpl;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oppo/app/OppoSmartWakeImpl;)Lcom/oppo/app/OppoSmartWakeImpl$onAnimationEndListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mOnAnimationEndListener:Lcom/oppo/app/OppoSmartWakeImpl$onAnimationEndListener;

    return-object v0
.end method

.method private init(I)V
    .locals 6
    .parameter "mode"

    .prologue
    const/4 v1, -0x1

    .line 100
    new-instance v2, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    invoke-direct {v2, p0}, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;-><init>(Lcom/oppo/app/OppoSmartWakeImpl;)V

    iput-object v2, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    .line 101
    iget-object v2, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0xc0d041a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mDuration:J

    .line 105
    iget-object v2, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0xc0d041b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mFisrtFrameDelay:I

    .line 108
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7df

    const/16 v4, 0x598

    const/4 v5, -0x2

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 118
    .local v0, mParams:Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 119
    iget-object v1, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mWM:Landroid/view/WindowManager;

    .line 120
    new-instance v1, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;

    iget-object v2, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;-><init>(Lcom/oppo/app/OppoSmartWakeImpl;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGestureView:Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;

    .line 121
    iget-object v1, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGestureView:Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;

    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 122
    invoke-virtual {p0, p1}, Lcom/oppo/app/OppoSmartWakeImpl;->setMode(I)V

    .line 123
    iget-object v1, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mWM:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGestureView:Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGestureView:Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGestureView:Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 270
    :cond_0
    return-void
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    iget v0, v0, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mMode:I

    return v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGestureView:Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGestureView:Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 263
    :cond_0
    return-void
.end method

.method public setGesturePoints([Landroid/graphics/Point;I)V
    .locals 10
    .parameter "points"
    .parameter "direction"

    .prologue
    .line 162
    const/4 v5, 0x0

    aget-object v5, p1, v5

    iget v5, v5, Landroid/graphics/Point;->x:I

    if-nez v5, :cond_1

    const/4 v5, 0x1

    aget-object v5, p1, v5

    iget v5, v5, Landroid/graphics/Point;->y:I

    if-nez v5, :cond_1

    const/4 v5, 0x1

    aget-object v5, p1, v5

    iget v5, v5, Landroid/graphics/Point;->x:I

    if-nez v5, :cond_1

    const/4 v5, 0x1

    aget-object v5, p1, v5

    iget v5, v5, Landroid/graphics/Point;->y:I

    if-nez v5, :cond_1

    .line 251
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 166
    :cond_1
    iget-object v5, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    iput-object p1, v5, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mPoints:[Landroid/graphics/Point;

    .line 167
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mShowInCenter:Z

    .line 168
    iget-object v5, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    iget v5, v5, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mMode:I

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 170
    :pswitch_1
    iget-object v5, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/4 v6, 0x2

    aget-object v6, p1, v6

    iget v6, v6, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    float-to-double v6, v6

    const-wide v8, 0x3ff3333333333333L

    div-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v5, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mPositionX:I

    .line 171
    iget-object v5, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/4 v6, 0x2

    aget-object v6, p1, v6

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    float-to-double v6, v6

    const-wide v8, 0x3ff3333333333333L

    div-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v5, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mPositionY:I

    .line 172
    iget-object v5, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const-wide v6, 0x3ff3333333333333L

    const/4 v8, 0x3

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->x:I

    const/4 v9, 0x2

    aget-object v9, p1, v9

    iget v9, v9, Landroid/graphics/Point;->x:I

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    int-to-double v8, v8

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v5, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mWidth:I

    .line 173
    iget-object v5, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const-wide v6, 0x3ff3333333333333L

    const/4 v8, 0x3

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->y:I

    const/4 v9, 0x2

    aget-object v9, p1, v9

    iget v9, v9, Landroid/graphics/Point;->y:I

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    int-to-double v8, v8

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v5, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mHeight:I

    .line 174
    iget-object v5, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    iput p2, v5, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mDirection:I

    .line 175
    iget-object v5, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    iget v5, v5, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mWidth:I

    iget-object v6, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    iget v6, v6, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mHeight:I

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    iget v6, v6, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mWidth:I

    iget-object v7, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    iget v7, v7, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mHeight:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-float v6, v6

    div-float v4, v5, v6

    .line 177
    .local v4, ratio:F
    float-to-double v5, v4

    const-wide v7, 0x3fb999999999999aL

    cmpg-double v5, v5, v7

    if-gez v5, :cond_2

    .line 178
    iget-object v5, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    iget-object v6, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    iget v6, v6, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mWidth:I

    iget-object v7, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    iget v7, v7, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mHeight:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v5, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mWidth:I

    .line 179
    iget-object v5, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    iget-object v6, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    iget v6, v6, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mWidth:I

    iput v6, v5, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mHeight:I

    .line 182
    :cond_2
    const/4 v5, 0x2

    aget-object v5, p1, v5

    iget v5, v5, Landroid/graphics/Point;->x:I

    const/4 v6, 0x3

    aget-object v6, p1, v6

    iget v6, v6, Landroid/graphics/Point;->x:I

    add-int/2addr v5, v6

    div-int/lit8 v0, v5, 0x2

    .line 183
    .local v0, centerX:I
    const/4 v5, 0x2

    aget-object v5, p1, v5

    iget v5, v5, Landroid/graphics/Point;->y:I

    const/4 v6, 0x3

    aget-object v6, p1, v6

    iget v6, v6, Landroid/graphics/Point;->y:I

    add-int/2addr v5, v6

    div-int/lit8 v1, v5, 0x2

    .line 184
    .local v1, centerY:I
    const/4 v5, 0x0

    aget-object v5, p1, v5

    iget v5, v5, Landroid/graphics/Point;->x:I

    sub-int v2, v5, v0

    .line 185
    .local v2, deltaX:I
    const/4 v5, 0x0

    aget-object v5, p1, v5

    iget v5, v5, Landroid/graphics/Point;->y:I

    sub-int v3, v5, v1

    .line 186
    .local v3, deltaY:I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-le v5, v6, :cond_4

    .line 187
    if-lez v2, :cond_3

    .line 188
    iget-object v5, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/high16 v6, 0x4387

    iput v6, v5, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mRotation:F

    goto/16 :goto_0

    .line 190
    :cond_3
    iget-object v5, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/high16 v6, 0x42b4

    iput v6, v5, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mRotation:F

    goto/16 :goto_0

    .line 192
    :cond_4
    if-gez v3, :cond_0

    .line 193
    iget-object v5, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/high16 v6, 0x4334

    iput v6, v5, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mRotation:F

    goto/16 :goto_0

    .line 200
    .end local v0           #centerX:I
    .end local v1           #centerY:I
    .end local v2           #deltaX:I
    .end local v3           #deltaY:I
    .end local v4           #ratio:F
    :pswitch_2
    const/4 v5, 0x0

    aget-object v5, p1, v5

    iget v5, v5, Landroid/graphics/Point;->x:I

    const/4 v6, 0x1

    aget-object v6, p1, v6

    iget v6, v6, Landroid/graphics/Point;->x:I

    if-ge v5, v6, :cond_5

    .line 201
    iget-object v5, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/4 v6, 0x0

    aget-object v6, p1, v6

    iget v6, v6, Landroid/graphics/Point;->x:I

    iput v6, v5, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mPositionX:I

    .line 202
    iget-object v5, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/4 v6, 0x1

    iput v6, v5, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mDirection:I

    .line 207
    :goto_1
    iget-object v5, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/4 v6, 0x0

    aget-object v6, p1, v6

    iget v6, v6, Landroid/graphics/Point;->y:I

    iput v6, v5, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mPositionY:I

    .line 208
    iget-object v5, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/4 v6, 0x1

    aget-object v6, p1, v6

    iget v6, v6, Landroid/graphics/Point;->x:I

    const/4 v7, 0x0

    aget-object v7, p1, v7

    iget v7, v7, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iput v6, v5, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mWidth:I

    .line 209
    iget-object v5, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/4 v6, 0x2

    aget-object v6, p1, v6

    iget v6, v6, Landroid/graphics/Point;->y:I

    const/4 v7, 0x0

    aget-object v7, p1, v7

    iget v7, v7, Landroid/graphics/Point;->y:I

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iput v6, v5, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mHeight:I

    goto/16 :goto_0

    .line 204
    :cond_5
    iget-object v5, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/4 v6, 0x1

    aget-object v6, p1, v6

    iget v6, v6, Landroid/graphics/Point;->x:I

    iput v6, v5, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mPositionX:I

    .line 205
    iget-object v5, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/4 v6, 0x0

    iput v6, v5, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mDirection:I

    goto :goto_1

    .line 215
    :pswitch_3
    iget-object v5, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/4 v6, 0x2

    aget-object v6, p1, v6

    iget v6, v6, Landroid/graphics/Point;->x:I

    iput v6, v5, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mPositionX:I

    .line 216
    iget-object v5, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/4 v6, 0x0

    aget-object v6, p1, v6

    iget v6, v6, Landroid/graphics/Point;->y:I

    iput v6, v5, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mPositionY:I

    .line 217
    iget-object v5, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/4 v6, 0x2

    aget-object v6, p1, v6

    iget v6, v6, Landroid/graphics/Point;->x:I

    const/4 v7, 0x0

    aget-object v7, p1, v7

    iget v7, v7, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iput v6, v5, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mWidth:I

    .line 218
    iget-object v5, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/4 v6, 0x1

    aget-object v6, p1, v6

    iget v6, v6, Landroid/graphics/Point;->y:I

    const/4 v7, 0x0

    aget-object v7, p1, v7

    iget v7, v7, Landroid/graphics/Point;->y:I

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iput v6, v5, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mHeight:I

    .line 219
    iget-object v5, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/4 v6, 0x1

    iput v6, v5, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mDirection:I

    goto/16 :goto_0

    .line 222
    :pswitch_4
    iget-object v5, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/4 v6, 0x0

    aget-object v6, p1, v6

    iget v6, v6, Landroid/graphics/Point;->x:I

    iput v6, v5, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mPositionX:I

    .line 223
    iget-object v5, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/4 v6, 0x0

    aget-object v6, p1, v6

    iget v6, v6, Landroid/graphics/Point;->y:I

    iput v6, v5, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mPositionY:I

    .line 224
    iget-object v5, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/4 v6, 0x2

    aget-object v6, p1, v6

    iget v6, v6, Landroid/graphics/Point;->x:I

    const/4 v7, 0x0

    aget-object v7, p1, v7

    iget v7, v7, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iput v6, v5, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mWidth:I

    .line 225
    iget-object v5, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/4 v6, 0x1

    aget-object v6, p1, v6

    iget v6, v6, Landroid/graphics/Point;->y:I

    const/4 v7, 0x0

    aget-object v7, p1, v7

    iget v7, v7, Landroid/graphics/Point;->y:I

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iput v6, v5, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mHeight:I

    .line 226
    iget-object v5, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/4 v6, 0x1

    iput v6, v5, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mDirection:I

    goto/16 :goto_0

    .line 229
    :pswitch_5
    const/4 v5, 0x0

    aget-object v5, p1, v5

    iget v5, v5, Landroid/graphics/Point;->x:I

    const/4 v6, 0x2

    aget-object v6, p1, v6

    iget v6, v6, Landroid/graphics/Point;->x:I

    if-ge v5, v6, :cond_6

    .line 230
    iget-object v5, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/4 v6, 0x0

    aget-object v6, p1, v6

    iget v6, v6, Landroid/graphics/Point;->x:I

    const/4 v7, 0x1

    aget-object v7, p1, v7

    iget v7, v7, Landroid/graphics/Point;->x:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, v5, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mPositionX:I

    .line 231
    iget-object v5, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/4 v6, 0x2

    aget-object v6, p1, v6

    iget v6, v6, Landroid/graphics/Point;->x:I

    const/4 v7, 0x0

    aget-object v7, p1, v7

    iget v7, v7, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v7

    const/4 v7, 0x3

    aget-object v7, p1, v7

    iget v7, v7, Landroid/graphics/Point;->x:I

    const/4 v8, 0x1

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->x:I

    sub-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v5, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mWidth:I

    .line 238
    :goto_2
    const/4 v5, 0x0

    aget-object v5, p1, v5

    iget v5, v5, Landroid/graphics/Point;->y:I

    const/4 v6, 0x1

    aget-object v6, p1, v6

    iget v6, v6, Landroid/graphics/Point;->y:I

    if-ge v5, v6, :cond_7

    .line 239
    iget-object v5, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/4 v6, 0x1

    iput v6, v5, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mDirection:I

    .line 240
    iget-object v5, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/4 v6, 0x0

    aget-object v6, p1, v6

    iget v6, v6, Landroid/graphics/Point;->y:I

    const/4 v7, 0x2

    aget-object v7, p1, v7

    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, v5, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mPositionY:I

    .line 241
    iget-object v5, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/4 v6, 0x1

    aget-object v6, p1, v6

    iget v6, v6, Landroid/graphics/Point;->y:I

    const/4 v7, 0x0

    aget-object v7, p1, v7

    iget v7, v7, Landroid/graphics/Point;->y:I

    sub-int/2addr v6, v7

    const/4 v7, 0x3

    aget-object v7, p1, v7

    iget v7, v7, Landroid/graphics/Point;->y:I

    const/4 v8, 0x2

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->y:I

    sub-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v5, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mHeight:I

    goto/16 :goto_0

    .line 234
    :cond_6
    iget-object v5, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/4 v6, 0x2

    aget-object v6, p1, v6

    iget v6, v6, Landroid/graphics/Point;->x:I

    const/4 v7, 0x3

    aget-object v7, p1, v7

    iget v7, v7, Landroid/graphics/Point;->x:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, v5, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mPositionX:I

    .line 235
    iget-object v5, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/4 v6, 0x0

    aget-object v6, p1, v6

    iget v6, v6, Landroid/graphics/Point;->x:I

    const/4 v7, 0x2

    aget-object v7, p1, v7

    iget v7, v7, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v7

    const/4 v7, 0x1

    aget-object v7, p1, v7

    iget v7, v7, Landroid/graphics/Point;->x:I

    const/4 v8, 0x3

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->x:I

    sub-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v5, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mWidth:I

    goto :goto_2

    .line 244
    :cond_7
    iget-object v5, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/4 v6, 0x0

    iput v6, v5, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mDirection:I

    .line 245
    iget-object v5, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/4 v6, 0x1

    aget-object v6, p1, v6

    iget v6, v6, Landroid/graphics/Point;->y:I

    const/4 v7, 0x3

    aget-object v7, p1, v7

    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, v5, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mPositionY:I

    .line 246
    iget-object v5, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/4 v6, 0x0

    aget-object v6, p1, v6

    iget v6, v6, Landroid/graphics/Point;->y:I

    const/4 v7, 0x1

    aget-object v7, p1, v7

    iget v7, v7, Landroid/graphics/Point;->y:I

    sub-int/2addr v6, v7

    const/4 v7, 0x2

    aget-object v7, p1, v7

    iget v7, v7, Landroid/graphics/Point;->y:I

    const/4 v8, 0x3

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->y:I

    sub-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v5, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mHeight:I

    goto/16 :goto_0

    .line 168
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    iget v0, v0, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mMode:I

    if-eq v0, p1, :cond_0

    .line 129
    iget-object v0, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    iput p1, v0, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mMode:I

    .line 130
    packed-switch p1, :pswitch_data_0

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 132
    :pswitch_0
    iget-object v0, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGestureView:Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;

    const v1, 0xc08049f

    invoke-virtual {v0, v1}, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->setDrawableResource(I)V

    goto :goto_0

    .line 135
    :pswitch_1
    iget-object v0, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGestureView:Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;

    const v1, 0xc0804a0

    invoke-virtual {v0, v1}, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->setDrawableResource(I)V

    goto :goto_0

    .line 138
    :pswitch_2
    iget-object v0, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGestureView:Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;

    const v1, 0xc0804a1

    invoke-virtual {v0, v1}, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->setDrawableResource(I)V

    goto :goto_0

    .line 141
    :pswitch_3
    iget-object v0, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGestureView:Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;

    const v1, 0xc0804a2

    invoke-virtual {v0, v1}, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->setDrawableResource(I)V

    goto :goto_0

    .line 144
    :pswitch_4
    iget-object v0, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGestureView:Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;

    const v1, 0xc0804a3

    invoke-virtual {v0, v1}, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->setDrawableResource(I)V

    goto :goto_0

    .line 147
    :pswitch_5
    iget-object v0, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGestureView:Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;

    const v1, 0xc0804a4

    invoke-virtual {v0, v1}, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->setDrawableResource(I)V

    goto :goto_0

    .line 130
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setOnAnimationEndListener(Lcom/oppo/app/OppoSmartWakeImpl$onAnimationEndListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 158
    iput-object p1, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mOnAnimationEndListener:Lcom/oppo/app/OppoSmartWakeImpl$onAnimationEndListener;

    .line 159
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGestureView:Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGestureView:Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;

    invoke-virtual {v0}, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->startAnimation()V

    .line 257
    :cond_0
    return-void
.end method
