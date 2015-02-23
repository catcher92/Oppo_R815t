.class public Lcom/oppo/widget/Oppo3DSeatView;
.super Landroid/view/SurfaceView;
.source "Oppo3DSeatView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/Oppo3DSeatView$OppoBookViewCallBack;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final EXTRA_SIZE:F = 5.0f

.field private static final HANDLE_ANIMA:I = 0x68

.field private static final HANDLE_DRAG:I = 0x65

.field private static final HANDLE_TOUCHUP:I = 0x6b

.field private static final HANDLE_TURNBACK:I = 0x66

.field private static final HANDLE_TURNLAST:I = 0x69

.field private static final HANDLE_TURNNEXT:I = 0x6a

.field private static final HANDLE_TURNREALNEXT:I = 0x67

.field public static final MODE_ALL:I = 0x0

.field public static final MODE_BOOK:I = 0x1

.field private static final PRE_SIZE:F = 3.0f

.field private static final TAG:Ljava/lang/String; = "Oppo3DSeatView"

.field private static final TAP_SIZE:F = 2.0f


# instance fields
.field private abortFlag:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field public mBookEffect:Lcom/oppo/model/ms4d/OppoSeatEffect;

.field private mContext:Landroid/content/Context;

.field private mDragFlag:Z

.field private mFolderColor:I

.field private mFrontShadowColorEnd:I

.field private mFrontShadowColorStart:I

.field private mHandler:Landroid/os/Handler;

.field private mHolder:Landroid/view/SurfaceHolder;

.field private mIsAttachedToWindow:Z

.field private mIsFirstDown:Z

.field private mIsMiddleFlag:Z

.field private mIsSurfaceDestroyed:Z

.field private mIsTurnPage:Z

.field private mLockObject:Ljava/lang/Object;

.field private mMode:I

.field private mOppoBookViewCallBack:Lcom/oppo/widget/Oppo3DSeatView$OppoBookViewCallBack;

.field private mPageX:F

.field private mPageZone:F

.field private mTapSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "paramContext"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 222
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 50
    const/4 v0, 0x1

    iput v0, p0, Lcom/oppo/widget/Oppo3DSeatView;->mMode:I

    .line 54
    iput v2, p0, Lcom/oppo/widget/Oppo3DSeatView;->mPageZone:F

    .line 55
    iput v2, p0, Lcom/oppo/widget/Oppo3DSeatView;->mPageX:F

    .line 56
    iput-boolean v1, p0, Lcom/oppo/widget/Oppo3DSeatView;->mIsMiddleFlag:Z

    .line 57
    iput-boolean v1, p0, Lcom/oppo/widget/Oppo3DSeatView;->mDragFlag:Z

    .line 58
    iput v3, p0, Lcom/oppo/widget/Oppo3DSeatView;->mFolderColor:I

    .line 61
    iput v2, p0, Lcom/oppo/widget/Oppo3DSeatView;->mTapSize:F

    .line 62
    iput-boolean v1, p0, Lcom/oppo/widget/Oppo3DSeatView;->mIsTurnPage:Z

    .line 63
    iput-boolean v1, p0, Lcom/oppo/widget/Oppo3DSeatView;->mIsFirstDown:Z

    .line 64
    iput-boolean v1, p0, Lcom/oppo/widget/Oppo3DSeatView;->abortFlag:Z

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oppo/widget/Oppo3DSeatView;->mLockObject:Ljava/lang/Object;

    .line 76
    iput v3, p0, Lcom/oppo/widget/Oppo3DSeatView;->mFrontShadowColorStart:I

    .line 77
    iput v3, p0, Lcom/oppo/widget/Oppo3DSeatView;->mFrontShadowColorEnd:I

    .line 79
    new-instance v0, Lcom/oppo/widget/Oppo3DSeatView$1;

    invoke-direct {v0, p0}, Lcom/oppo/widget/Oppo3DSeatView$1;-><init>(Lcom/oppo/widget/Oppo3DSeatView;)V

    iput-object v0, p0, Lcom/oppo/widget/Oppo3DSeatView;->mHandler:Landroid/os/Handler;

    .line 223
    iput-object p1, p0, Lcom/oppo/widget/Oppo3DSeatView;->mContext:Landroid/content/Context;

    .line 224
    invoke-direct {p0}, Lcom/oppo/widget/Oppo3DSeatView;->init()V

    .line 225
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "paramContext"
    .parameter "paramAttributeSet"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 242
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    const/4 v0, 0x1

    iput v0, p0, Lcom/oppo/widget/Oppo3DSeatView;->mMode:I

    .line 54
    iput v2, p0, Lcom/oppo/widget/Oppo3DSeatView;->mPageZone:F

    .line 55
    iput v2, p0, Lcom/oppo/widget/Oppo3DSeatView;->mPageX:F

    .line 56
    iput-boolean v1, p0, Lcom/oppo/widget/Oppo3DSeatView;->mIsMiddleFlag:Z

    .line 57
    iput-boolean v1, p0, Lcom/oppo/widget/Oppo3DSeatView;->mDragFlag:Z

    .line 58
    iput v3, p0, Lcom/oppo/widget/Oppo3DSeatView;->mFolderColor:I

    .line 61
    iput v2, p0, Lcom/oppo/widget/Oppo3DSeatView;->mTapSize:F

    .line 62
    iput-boolean v1, p0, Lcom/oppo/widget/Oppo3DSeatView;->mIsTurnPage:Z

    .line 63
    iput-boolean v1, p0, Lcom/oppo/widget/Oppo3DSeatView;->mIsFirstDown:Z

    .line 64
    iput-boolean v1, p0, Lcom/oppo/widget/Oppo3DSeatView;->abortFlag:Z

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oppo/widget/Oppo3DSeatView;->mLockObject:Ljava/lang/Object;

    .line 76
    iput v3, p0, Lcom/oppo/widget/Oppo3DSeatView;->mFrontShadowColorStart:I

    .line 77
    iput v3, p0, Lcom/oppo/widget/Oppo3DSeatView;->mFrontShadowColorEnd:I

    .line 79
    new-instance v0, Lcom/oppo/widget/Oppo3DSeatView$1;

    invoke-direct {v0, p0}, Lcom/oppo/widget/Oppo3DSeatView$1;-><init>(Lcom/oppo/widget/Oppo3DSeatView;)V

    iput-object v0, p0, Lcom/oppo/widget/Oppo3DSeatView;->mHandler:Landroid/os/Handler;

    .line 243
    iput-object p1, p0, Lcom/oppo/widget/Oppo3DSeatView;->mContext:Landroid/content/Context;

    .line 244
    invoke-direct {p0}, Lcom/oppo/widget/Oppo3DSeatView;->init()V

    .line 245
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "paramContext"
    .parameter "paramAttributeSet"
    .parameter "paramInt"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 265
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    const/4 v0, 0x1

    iput v0, p0, Lcom/oppo/widget/Oppo3DSeatView;->mMode:I

    .line 54
    iput v2, p0, Lcom/oppo/widget/Oppo3DSeatView;->mPageZone:F

    .line 55
    iput v2, p0, Lcom/oppo/widget/Oppo3DSeatView;->mPageX:F

    .line 56
    iput-boolean v1, p0, Lcom/oppo/widget/Oppo3DSeatView;->mIsMiddleFlag:Z

    .line 57
    iput-boolean v1, p0, Lcom/oppo/widget/Oppo3DSeatView;->mDragFlag:Z

    .line 58
    iput v3, p0, Lcom/oppo/widget/Oppo3DSeatView;->mFolderColor:I

    .line 61
    iput v2, p0, Lcom/oppo/widget/Oppo3DSeatView;->mTapSize:F

    .line 62
    iput-boolean v1, p0, Lcom/oppo/widget/Oppo3DSeatView;->mIsTurnPage:Z

    .line 63
    iput-boolean v1, p0, Lcom/oppo/widget/Oppo3DSeatView;->mIsFirstDown:Z

    .line 64
    iput-boolean v1, p0, Lcom/oppo/widget/Oppo3DSeatView;->abortFlag:Z

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oppo/widget/Oppo3DSeatView;->mLockObject:Ljava/lang/Object;

    .line 76
    iput v3, p0, Lcom/oppo/widget/Oppo3DSeatView;->mFrontShadowColorStart:I

    .line 77
    iput v3, p0, Lcom/oppo/widget/Oppo3DSeatView;->mFrontShadowColorEnd:I

    .line 79
    new-instance v0, Lcom/oppo/widget/Oppo3DSeatView$1;

    invoke-direct {v0, p0}, Lcom/oppo/widget/Oppo3DSeatView$1;-><init>(Lcom/oppo/widget/Oppo3DSeatView;)V

    iput-object v0, p0, Lcom/oppo/widget/Oppo3DSeatView;->mHandler:Landroid/os/Handler;

    .line 266
    iput-object p1, p0, Lcom/oppo/widget/Oppo3DSeatView;->mContext:Landroid/content/Context;

    .line 267
    invoke-direct {p0}, Lcom/oppo/widget/Oppo3DSeatView;->init()V

    .line 268
    return-void
.end method

.method static synthetic access$000(Lcom/oppo/widget/Oppo3DSeatView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/oppo/widget/Oppo3DSeatView;->invalidateView()V

    return-void
.end method

.method static synthetic access$100(Lcom/oppo/widget/Oppo3DSeatView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/oppo/widget/Oppo3DSeatView;->mIsTurnPage:Z

    return v0
.end method

.method static synthetic access$102(Lcom/oppo/widget/Oppo3DSeatView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/oppo/widget/Oppo3DSeatView;->mIsTurnPage:Z

    return p1
.end method

.method static synthetic access$200(Lcom/oppo/widget/Oppo3DSeatView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DSeatView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oppo/widget/Oppo3DSeatView;)Lcom/oppo/widget/Oppo3DSeatView$OppoBookViewCallBack;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DSeatView;->mOppoBookViewCallBack:Lcom/oppo/widget/Oppo3DSeatView$OppoBookViewCallBack;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oppo/widget/Oppo3DSeatView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/oppo/widget/Oppo3DSeatView;->abortFlag:Z

    return v0
.end method

.method static synthetic access$500(Lcom/oppo/widget/Oppo3DSeatView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/oppo/widget/Oppo3DSeatView;->mIsAttachedToWindow:Z

    return v0
.end method

.method static synthetic access$600(Lcom/oppo/widget/Oppo3DSeatView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/oppo/widget/Oppo3DSeatView;->mIsSurfaceDestroyed:Z

    return v0
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 271
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/Oppo3DSeatView;->mHolder:Landroid/view/SurfaceHolder;

    .line 272
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DSeatView;->mHolder:Landroid/view/SurfaceHolder;

    const/4 v1, -0x2

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 273
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 274
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DSeatView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 275
    iput-boolean v2, p0, Lcom/oppo/widget/Oppo3DSeatView;->mIsAttachedToWindow:Z

    .line 276
    iput-boolean v2, p0, Lcom/oppo/widget/Oppo3DSeatView;->mIsSurfaceDestroyed:Z

    .line 277
    return-void
.end method

.method private initBookEffect(II)V
    .locals 2
    .parameter "w"
    .parameter "h"

    .prologue
    .line 280
    new-instance v0, Landroid/widget/Scroller;

    iget-object v1, p0, Lcom/oppo/widget/Oppo3DSeatView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    .line 281
    .local v0, localScroller1:Landroid/widget/Scroller;
    new-instance v1, Lcom/oppo/model/ms4d/OppoSeatEffect;

    invoke-direct {v1, v0, p1, p2}, Lcom/oppo/model/ms4d/OppoSeatEffect;-><init>(Landroid/widget/Scroller;II)V

    iput-object v1, p0, Lcom/oppo/widget/Oppo3DSeatView;->mBookEffect:Lcom/oppo/model/ms4d/OppoSeatEffect;

    .line 282
    return-void
.end method

.method private invalidateView()V
    .locals 4

    .prologue
    .line 172
    iget-object v2, p0, Lcom/oppo/widget/Oppo3DSeatView;->mLockObject:Ljava/lang/Object;

    monitor-enter v2

    .line 173
    const/4 v0, 0x0

    .line 174
    .local v0, localCanvas:Landroid/graphics/Canvas;
    :try_start_0
    iget-boolean v1, p0, Lcom/oppo/widget/Oppo3DSeatView;->mIsAttachedToWindow:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/oppo/widget/Oppo3DSeatView;->mIsSurfaceDestroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_1

    .line 176
    :try_start_1
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DSeatView;->mHolder:Landroid/view/SurfaceHolder;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/view/SurfaceHolder;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    .line 177
    if-eqz v0, :cond_0

    .line 178
    const/4 v1, 0x0

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 179
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DSeatView;->mBookEffect:Lcom/oppo/model/ms4d/OppoSeatEffect;

    invoke-virtual {v1, v0}, Lcom/oppo/model/ms4d/OppoSeatEffect;->draw(Landroid/graphics/Canvas;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 184
    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DSeatView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3

    .line 189
    :cond_1
    :goto_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 190
    return-void

    .line 181
    :catch_0
    move-exception v1

    .line 184
    :try_start_4
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DSeatView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 185
    :catch_1
    move-exception v1

    goto :goto_0

    .line 183
    :catchall_0
    move-exception v1

    .line 184
    :try_start_5
    iget-object v3, p0, Lcom/oppo/widget/Oppo3DSeatView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v3, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2

    .line 186
    :goto_1
    :try_start_6
    throw v1

    .line 189
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1

    .line 185
    :catch_2
    move-exception v3

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method private playSoundEffect()V
    .locals 0

    .prologue
    .line 623
    return-void
.end method


# virtual methods
.method public clearView()V
    .locals 4

    .prologue
    .line 196
    iget-object v2, p0, Lcom/oppo/widget/Oppo3DSeatView;->mLockObject:Ljava/lang/Object;

    monitor-enter v2

    .line 197
    const/4 v0, 0x0

    .line 198
    .local v0, localCanvas:Landroid/graphics/Canvas;
    :try_start_0
    iget-boolean v1, p0, Lcom/oppo/widget/Oppo3DSeatView;->mIsAttachedToWindow:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/oppo/widget/Oppo3DSeatView;->mIsSurfaceDestroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_1

    .line 200
    :try_start_1
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DSeatView;->mHolder:Landroid/view/SurfaceHolder;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/view/SurfaceHolder;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    .line 201
    if-eqz v0, :cond_0

    .line 202
    const/4 v1, 0x0

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 207
    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DSeatView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3

    .line 212
    :cond_1
    :goto_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 213
    return-void

    .line 204
    :catch_0
    move-exception v1

    .line 207
    :try_start_4
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DSeatView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 208
    :catch_1
    move-exception v1

    goto :goto_0

    .line 206
    :catchall_0
    move-exception v1

    .line 207
    :try_start_5
    iget-object v3, p0, Lcom/oppo/widget/Oppo3DSeatView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v3, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2

    .line 209
    :goto_1
    :try_start_6
    throw v1

    .line 212
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1

    .line 208
    :catch_2
    move-exception v3

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DSeatView;->mBookEffect:Lcom/oppo/model/ms4d/OppoSeatEffect;

    invoke-virtual {v0}, Lcom/oppo/model/ms4d/OppoSeatEffect;->getMode()I

    move-result v0

    return v0
.end method

.method public final isPageTurnning()Z
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DSeatView;->mBookEffect:Lcom/oppo/model/ms4d/OppoSeatEffect;

    invoke-virtual {v0}, Lcom/oppo/model/ms4d/OppoSeatEffect;->isAnimation()Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/Oppo3DSeatView;->mIsAttachedToWindow:Z

    .line 155
    invoke-super {p0}, Landroid/view/SurfaceView;->onAttachedToWindow()V

    .line 156
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/Oppo3DSeatView;->mIsAttachedToWindow:Z

    .line 168
    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    .line 169
    return-void
.end method

.method public onDown(FF)Z
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 395
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DSeatView;->mBookEffect:Lcom/oppo/model/ms4d/OppoSeatEffect;

    if-nez v0, :cond_0

    .line 396
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/oppo/widget/Oppo3DSeatView;->initBookEffect(II)V

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DSeatView;->mBookEffect:Lcom/oppo/model/ms4d/OppoSeatEffect;

    invoke-virtual {v0}, Lcom/oppo/model/ms4d/OppoSeatEffect;->isAnimation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 400
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DSeatView;->mBookEffect:Lcom/oppo/model/ms4d/OppoSeatEffect;

    invoke-virtual {v0}, Lcom/oppo/model/ms4d/OppoSeatEffect;->abortAnimation()V

    .line 401
    iput-boolean v3, p0, Lcom/oppo/widget/Oppo3DSeatView;->abortFlag:Z

    .line 402
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DSeatView;->mOppoBookViewCallBack:Lcom/oppo/widget/Oppo3DSeatView$OppoBookViewCallBack;

    iget-boolean v1, p0, Lcom/oppo/widget/Oppo3DSeatView;->mIsTurnPage:Z

    iget-boolean v2, p0, Lcom/oppo/widget/Oppo3DSeatView;->abortFlag:Z

    invoke-interface {v0, v1, v2}, Lcom/oppo/widget/Oppo3DSeatView$OppoBookViewCallBack;->endFilp(ZZ)V

    .line 403
    iput-boolean v4, p0, Lcom/oppo/widget/Oppo3DSeatView;->mIsTurnPage:Z

    .line 404
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DSeatView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 405
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DSeatView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 407
    :cond_1
    iput-boolean v4, p0, Lcom/oppo/widget/Oppo3DSeatView;->abortFlag:Z

    .line 408
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DSeatView;->mBookEffect:Lcom/oppo/model/ms4d/OppoSeatEffect;

    const v1, 0x111111

    iget v2, p0, Lcom/oppo/widget/Oppo3DSeatView;->mFolderColor:I

    invoke-virtual {v0, v1, v2}, Lcom/oppo/model/ms4d/OppoSeatEffect;->setFolderBgColor(II)V

    .line 409
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DSeatView;->mBookEffect:Lcom/oppo/model/ms4d/OppoSeatEffect;

    iget v1, p0, Lcom/oppo/widget/Oppo3DSeatView;->mFrontShadowColorStart:I

    iget v2, p0, Lcom/oppo/widget/Oppo3DSeatView;->mFrontShadowColorEnd:I

    invoke-virtual {v0, v1, v2}, Lcom/oppo/model/ms4d/OppoSeatEffect;->setFrontShadowColor(II)V

    .line 410
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DSeatView;->mBookEffect:Lcom/oppo/model/ms4d/OppoSeatEffect;

    invoke-virtual {v0, p1, p2}, Lcom/oppo/model/ms4d/OppoSeatEffect;->startFlip(FF)V

    .line 412
    iget v0, p0, Lcom/oppo/widget/Oppo3DSeatView;->mMode:I

    if-ne v3, v0, :cond_4

    .line 413
    iput-boolean v4, p0, Lcom/oppo/widget/Oppo3DSeatView;->mIsMiddleFlag:Z

    .line 414
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40a0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/oppo/widget/Oppo3DSeatView;->mPageZone:F

    .line 415
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4040

    div-float/2addr v0, v1

    iput v0, p0, Lcom/oppo/widget/Oppo3DSeatView;->mPageX:F

    .line 416
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    iput v0, p0, Lcom/oppo/widget/Oppo3DSeatView;->mTapSize:F

    .line 418
    iget v0, p0, Lcom/oppo/widget/Oppo3DSeatView;->mTapSize:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_5

    .line 419
    iput-boolean v3, p0, Lcom/oppo/widget/Oppo3DSeatView;->mIsMiddleFlag:Z

    .line 432
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/oppo/widget/Oppo3DSeatView;->mTapSize:F

    sub-float/2addr v0, v1

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_3

    iget v0, p0, Lcom/oppo/widget/Oppo3DSeatView;->mTapSize:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_7

    .line 433
    :cond_3
    iput-boolean v3, p0, Lcom/oppo/widget/Oppo3DSeatView;->mDragFlag:Z

    .line 434
    iput-boolean v3, p0, Lcom/oppo/widget/Oppo3DSeatView;->mIsFirstDown:Z

    .line 439
    :cond_4
    :goto_1
    return v3

    .line 421
    :cond_5
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DSeatView;->mBookEffect:Lcom/oppo/model/ms4d/OppoSeatEffect;

    invoke-virtual {v0}, Lcom/oppo/model/ms4d/OppoSeatEffect;->isTop()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 422
    iget v0, p0, Lcom/oppo/widget/Oppo3DSeatView;->mPageZone:F

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_2

    .line 423
    iput-boolean v3, p0, Lcom/oppo/widget/Oppo3DSeatView;->mIsMiddleFlag:Z

    goto :goto_0

    .line 426
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/oppo/widget/Oppo3DSeatView;->mPageZone:F

    sub-float/2addr v0, v1

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_2

    .line 427
    iput-boolean v3, p0, Lcom/oppo/widget/Oppo3DSeatView;->mIsMiddleFlag:Z

    goto :goto_0

    .line 436
    :cond_7
    iput-boolean v4, p0, Lcom/oppo/widget/Oppo3DSeatView;->mDragFlag:Z

    goto :goto_1
.end method

.method public onDrag(FF)Z
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/high16 v5, 0x4000

    .line 450
    iget v3, p0, Lcom/oppo/widget/Oppo3DSeatView;->mMode:I

    if-ne v2, v3, :cond_1

    .line 451
    iget-boolean v3, p0, Lcom/oppo/widget/Oppo3DSeatView;->mDragFlag:Z

    if-nez v3, :cond_0

    .line 474
    :goto_0
    return v1

    .line 454
    :cond_0
    iget-boolean v3, p0, Lcom/oppo/widget/Oppo3DSeatView;->mIsMiddleFlag:Z

    if-eqz v3, :cond_1

    .line 455
    iget v3, p0, Lcom/oppo/widget/Oppo3DSeatView;->mPageX:F

    sub-float/2addr p1, v3

    .line 456
    iget-object v3, p0, Lcom/oppo/widget/Oppo3DSeatView;->mBookEffect:Lcom/oppo/model/ms4d/OppoSeatEffect;

    invoke-virtual {v3}, Lcom/oppo/model/ms4d/OppoSeatEffect;->isTop()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 457
    iget v3, p0, Lcom/oppo/widget/Oppo3DSeatView;->mPageZone:F

    cmpl-float v3, p2, v3

    if-ltz v3, :cond_1

    .line 458
    iget v3, p0, Lcom/oppo/widget/Oppo3DSeatView;->mPageZone:F

    div-float p2, v3, v5

    .line 467
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/oppo/widget/Oppo3DSeatView;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x65

    float-to-int v5, p1

    float-to-int v6, p2

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 468
    .local v0, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/oppo/widget/Oppo3DSeatView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 470
    iget-boolean v3, p0, Lcom/oppo/widget/Oppo3DSeatView;->mIsFirstDown:Z

    if-eqz v3, :cond_2

    .line 471
    iput-boolean v1, p0, Lcom/oppo/widget/Oppo3DSeatView;->mIsFirstDown:Z

    .line 472
    invoke-direct {p0}, Lcom/oppo/widget/Oppo3DSeatView;->playSoundEffect()V

    :cond_2
    move v1, v2

    .line 474
    goto :goto_0

    .line 461
    .end local v0           #msg:Landroid/os/Message;
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/oppo/widget/Oppo3DSeatView;->mPageZone:F

    sub-float/2addr v3, v4

    cmpg-float v3, p2, v3

    if-gtz v3, :cond_1

    .line 462
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/oppo/widget/Oppo3DSeatView;->mPageZone:F

    div-float/2addr v4, v5

    sub-float p2, v3, v4

    goto :goto_1
.end method

.method public onTouchUp(FF)Z
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v1, 0x1

    .line 541
    iget v2, p0, Lcom/oppo/widget/Oppo3DSeatView;->mMode:I

    if-ne v1, v2, :cond_0

    .line 542
    iget-boolean v2, p0, Lcom/oppo/widget/Oppo3DSeatView;->mDragFlag:Z

    if-nez v2, :cond_0

    .line 543
    const/4 v1, 0x0

    .line 548
    :goto_0
    return v1

    .line 546
    :cond_0
    iget-object v2, p0, Lcom/oppo/widget/Oppo3DSeatView;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x6b

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 547
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/oppo/widget/Oppo3DSeatView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onTurnBackPage(I)Z
    .locals 5
    .parameter "during"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 504
    iget v3, p0, Lcom/oppo/widget/Oppo3DSeatView;->mMode:I

    if-ne v2, v3, :cond_0

    .line 505
    iget-boolean v3, p0, Lcom/oppo/widget/Oppo3DSeatView;->mDragFlag:Z

    if-nez v3, :cond_0

    .line 512
    :goto_0
    return v1

    .line 510
    :cond_0
    iget-object v3, p0, Lcom/oppo/widget/Oppo3DSeatView;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x66

    invoke-virtual {v3, v4, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 511
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DSeatView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move v1, v2

    .line 512
    goto :goto_0
.end method

.method public onTurnLastPage(I)Z
    .locals 5
    .parameter "during"

    .prologue
    const/4 v4, 0x1

    .line 558
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DSeatView;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x69

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 559
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DSeatView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 560
    iput-boolean v4, p0, Lcom/oppo/widget/Oppo3DSeatView;->mIsTurnPage:Z

    .line 561
    invoke-direct {p0}, Lcom/oppo/widget/Oppo3DSeatView;->playSoundEffect()V

    .line 562
    return v4
.end method

.method public onTurnNextPage(I)Z
    .locals 5
    .parameter "during"

    .prologue
    const/4 v4, 0x1

    .line 572
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DSeatView;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 573
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DSeatView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 574
    iput-boolean v4, p0, Lcom/oppo/widget/Oppo3DSeatView;->mIsTurnPage:Z

    .line 575
    invoke-direct {p0}, Lcom/oppo/widget/Oppo3DSeatView;->playSoundEffect()V

    .line 576
    return v4
.end method

.method public onTurnRealNextPage(I)Z
    .locals 5
    .parameter "during"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 522
    iget v3, p0, Lcom/oppo/widget/Oppo3DSeatView;->mMode:I

    if-ne v2, v3, :cond_0

    .line 523
    iget-boolean v3, p0, Lcom/oppo/widget/Oppo3DSeatView;->mDragFlag:Z

    if-nez v3, :cond_0

    .line 530
    :goto_0
    return v1

    .line 528
    :cond_0
    iget-object v3, p0, Lcom/oppo/widget/Oppo3DSeatView;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x67

    invoke-virtual {v3, v4, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 529
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DSeatView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move v1, v2

    .line 530
    goto :goto_0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "frontBitmap"
    .parameter "backbiBitmap"

    .prologue
    .line 343
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DSeatView;->mBookEffect:Lcom/oppo/model/ms4d/OppoSeatEffect;

    if-nez v0, :cond_0

    .line 347
    :goto_0
    return-void

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DSeatView;->mBookEffect:Lcom/oppo/model/ms4d/OppoSeatEffect;

    invoke-virtual {v0, p1, p2}, Lcom/oppo/model/ms4d/OppoSeatEffect;->setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)V
    .locals 4
    .parameter "frontBitmap"
    .parameter "backbiBitmap"
    .parameter "isFirst"

    .prologue
    .line 357
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DSeatView;->mBookEffect:Lcom/oppo/model/ms4d/OppoSeatEffect;

    if-nez v1, :cond_0

    .line 384
    :goto_0
    return-void

    .line 360
    :cond_0
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DSeatView;->mBookEffect:Lcom/oppo/model/ms4d/OppoSeatEffect;

    invoke-virtual {v1, p1, p2}, Lcom/oppo/model/ms4d/OppoSeatEffect;->setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 362
    iget-object v2, p0, Lcom/oppo/widget/Oppo3DSeatView;->mLockObject:Ljava/lang/Object;

    monitor-enter v2

    .line 363
    const/4 v0, 0x0

    .line 365
    .local v0, localCanvas:Landroid/graphics/Canvas;
    :try_start_0
    iget-boolean v1, p0, Lcom/oppo/widget/Oppo3DSeatView;->mIsAttachedToWindow:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/oppo/widget/Oppo3DSeatView;->mIsSurfaceDestroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    .line 367
    :try_start_1
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DSeatView;->mHolder:Landroid/view/SurfaceHolder;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/view/SurfaceHolder;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    .line 368
    if-eqz v0, :cond_1

    .line 369
    if-eqz p3, :cond_3

    .line 370
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DSeatView;->mBookEffect:Lcom/oppo/model/ms4d/OppoSeatEffect;

    invoke-virtual {v1, v0, p1}, Lcom/oppo/model/ms4d/OppoSeatEffect;->drawBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 378
    :cond_1
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DSeatView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3

    .line 383
    :cond_2
    :goto_2
    :try_start_3
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 372
    :cond_3
    :try_start_4
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DSeatView;->mBookEffect:Lcom/oppo/model/ms4d/OppoSeatEffect;

    invoke-virtual {v1, v0, p2}, Lcom/oppo/model/ms4d/OppoSeatEffect;->drawBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 375
    :catch_0
    move-exception v1

    .line 378
    :try_start_5
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DSeatView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 379
    :catch_1
    move-exception v1

    goto :goto_2

    .line 377
    :catchall_1
    move-exception v1

    .line 378
    :try_start_6
    iget-object v3, p0, Lcom/oppo/widget/Oppo3DSeatView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v3, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_2

    .line 380
    :goto_3
    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 379
    :catch_2
    move-exception v3

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2
.end method

.method public setFolderColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 483
    iput p1, p0, Lcom/oppo/widget/Oppo3DSeatView;->mFolderColor:I

    .line 484
    return-void
.end method

.method public setFrontShadowColor(II)V
    .locals 0
    .parameter "startColor"
    .parameter "endColor"

    .prologue
    .line 493
    iput p1, p0, Lcom/oppo/widget/Oppo3DSeatView;->mFrontShadowColorStart:I

    .line 494
    iput p2, p0, Lcom/oppo/widget/Oppo3DSeatView;->mFrontShadowColorEnd:I

    .line 495
    return-void
.end method

.method public setMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 592
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DSeatView;->mBookEffect:Lcom/oppo/model/ms4d/OppoSeatEffect;

    invoke-virtual {v0, p1}, Lcom/oppo/model/ms4d/OppoSeatEffect;->setMode(I)V

    .line 593
    return-void
.end method

.method public setOppoBookViewCallBack(Lcom/oppo/widget/Oppo3DSeatView$OppoBookViewCallBack;)V
    .locals 0
    .parameter "oppoBookViewCallBack"

    .prologue
    .line 608
    iput-object p1, p0, Lcom/oppo/widget/Oppo3DSeatView;->mOppoBookViewCallBack:Lcom/oppo/widget/Oppo3DSeatView$OppoBookViewCallBack;

    .line 609
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 295
    invoke-direct {p0, p3, p4}, Lcom/oppo/widget/Oppo3DSeatView;->initBookEffect(II)V

    .line 296
    invoke-direct {p0}, Lcom/oppo/widget/Oppo3DSeatView;->invalidateView()V

    .line 297
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "holder"

    .prologue
    .line 308
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/Oppo3DSeatView;->mIsSurfaceDestroyed:Z

    .line 309
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 320
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/Oppo3DSeatView;->mIsSurfaceDestroyed:Z

    .line 321
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DSeatView;->mBookEffect:Lcom/oppo/model/ms4d/OppoSeatEffect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/widget/Oppo3DSeatView;->mBookEffect:Lcom/oppo/model/ms4d/OppoSeatEffect;

    invoke-virtual {v0}, Lcom/oppo/model/ms4d/OppoSeatEffect;->isAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DSeatView;->mBookEffect:Lcom/oppo/model/ms4d/OppoSeatEffect;

    invoke-virtual {v0}, Lcom/oppo/model/ms4d/OppoSeatEffect;->abortAnimation()V

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DSeatView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 326
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DSeatView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 327
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DSeatView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 328
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DSeatView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 329
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DSeatView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 330
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DSeatView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 331
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DSeatView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 332
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DSeatView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 334
    :cond_1
    return-void
.end method
