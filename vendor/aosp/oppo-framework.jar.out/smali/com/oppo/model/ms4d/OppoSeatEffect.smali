.class public Lcom/oppo/model/ms4d/OppoSeatEffect;
.super Ljava/lang/Object;
.source "OppoSeatEffect.java"


# static fields
.field private static final BACK_SHADOW_COLOR_END:I = 0x111111

.field private static final BACK_SHADOW_COLOR_END_1:I = 0x888888

.field private static final BACK_SHADOW_COLOR_START:I = -0x50eeeeef

.field private static final BACK_SHADOW_COLOR_START_1:I = 0x888888

.field private static final DEBUG:Z = false

.field private static final FOLDER_SHADOW_COLOR_END:I = -0x4fcccccd

.field private static final FOLDER_SHADOW_COLOR_START:I = 0xe5e5e5

.field private static final FRONT_SHADOW_COLOR_END:I = 0x888888

.field private static final FRONT_SHADOW_COLOR_END_1:I = 0x222222

.field private static final FRONT_SHADOW_COLOR_START:I = -0x7f777778

.field private static final FRONT_SHADOW_COLOR_START_1:I = -0x7fddddde

.field private static final FRONT_SHADOW_WIDTH_MDPI:I = 0xa

.field private static final RADIUS_270:D = 2.355

.field private static final TAG:Ljava/lang/String; = "help"

.field private static final VIRTUAL_HIGHT:I = 0x2


# instance fields
.field mBackBitmap:Landroid/graphics/Bitmap;

.field mBackShadowColors:[I

.field mBackShadowDrawableLR:Landroid/graphics/drawable/GradientDrawable;

.field mBackShadowDrawableRL:Landroid/graphics/drawable/GradientDrawable;

.field mColorMatrixFilter:Landroid/graphics/ColorMatrixColorFilter;

.field mCornerX:I

.field mCornerY:I

.field private mCurrentCornX:I

.field private mCurrentCornY:I

.field private mCurrentIsLeft:Z

.field private mCurrentX:F

.field private mCurrentY:F

.field mFolderBgColor:I

.field mFolderShadowColors:[I

.field mFolderShadowDrawableLR:Landroid/graphics/drawable/GradientDrawable;

.field mFolderShadowDrawableRL:Landroid/graphics/drawable/GradientDrawable;

.field mFolderX1:F

.field mFolderX11:F

.field mFolderX13:F

.field mFolderX2:F

.field mFolderX22:F

.field mFolderX24:F

.field mFolderX33:F

.field mFolderX44:F

.field mFolderY1:F

.field mFolderY11:F

.field mFolderY13:F

.field mFolderY2:F

.field mFolderY22:F

.field mFolderY24:F

.field mFolderY33:F

.field mFolderY44:F

.field mFrontBitmap:Landroid/graphics/Bitmap;

.field mFrontShadowColors:[I

.field mFrontShadowDrawableHBT:Landroid/graphics/drawable/GradientDrawable;

.field mFrontShadowDrawableHTB:Landroid/graphics/drawable/GradientDrawable;

.field mFrontShadowDrawableVLR:Landroid/graphics/drawable/GradientDrawable;

.field mFrontShadowDrawableVRL:Landroid/graphics/drawable/GradientDrawable;

.field mHeight:I

.field mIsLBorRT:Z

.field mIsLeft:Z

.field mMatrix:Landroid/graphics/Matrix;

.field mMatrixArray:[F

.field mMaxFrontShadowW:I

.field mMaxLength:F

.field mMiddleX:F

.field mMiddleY:F

.field private mMode:I

.field mPaint:Landroid/graphics/Paint;

.field mPath0:Landroid/graphics/Path;

.field mPath1:Landroid/graphics/Path;

.field mScroller:Landroid/widget/Scroller;

.field mShadowX1:F

.field mShadowX2:F

.field mShadowY1:F

.field mShadowY2:F

.field mTouchToCornerDis:F

.field mTouchX:F

.field mTouchY:F

.field mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    :try_start_0
    const-string v0, "ms4d_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v0

    goto :goto_0

    .line 46
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const v7, -0xb0b0c

    iput v7, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderBgColor:I

    .line 74
    iput v10, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mMode:I

    .line 128
    iput v9, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mCurrentX:F

    .line 129
    iput v9, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mCurrentY:F

    .line 130
    iput v8, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mCurrentCornX:I

    .line 131
    iput v8, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mCurrentCornY:I

    .line 132
    iput-boolean v8, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mCurrentIsLeft:Z

    .line 135
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    .line 136
    .local v5, localPath1:Landroid/graphics/Path;
    iput-object v5, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mPath0:Landroid/graphics/Path;

    .line 137
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    .line 138
    .local v6, localPath2:Landroid/graphics/Path;
    iput-object v6, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mPath1:Landroid/graphics/Path;

    .line 139
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 140
    .local v4, localMatrix:Landroid/graphics/Matrix;
    iput-object v4, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mMatrix:Landroid/graphics/Matrix;

    .line 141
    const/16 v7, 0x9

    new-array v0, v7, [F

    fill-array-data v0, :array_0

    .line 143
    .local v0, arrayOfFloat1:[F
    iput-object v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mMatrixArray:[F

    .line 145
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v7, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mPaint:Landroid/graphics/Paint;

    .line 147
    iget-object v7, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mPaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 148
    iget-object v7, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 149
    iget-object v7, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 151
    invoke-direct {p0}, Lcom/oppo/model/ms4d/OppoSeatEffect;->createDrawable()V

    .line 152
    new-instance v2, Landroid/graphics/ColorMatrix;

    invoke-direct {v2}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 153
    .local v2, localColorMatrix:Landroid/graphics/ColorMatrix;
    const/16 v7, 0x14

    new-array v1, v7, [F

    fill-array-data v1, :array_1

    .line 154
    .local v1, arrayOfFloat2:[F
    invoke-virtual {v2, v1}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 155
    new-instance v3, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v3, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 156
    .local v3, localColorMatrixColorFilter:Landroid/graphics/ColorMatrixColorFilter;
    iput-object v3, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mColorMatrixFilter:Landroid/graphics/ColorMatrixColorFilter;

    .line 157
    const/16 v7, 0xa

    iput v7, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mMaxFrontShadowW:I

    .line 158
    return-void

    .line 141
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 153
    :array_1
    .array-data 0x4
        0xcdt 0xcct 0xct 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0xa0t 0x42t
        0x0t 0x0t 0x0t 0x0t
        0xcdt 0xcct 0xct 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0xa0t 0x42t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xcdt 0xcct 0xct 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0xa0t 0x42t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xcdt 0xcct 0x4ct 0x3et
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/widget/Scroller;II)V
    .locals 1
    .parameter "paramScroller"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/oppo/model/ms4d/OppoSeatEffect;-><init>()V

    .line 180
    iput p2, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mWidth:I

    .line 181
    iput p3, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mHeight:I

    .line 183
    neg-int v0, p2

    int-to-float v0, v0

    iput v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mCurrentX:F

    .line 184
    iput-object p1, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mScroller:Landroid/widget/Scroller;

    .line 185
    return-void
.end method

.method private final calcCornerXY(FF)V
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 188
    iget v2, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v1, v2

    .line 189
    .local v1, mw:F
    iget v2, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mHeight:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v0, v2

    .line 191
    .local v0, mh:F
    iget v2, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mMode:I

    if-nez v2, :cond_4

    .line 192
    cmpg-float v2, p1, v1

    if-gez v2, :cond_2

    .line 194
    cmpg-float v2, p2, v0

    if-gez v2, :cond_1

    .line 195
    iput v3, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mCornerX:I

    .line 196
    iput v3, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mCornerY:I

    .line 197
    iput-boolean v4, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mIsLBorRT:Z

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    iput v3, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mCornerX:I

    .line 201
    iget v2, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mHeight:I

    iput v2, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mCornerY:I

    .line 202
    iput-boolean v3, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mIsLBorRT:Z

    goto :goto_0

    .line 206
    :cond_2
    cmpg-float v2, p2, v0

    if-gez v2, :cond_3

    .line 207
    iget v2, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mWidth:I

    iput v2, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mCornerX:I

    .line 208
    iput v3, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mCornerY:I

    .line 209
    iput-boolean v3, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mIsLBorRT:Z

    goto :goto_0

    .line 212
    :cond_3
    iget v2, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mWidth:I

    iput v2, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mCornerX:I

    .line 213
    iget v2, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mHeight:I

    iput v2, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mCornerY:I

    .line 214
    iput-boolean v4, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mIsLBorRT:Z

    goto :goto_0

    .line 217
    :cond_4
    iget v2, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mMode:I

    if-ne v4, v2, :cond_0

    .line 218
    cmpg-float v2, p1, v1

    if-gez v2, :cond_6

    .line 219
    iput-boolean v4, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mIsLeft:Z

    .line 221
    cmpg-float v2, p2, v0

    if-gez v2, :cond_5

    .line 222
    iget v2, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mWidth:I

    iput v2, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mCornerX:I

    .line 223
    iput v3, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mCornerY:I

    .line 224
    iput-boolean v3, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mIsLBorRT:Z

    goto :goto_0

    .line 227
    :cond_5
    iget v2, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mWidth:I

    iput v2, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mCornerX:I

    .line 228
    iget v2, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mHeight:I

    iput v2, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mCornerY:I

    .line 229
    iput-boolean v4, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mIsLBorRT:Z

    goto :goto_0

    .line 232
    :cond_6
    iput-boolean v3, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mIsLeft:Z

    .line 234
    cmpg-float v2, p2, v0

    if-gez v2, :cond_7

    .line 235
    iget v2, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mWidth:I

    iput v2, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mCornerX:I

    .line 236
    iput v3, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mCornerY:I

    .line 237
    iput-boolean v3, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mIsLBorRT:Z

    goto :goto_0

    .line 240
    :cond_7
    iget v2, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mWidth:I

    iput v2, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mCornerX:I

    .line 241
    iget v2, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mHeight:I

    iput v2, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mCornerY:I

    .line 242
    iput-boolean v4, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mIsLBorRT:Z

    goto :goto_0
.end method

.method private calcInsectionPoint()V
    .locals 11

    .prologue
    .line 253
    iget v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderX11:F

    iget v1, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderX22:F

    iget v2, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderY11:F

    iget v3, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderY22:F

    iget v4, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderX1:F

    iget v5, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mTouchX:F

    iget v6, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderY1:F

    iget v7, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mTouchY:F

    iget v8, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderX2:F

    iget v9, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderY2:F

    invoke-static/range {v0 .. v9}, Lcom/oppo/model/ms4d/OppoSeatEffect;->getCalcInsectionPoint(FFFFFFFFFF)[F

    move-result-object v10

    .line 259
    .local v10, points:[F
    const/4 v0, 0x0

    aget v0, v10, v0

    iput v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderX33:F

    .line 260
    const/4 v0, 0x1

    aget v0, v10, v0

    iput v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderY33:F

    .line 261
    const/4 v0, 0x2

    aget v0, v10, v0

    iput v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderX44:F

    .line 262
    const/4 v0, 0x3

    aget v0, v10, v0

    iput v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderY44:F

    .line 263
    return-void
.end method

.method private calcPoints()V
    .locals 15

    .prologue
    const/4 v12, 0x1

    const/4 v13, 0x0

    const/high16 v2, 0x4000

    const/4 v14, 0x0

    .line 266
    invoke-virtual {p0}, Lcom/oppo/model/ms4d/OppoSeatEffect;->isAnimation()Z

    move-result v8

    .line 267
    .local v8, bool:Z
    const/4 v4, 0x2

    .line 268
    .local v4, i:I
    iget v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mTouchY:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 269
    iput v14, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mTouchY:F

    .line 272
    :cond_0
    iget v10, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mTouchY:F

    .line 273
    .local v10, j:F
    iget v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mHeight:I

    add-int/lit8 v0, v0, -0x2

    int-to-float v9, v0

    .line 278
    .local v9, f1:F
    cmpl-float v0, v10, v9

    if-lez v0, :cond_1

    .line 279
    iget v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mHeight:I

    int-to-float v0, v0

    iput v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mTouchY:F

    .line 282
    :cond_1
    iget v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mTouchY:F

    cmpl-float v0, v14, v0

    if-nez v0, :cond_4

    iget v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mCornerY:I

    iget v1, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mHeight:I

    if-ne v0, v1, :cond_4

    .line 283
    iput v2, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mTouchY:F

    .line 288
    :cond_2
    :goto_0
    if-eqz v8, :cond_5

    move v5, v12

    .line 289
    .local v5, boolFlag:I
    :goto_1
    iget v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mTouchX:F

    iget v1, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mTouchY:F

    iget v2, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mCornerX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mCornerY:I

    int-to-float v3, v3

    iget v6, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mWidth:I

    iget v7, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mHeight:I

    invoke-static/range {v0 .. v7}, Lcom/oppo/model/ms4d/OppoSeatEffect;->getCalcPoints(FFFFIIII)[F

    move-result-object v11

    .line 290
    .local v11, points:[F
    aget v0, v11, v13

    iput v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mMiddleX:F

    .line 291
    aget v0, v11, v12

    iput v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mMiddleY:F

    .line 292
    const/4 v0, 0x2

    aget v0, v11, v0

    iput v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderY2:F

    .line 293
    const/4 v0, 0x3

    aget v0, v11, v0

    iput v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderX2:F

    .line 294
    const/4 v0, 0x4

    aget v0, v11, v0

    iput v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderY22:F

    .line 295
    const/4 v0, 0x5

    aget v0, v11, v0

    iput v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderX22:F

    .line 296
    const/4 v0, 0x6

    aget v0, v11, v0

    iput v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderX1:F

    .line 297
    const/4 v0, 0x7

    aget v0, v11, v0

    iput v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderY1:F

    .line 298
    const/16 v0, 0x8

    aget v0, v11, v0

    iput v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderY11:F

    .line 299
    const/16 v0, 0x9

    aget v0, v11, v0

    iput v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderX11:F

    .line 300
    const/16 v0, 0xa

    aget v0, v11, v0

    iput v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mTouchToCornerDis:F

    .line 301
    const/16 v0, 0xb

    aget v0, v11, v0

    iput v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mShadowX1:F

    .line 302
    const/16 v0, 0xc

    aget v0, v11, v0

    iput v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mShadowY1:F

    .line 303
    const/16 v0, 0xd

    aget v0, v11, v0

    iput v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mShadowY2:F

    .line 304
    const/16 v0, 0xe

    aget v0, v11, v0

    iput v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mShadowX2:F

    .line 305
    const/16 v0, 0xf

    aget v0, v11, v0

    iput v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mTouchX:F

    .line 306
    const/16 v0, 0x10

    aget v0, v11, v0

    iput v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mTouchY:F

    .line 308
    iget v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mTouchY:F

    cmpl-float v0, v0, v14

    if-lez v0, :cond_3

    iget v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mTouchY:F

    iget v1, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mHeight:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 309
    invoke-direct {p0}, Lcom/oppo/model/ms4d/OppoSeatEffect;->calcInsectionPoint()V

    .line 311
    :cond_3
    return-void

    .line 284
    .end local v5           #boolFlag:I
    .end local v11           #points:[F
    :cond_4
    iget v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mTouchY:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mCornerY:I

    if-nez v0, :cond_2

    .line 285
    iget v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mHeight:I

    add-int/lit8 v0, v0, -0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mTouchY:F

    goto/16 :goto_0

    :cond_5
    move v5, v13

    .line 288
    goto/16 :goto_1
.end method

.method private createDrawable()V
    .locals 21

    .prologue
    .line 314
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v6, v0, [I

    fill-array-data v6, :array_0

    .line 316
    .local v6, arrayOfIntOne:[I
    sget-object v14, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 317
    .local v14, orientationOne:Landroid/graphics/drawable/GradientDrawable$Orientation;
    new-instance v19, Landroid/graphics/drawable/GradientDrawable;

    move-object/from16 v0, v19

    invoke-direct {v0, v14, v6}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderShadowDrawableRL:Landroid/graphics/drawable/GradientDrawable;

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderShadowDrawableRL:Landroid/graphics/drawable/GradientDrawable;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 320
    sget-object v18, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 321
    .local v18, orientationTwo:Landroid/graphics/drawable/GradientDrawable$Orientation;
    new-instance v19, Landroid/graphics/drawable/GradientDrawable;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v6}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderShadowDrawableLR:Landroid/graphics/drawable/GradientDrawable;

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderShadowDrawableLR:Landroid/graphics/drawable/GradientDrawable;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 324
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v10, v0, [I

    fill-array-data v10, :array_1

    .line 325
    .local v10, arrayOfIntTwo:[I
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mBackShadowColors:[I

    .line 326
    sget-object v17, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 327
    .local v17, orientationThree:Landroid/graphics/drawable/GradientDrawable$Orientation;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mBackShadowColors:[I

    .line 328
    .local v9, arrayOfIntThree:[I
    new-instance v19, Landroid/graphics/drawable/GradientDrawable;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v9}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/model/ms4d/OppoSeatEffect;->mBackShadowDrawableRL:Landroid/graphics/drawable/GradientDrawable;

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mBackShadowDrawableRL:Landroid/graphics/drawable/GradientDrawable;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 331
    sget-object v13, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 332
    .local v13, orientationFour:Landroid/graphics/drawable/GradientDrawable$Orientation;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mBackShadowColors:[I

    .line 333
    .local v4, arrayOfIntFour:[I
    new-instance v19, Landroid/graphics/drawable/GradientDrawable;

    move-object/from16 v0, v19

    invoke-direct {v0, v13, v4}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/model/ms4d/OppoSeatEffect;->mBackShadowDrawableLR:Landroid/graphics/drawable/GradientDrawable;

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mBackShadowDrawableLR:Landroid/graphics/drawable/GradientDrawable;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 336
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v3, v0, [I

    fill-array-data v3, :array_2

    .line 337
    .local v3, arrayOfIntFive:[I
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFrontShadowColors:[I

    .line 338
    sget-object v12, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 339
    .local v12, orientationFive:Landroid/graphics/drawable/GradientDrawable$Orientation;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFrontShadowColors:[I

    .line 340
    .local v8, arrayOfIntSix:[I
    new-instance v19, Landroid/graphics/drawable/GradientDrawable;

    move-object/from16 v0, v19

    invoke-direct {v0, v12, v8}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFrontShadowDrawableVLR:Landroid/graphics/drawable/GradientDrawable;

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFrontShadowDrawableVLR:Landroid/graphics/drawable/GradientDrawable;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 343
    sget-object v16, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 344
    .local v16, orientationSix:Landroid/graphics/drawable/GradientDrawable$Orientation;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFrontShadowColors:[I

    .line 345
    .local v7, arrayOfIntSeven:[I
    new-instance v19, Landroid/graphics/drawable/GradientDrawable;

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v7}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFrontShadowDrawableVRL:Landroid/graphics/drawable/GradientDrawable;

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFrontShadowDrawableVRL:Landroid/graphics/drawable/GradientDrawable;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 348
    sget-object v15, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 349
    .local v15, orientationSeven:Landroid/graphics/drawable/GradientDrawable$Orientation;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFrontShadowColors:[I

    .line 350
    .local v2, arrayOfIntEight:[I
    new-instance v19, Landroid/graphics/drawable/GradientDrawable;

    move-object/from16 v0, v19

    invoke-direct {v0, v15, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFrontShadowDrawableHTB:Landroid/graphics/drawable/GradientDrawable;

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFrontShadowDrawableHTB:Landroid/graphics/drawable/GradientDrawable;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 353
    sget-object v11, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 354
    .local v11, orientationEight:Landroid/graphics/drawable/GradientDrawable$Orientation;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFrontShadowColors:[I

    .line 355
    .local v5, arrayOfIntNine:[I
    new-instance v19, Landroid/graphics/drawable/GradientDrawable;

    move-object/from16 v0, v19

    invoke-direct {v0, v11, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFrontShadowDrawableHBT:Landroid/graphics/drawable/GradientDrawable;

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFrontShadowDrawableHBT:Landroid/graphics/drawable/GradientDrawable;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 357
    return-void

    .line 314
    :array_0
    .array-data 0x4
        0xe5t 0xe5t 0xe5t 0x0t
        0x33t 0x33t 0x33t 0xb0t
    .end array-data

    .line 324
    :array_1
    .array-data 0x4
        0x11t 0x11t 0x11t 0xaft
        0x11t 0x11t 0x11t 0x0t
    .end array-data

    .line 336
    :array_2
    .array-data 0x4
        0x88t 0x88t 0x88t 0x80t
        0x88t 0x88t 0x88t 0x0t
    .end array-data
.end method

.method private drawByDegree(Landroid/graphics/Canvas;)V
    .locals 26
    .parameter "paramCanvas"

    .prologue
    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mPath0:Landroid/graphics/Path;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Path;->reset()V

    .line 362
    move-object/from16 v0, p0

    iget v8, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderX22:F

    .line 363
    .local v8, i:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderY22:F

    move/from16 v19, v0

    .line 364
    .local v19, j:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mPath0:Landroid/graphics/Path;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v8, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 368
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderX2:F

    move/from16 v20, v0

    .line 369
    .local v20, k:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderY2:F

    move/from16 v21, v0

    .line 370
    .local v21, l:F
    move-object/from16 v0, p0

    iget v9, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderX44:F

    .line 371
    .local v9, i1:F
    move-object/from16 v0, p0

    iget v11, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderY44:F

    .line 378
    .local v11, i2:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mPath0:Landroid/graphics/Path;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2, v9, v11}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 380
    move-object/from16 v0, p0

    iget v12, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mTouchX:F

    .line 381
    .local v12, i3:F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mTouchY:F

    .line 386
    .local v13, i4:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mPath0:Landroid/graphics/Path;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Path;->lineTo(FF)V

    .line 388
    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderX33:F

    .line 389
    .local v14, i5:F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderY33:F

    .line 393
    .local v15, i6:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mPath0:Landroid/graphics/Path;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v14, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 394
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderX1:F

    move/from16 v16, v0

    .line 395
    .local v16, i7:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderY1:F

    move/from16 v17, v0

    .line 396
    .local v17, i8:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderX11:F

    move/from16 v18, v0

    .line 397
    .local v18, i9:F
    move-object/from16 v0, p0

    iget v10, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderY11:F

    .line 403
    .local v10, i10:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mPath0:Landroid/graphics/Path;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3, v10}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 405
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mCornerX:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v5, v0

    .line 406
    .local v5, f1:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mCornerY:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v6, v0

    .line 409
    .local v6, f2:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mPath0:Landroid/graphics/Path;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mPath0:Landroid/graphics/Path;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Path;->close()V

    .line 411
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mPath0:Landroid/graphics/Path;

    move-object/from16 v22, v0

    sget-object v23, Landroid/graphics/Region$Op;->XOR:Landroid/graphics/Region$Op;

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFrontBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move-object/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 416
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 418
    invoke-virtual/range {p0 .. p1}, Lcom/oppo/model/ms4d/OppoSeatEffect;->drawBackPageAndShadow(Landroid/graphics/Canvas;)F

    move-result v7

    .line 420
    .local v7, f3:F
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v7}, Lcom/oppo/model/ms4d/OppoSeatEffect;->drawFrontShadow(Landroid/graphics/Canvas;F)V

    .line 421
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v7}, Lcom/oppo/model/ms4d/OppoSeatEffect;->drawFolderShadow(Landroid/graphics/Canvas;F)V

    .line 422
    return-void
.end method

.method private drawVertical(Landroid/graphics/Canvas;)V
    .locals 23
    .parameter "paramCanvas"

    .prologue
    .line 425
    const/4 v10, 0x0

    .line 426
    .local v10, i:I
    const/4 v13, 0x2

    .line 427
    .local v13, j:I
    const-wide/high16 v14, 0x3fe0

    .line 429
    .local v14, l:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mPath0:Landroid/graphics/Path;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Path;->reset()V

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mPath0:Landroid/graphics/Path;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mCornerX:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mCornerY:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Landroid/graphics/Path;->moveTo(FF)V

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mPath0:Landroid/graphics/Path;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mCornerX:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderY11:F

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Landroid/graphics/Path;->lineTo(FF)V

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mPath0:Landroid/graphics/Path;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderX22:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderY11:F

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Landroid/graphics/Path;->lineTo(FF)V

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mPath0:Landroid/graphics/Path;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderX22:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderY22:F

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Landroid/graphics/Path;->lineTo(FF)V

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mPath0:Landroid/graphics/Path;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Path;->close()V

    .line 448
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mPath0:Landroid/graphics/Path;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mBackBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 451
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 456
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mCornerX:I

    move/from16 v19, v0

    if-lez v19, :cond_0

    .line 457
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderX22:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    sub-double v19, v19, v14

    move-wide/from16 v0, v19

    double-to-int v11, v0

    .line 458
    .local v11, i5:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mMiddleX:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    add-double v19, v19, v14

    move-wide/from16 v0, v19

    double-to-int v12, v0

    .line 459
    .local v12, i6:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mBackShadowDrawableLR:Landroid/graphics/drawable/GradientDrawable;

    move-object/from16 v17, v0

    .line 466
    .local v17, localGradientDrawable:Landroid/graphics/drawable/GradientDrawable;
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mHeight:I

    move/from16 v19, v0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v11, v10, v12, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 467
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mPath0:Landroid/graphics/Path;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Path;->reset()V

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mPath0:Landroid/graphics/Path;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderX22:F

    move/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/graphics/Path;->moveTo(FF)V

    .line 472
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mWidth:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mCornerX:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v7, v0

    .line 473
    .local v7, f5:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mPath0:Landroid/graphics/Path;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v7, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 475
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mWidth:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mCornerX:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v8, v0

    .line 476
    .local v8, f6:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mPath0:Landroid/graphics/Path;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mHeight:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v8, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mPath0:Landroid/graphics/Path;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderX22:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mHeight:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Landroid/graphics/Path;->lineTo(FF)V

    .line 478
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mPath0:Landroid/graphics/Path;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFrontBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 482
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 484
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mTouchToCornerDis:F

    move/from16 v19, v0

    const/high16 v20, 0x4120

    div-float v9, v19, v20

    .line 486
    .local v9, f9:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mCornerX:I

    move/from16 v19, v0

    if-lez v19, :cond_1

    .line 487
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mTouchX:F

    move/from16 v19, v0

    sub-float v19, v19, v9

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    sub-double v19, v19, v14

    move-wide/from16 v0, v19

    double-to-int v11, v0

    .line 488
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mTouchX:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    add-double v19, v19, v14

    const-wide/high16 v21, 0x4024

    add-double v19, v19, v21

    move-wide/from16 v0, v19

    double-to-int v12, v0

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFrontShadowDrawableVRL:Landroid/graphics/drawable/GradientDrawable;

    move-object/from16 v17, v0

    .line 496
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mHeight:I

    move/from16 v19, v0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v11, v10, v12, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 497
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 499
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderX22:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mMiddleX:F

    move/from16 v20, v0

    add-float v19, v19, v20

    int-to-float v0, v13

    move/from16 v20, v0

    div-float v5, v19, v20

    .line 500
    .local v5, f10:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mPath0:Landroid/graphics/Path;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Path;->reset()V

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mPath0:Landroid/graphics/Path;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v5, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mPath0:Landroid/graphics/Path;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mTouchX:F

    move/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/graphics/Path;->lineTo(FF)V

    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mPath0:Landroid/graphics/Path;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mTouchX:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mHeight:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Landroid/graphics/Path;->lineTo(FF)V

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mPath0:Landroid/graphics/Path;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mHeight:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v5, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mPath0:Landroid/graphics/Path;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Path;->close()V

    .line 507
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mPath0:Landroid/graphics/Path;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 513
    sget-object v18, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 514
    .local v18, localStyle:Landroid/graphics/Paint$Style;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderBgColor:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setColor(I)V

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 517
    const/high16 v19, -0x4080

    const/high16 v20, 0x3f80

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 518
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mTouchX:F

    move/from16 v19, v0

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mCornerX:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v6, v19, v20

    .line 519
    .local v6, f14:F
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v6, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mColorMatrixFilter:Landroid/graphics/ColorMatrixColorFilter;

    move-object/from16 v16, v0

    .line 522
    .local v16, localColorMatrixColorFilter:Landroid/graphics/ColorMatrixColorFilter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFrontBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 525
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 527
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mCornerX:I

    move/from16 v19, v0

    if-lez v19, :cond_2

    .line 528
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mMiddleX:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mTouchX:F

    move/from16 v20, v0

    add-float v19, v19, v20

    int-to-float v0, v13

    move/from16 v20, v0

    div-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v11, v0

    .line 529
    float-to-double v0, v5

    move-wide/from16 v19, v0

    add-double v19, v19, v14

    move-wide/from16 v0, v19

    double-to-int v12, v0

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderShadowDrawableLR:Landroid/graphics/drawable/GradientDrawable;

    move-object/from16 v17, v0

    .line 537
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mHeight:I

    move/from16 v19, v0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v11, v10, v12, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 538
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 539
    return-void

    .line 461
    .end local v5           #f10:F
    .end local v6           #f14:F
    .end local v7           #f5:F
    .end local v8           #f6:F
    .end local v9           #f9:F
    .end local v11           #i5:I
    .end local v12           #i6:I
    .end local v16           #localColorMatrixColorFilter:Landroid/graphics/ColorMatrixColorFilter;
    .end local v17           #localGradientDrawable:Landroid/graphics/drawable/GradientDrawable;
    .end local v18           #localStyle:Landroid/graphics/Paint$Style;
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mMiddleX:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    sub-double v19, v19, v14

    move-wide/from16 v0, v19

    double-to-int v11, v0

    .line 462
    .restart local v11       #i5:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderX22:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    add-double v19, v19, v14

    move-wide/from16 v0, v19

    double-to-int v12, v0

    .line 463
    .restart local v12       #i6:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mBackShadowDrawableRL:Landroid/graphics/drawable/GradientDrawable;

    move-object/from16 v17, v0

    .restart local v17       #localGradientDrawable:Landroid/graphics/drawable/GradientDrawable;
    goto/16 :goto_0

    .line 491
    .restart local v7       #f5:F
    .restart local v8       #f6:F
    .restart local v9       #f9:F
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mTouchX:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    sub-double v19, v19, v14

    move-wide/from16 v0, v19

    double-to-int v11, v0

    .line 492
    int-to-float v0, v11

    move/from16 v19, v0

    add-float v19, v19, v9

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    add-double v19, v19, v14

    move-wide/from16 v0, v19

    double-to-int v12, v0

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFrontShadowDrawableVLR:Landroid/graphics/drawable/GradientDrawable;

    move-object/from16 v17, v0

    goto/16 :goto_1

    .line 532
    .restart local v5       #f10:F
    .restart local v6       #f14:F
    .restart local v16       #localColorMatrixColorFilter:Landroid/graphics/ColorMatrixColorFilter;
    .restart local v18       #localStyle:Landroid/graphics/Paint$Style;
    :cond_2
    float-to-int v11, v5

    .line 533
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mMiddleX:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mTouchX:F

    move/from16 v20, v0

    add-float v19, v19, v20

    int-to-float v0, v13

    move/from16 v20, v0

    div-float v19, v19, v20

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    add-double v19, v19, v14

    move-wide/from16 v0, v19

    double-to-int v12, v0

    .line 534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderShadowDrawableRL:Landroid/graphics/drawable/GradientDrawable;

    move-object/from16 v17, v0

    goto/16 :goto_2
.end method

.method public static native getCalcInsectionPoint(FFFFFFFFFF)[F
.end method

.method public static native getCalcPoints(FFFFIIII)[F
.end method


# virtual methods
.method public final abortAnimation()V
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 543
    return-void
.end method

.method public final doAnimation()Z
    .locals 2

    .prologue
    .line 546
    iget-object v1, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mScroller:Landroid/widget/Scroller;

    if-eqz v1, :cond_0

    .line 547
    iget-object v1, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 548
    iget-object v1, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    int-to-float v0, v1

    .line 549
    .local v0, f:F
    iput v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mTouchX:F

    .line 550
    iget-object v1, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    int-to-float v0, v1

    .line 551
    iput v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mTouchY:F

    .line 552
    invoke-direct {p0}, Lcom/oppo/model/ms4d/OppoSeatEffect;->calcPoints()V

    .line 554
    .end local v0           #f:F
    :cond_0
    iget-object v1, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    return v1
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "paramCanvas"

    .prologue
    .line 565
    iget-object v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFrontBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mBackBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFrontBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mBackBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 581
    :cond_0
    :goto_0
    return-void

    .line 570
    :cond_1
    iget v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mTouchX:F

    iput v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mCurrentX:F

    .line 571
    iget v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mTouchY:F

    iput v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mCurrentY:F

    .line 572
    iget v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mCornerX:I

    iput v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mCurrentCornX:I

    .line 573
    iget v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mCornerY:I

    iput v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mCurrentCornY:I

    .line 574
    iget-boolean v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mIsLeft:Z

    iput-boolean v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mCurrentIsLeft:Z

    .line 576
    iget v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mTouchY:F

    iget v1, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mHeight:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iget v1, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mTouchY:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    .line 577
    :cond_2
    invoke-direct {p0, p1}, Lcom/oppo/model/ms4d/OppoSeatEffect;->drawVertical(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 579
    :cond_3
    invoke-direct {p0, p1}, Lcom/oppo/model/ms4d/OppoSeatEffect;->drawByDegree(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public drawBackPageAndShadow(Landroid/graphics/Canvas;)F
    .locals 30
    .parameter "paramCanvas"

    .prologue
    .line 584
    const/16 v19, 0x0

    .line 585
    .local v19, i28:I
    const/16 v20, 0x0

    .line 586
    .local v20, i29:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderX2:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mCornerX:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    sub-float v26, v26, v27

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v21, v0

    .line 587
    .local v21, l1:D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderY1:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mCornerY:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    sub-float v26, v26, v27

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v23, v0

    .line 588
    .local v23, l2:D
    invoke-static/range {v21 .. v24}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v16, v0

    .line 589
    .local v16, i1:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderX2:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mCornerX:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    sub-float v26, v26, v27

    const/high16 v27, 0x4000

    div-float v9, v26, v27

    .line 590
    .local v9, f3:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderX2:F

    move/from16 v26, v0

    add-float v10, v26, v9

    .line 591
    .local v10, f4:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mTouchToCornerDis:F

    move/from16 v26, v0

    const/high16 v27, 0x4080

    div-float v26, v26, v27

    const/high16 v27, 0x3f80

    add-float v11, v26, v27

    .line 592
    .local v11, f5:F
    const/high16 v26, 0x4000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderX1:F

    move/from16 v27, v0

    mul-float v12, v26, v27

    .line 593
    .local v12, f6:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderX33:F

    move/from16 v26, v0

    add-float v13, v12, v26

    .line 594
    .local v13, f7:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderX11:F

    move/from16 v26, v0

    add-float v26, v26, v13

    const/high16 v27, 0x4080

    div-float v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderX13:F

    .line 595
    const/high16 v26, 0x4000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderY1:F

    move/from16 v27, v0

    mul-float v14, v26, v27

    .line 596
    .local v14, f8:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderY11:F

    move/from16 v26, v0

    add-float v15, v14, v26

    .line 597
    .local v15, f9:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderY33:F

    move/from16 v26, v0

    add-float v26, v26, v15

    const/high16 v27, 0x4080

    div-float v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderY13:F

    .line 598
    const/high16 v26, 0x4000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderX2:F

    move/from16 v27, v0

    mul-float v5, v26, v27

    .line 599
    .local v5, f10:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderX22:F

    move/from16 v26, v0

    add-float v6, v5, v26

    .line 600
    .local v6, f11:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderX44:F

    move/from16 v26, v0

    add-float v26, v26, v6

    const/high16 v27, 0x4080

    div-float v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderX24:F

    .line 601
    const/high16 v26, 0x4000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderY2:F

    move/from16 v27, v0

    mul-float v7, v26, v27

    .line 602
    .local v7, f12:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderY22:F

    move/from16 v26, v0

    add-float v8, v7, v26

    .line 603
    .local v8, f13:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderY44:F

    move/from16 v26, v0

    add-float v26, v26, v8

    const/high16 v27, 0x4080

    div-float v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderY24:F

    .line 604
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderY2:F

    move/from16 v26, v0

    const/high16 v27, 0x3f80

    sub-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v17, v0

    .line 605
    .local v17, i26:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mMaxLength:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderY2:F

    move/from16 v27, v0

    add-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v18, v0

    .line 606
    .local v18, i27:I
    const/16 v25, 0x0

    .line 607
    .local v25, localGradientDrawable1:Landroid/graphics/drawable/GradientDrawable;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mIsLBorRT:Z

    move/from16 v26, v0

    if-nez v26, :cond_0

    .line 608
    const/high16 v26, 0x3f80

    sub-float v26, v10, v26

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v19, v0

    .line 609
    add-float v26, v10, v11

    const/high16 v27, 0x3f80

    add-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v20, v0

    .line 610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mBackShadowDrawableLR:Landroid/graphics/drawable/GradientDrawable;

    move-object/from16 v25, v0

    .line 617
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mPath1:Landroid/graphics/Path;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Path;->reset()V

    .line 621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mPath1:Landroid/graphics/Path;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderX11:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderY11:F

    move/from16 v28, v0

    invoke-virtual/range {v26 .. v28}, Landroid/graphics/Path;->moveTo(FF)V

    .line 625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mPath1:Landroid/graphics/Path;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderX13:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderY13:F

    move/from16 v28, v0

    invoke-virtual/range {v26 .. v28}, Landroid/graphics/Path;->lineTo(FF)V

    .line 629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mPath1:Landroid/graphics/Path;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderX24:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderY24:F

    move/from16 v28, v0

    invoke-virtual/range {v26 .. v28}, Landroid/graphics/Path;->lineTo(FF)V

    .line 633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mPath1:Landroid/graphics/Path;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderX22:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderY22:F

    move/from16 v28, v0

    invoke-virtual/range {v26 .. v28}, Landroid/graphics/Path;->lineTo(FF)V

    .line 637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mPath1:Landroid/graphics/Path;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mCornerX:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mCornerY:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    invoke-virtual/range {v26 .. v28}, Landroid/graphics/Path;->lineTo(FF)V

    .line 639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mPath1:Landroid/graphics/Path;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Path;->close()V

    .line 640
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mPath0:Landroid/graphics/Path;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mPath1:Landroid/graphics/Path;

    move-object/from16 v26, v0

    sget-object v27, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mBackBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v29, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move-object/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 646
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderY2:F

    move/from16 v26, v0

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v26

    invoke-virtual {v0, v1, v10, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 653
    move-object/from16 v0, v25

    move/from16 v1, v19

    move/from16 v2, v17

    move/from16 v3, v20

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 654
    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 655
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 657
    return v16

    .line 612
    :cond_0
    sub-float v26, v10, v11

    const/high16 v27, 0x3f80

    sub-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v19, v0

    .line 613
    const/high16 v26, 0x3f80

    add-float v26, v26, v10

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v20, v0

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mBackShadowDrawableRL:Landroid/graphics/drawable/GradientDrawable;

    move-object/from16 v25, v0

    goto/16 :goto_0
.end method

.method public final drawBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "paramCanvas"
    .parameter "bitmap"

    .prologue
    const/4 v1, 0x0

    .line 558
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 562
    :cond_0
    :goto_0
    return-void

    .line 561
    :cond_1
    iget-object v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v1, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public drawFolderShadow(Landroid/graphics/Canvas;F)V
    .locals 28
    .parameter "paramCanvas"
    .parameter "paramFloat"

    .prologue
    .line 661
    const/16 v20, 0x0

    .line 662
    .local v20, i15:I
    const/16 v21, 0x0

    .line 663
    .local v21, i16:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mShadowX2:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderX2:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 664
    .local v7, f1:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mShadowY1:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderY1:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 665
    .local v11, f2:F
    invoke-static {v7, v11}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 666
    .local v12, f3:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mPath1:Landroid/graphics/Path;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Path;->reset()V

    .line 670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mPath1:Landroid/graphics/Path;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderX13:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderY13:F

    move/from16 v27, v0

    invoke-virtual/range {v25 .. v27}, Landroid/graphics/Path;->moveTo(FF)V

    .line 674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mPath1:Landroid/graphics/Path;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderX24:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderY24:F

    move/from16 v27, v0

    invoke-virtual/range {v25 .. v27}, Landroid/graphics/Path;->lineTo(FF)V

    .line 678
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mPath1:Landroid/graphics/Path;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderX44:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderY44:F

    move/from16 v27, v0

    invoke-virtual/range {v25 .. v27}, Landroid/graphics/Path;->lineTo(FF)V

    .line 682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mPath1:Landroid/graphics/Path;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mTouchX:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mTouchY:F

    move/from16 v27, v0

    invoke-virtual/range {v25 .. v27}, Landroid/graphics/Path;->lineTo(FF)V

    .line 686
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mPath1:Landroid/graphics/Path;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderX33:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderY33:F

    move/from16 v27, v0

    invoke-virtual/range {v25 .. v27}, Landroid/graphics/Path;->lineTo(FF)V

    .line 687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mPath1:Landroid/graphics/Path;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Path;->close()V

    .line 689
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderY22:F

    move/from16 v25, v0

    const/high16 v26, 0x3f80

    sub-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v18, v0

    .line 690
    .local v18, i11:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderY22:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mMaxLength:F

    move/from16 v26, v0

    add-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v19, v0

    .line 691
    .local v19, i14:I
    const/16 v24, 0x0

    .line 692
    .local v24, localGradientDrawable1:Landroid/graphics/drawable/GradientDrawable;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mIsLBorRT:Z

    move/from16 v25, v0

    if-nez v25, :cond_0

    .line 693
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderX22:F

    move/from16 v25, v0

    const/high16 v26, 0x3f80

    sub-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v20, v0

    .line 694
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderX22:F

    move/from16 v25, v0

    add-float v25, v25, v12

    const/high16 v26, 0x3f80

    add-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v21, v0

    .line 695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderShadowDrawableLR:Landroid/graphics/drawable/GradientDrawable;

    move-object/from16 v24, v0

    .line 702
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mPath0:Landroid/graphics/Path;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mPath1:Landroid/graphics/Path;

    move-object/from16 v25, v0

    sget-object v26, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderBgColor:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Paint;->setColor(I)V

    .line 707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mColorMatrixFilter:Landroid/graphics/ColorMatrixColorFilter;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 710
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mCornerX:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderX2:F

    move/from16 v26, v0

    sub-float v13, v25, v26

    .line 711
    .local v13, f5:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderY1:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mCornerY:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    sub-float v14, v25, v26

    .line 712
    .local v14, f6:F
    float-to-double v5, v13

    .line 713
    .local v5, d:D
    float-to-double v0, v14

    move-wide/from16 v22, v0

    .line 715
    .local v22, l1:D
    move-wide/from16 v0, v22

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v25

    move-wide/from16 v0, v25

    double-to-float v15, v0

    .line 716
    .local v15, f7:F
    div-float v16, v13, v15

    .line 717
    .local v16, f8:F
    div-float v17, v14, v15

    .line 718
    .local v17, f9:F
    const/high16 v25, 0x4000

    mul-float v25, v25, v17

    mul-float v8, v25, v17

    .line 719
    .local v8, f10:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mMatrixArray:[F

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/high16 v27, 0x3f80

    sub-float v27, v27, v8

    aput v27, v25, v26

    .line 721
    const/high16 v25, 0x4000

    mul-float v25, v25, v17

    mul-float v9, v25, v16

    .line 722
    .local v9, f12:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mMatrixArray:[F

    move-object/from16 v25, v0

    const/16 v26, 0x3

    aput v9, v25, v26

    .line 723
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mMatrixArray:[F

    move-object/from16 v25, v0

    const/16 v26, 0x1

    aput v9, v25, v26

    .line 724
    const/high16 v25, 0x4000

    mul-float v25, v25, v16

    mul-float v10, v25, v16

    .line 725
    .local v10, f13:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mMatrixArray:[F

    move-object/from16 v25, v0

    const/16 v26, 0x4

    const/high16 v27, 0x3f80

    sub-float v27, v27, v10

    aput v27, v25, v26

    .line 726
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Matrix;->reset()V

    .line 728
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mMatrixArray:[F

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Matrix;->setValues([F)V

    .line 730
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderX2:F

    move/from16 v26, v0

    move/from16 v0, v26

    neg-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderY2:F

    move/from16 v27, v0

    move/from16 v0, v27

    neg-float v0, v0

    move/from16 v27, v0

    invoke-virtual/range {v25 .. v27}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 731
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderX2:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderY2:F

    move/from16 v27, v0

    invoke-virtual/range {v25 .. v27}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 733
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFrontBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 735
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 737
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderX22:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderY22:F

    move/from16 v26, v0

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 744
    move-object/from16 v0, v24

    move/from16 v1, v20

    move/from16 v2, v18

    move/from16 v3, v21

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 745
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 747
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 748
    return-void

    .line 697
    .end local v5           #d:D
    .end local v8           #f10:F
    .end local v9           #f12:F
    .end local v10           #f13:F
    .end local v13           #f5:F
    .end local v14           #f6:F
    .end local v15           #f7:F
    .end local v16           #f8:F
    .end local v17           #f9:F
    .end local v22           #l1:D
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderX22:F

    move/from16 v25, v0

    sub-float v25, v25, v12

    const/high16 v26, 0x3f80

    sub-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v20, v0

    .line 698
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderX22:F

    move/from16 v25, v0

    const/high16 v26, 0x3f80

    add-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v21, v0

    .line 699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderShadowDrawableRL:Landroid/graphics/drawable/GradientDrawable;

    move-object/from16 v24, v0

    goto/16 :goto_0
.end method

.method public drawFrontShadow(Landroid/graphics/Canvas;F)V
    .locals 49
    .parameter "paramCanvas"
    .parameter "paramFloat"

    .prologue
    .line 760
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mTouchToCornerDis:F

    move/from16 v45, v0

    const/high16 v46, 0x4120

    div-float v9, v45, v46

    .line 761
    .local v9, f3:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mMaxFrontShadowW:I

    move/from16 v45, v0

    move/from16 v0, v45

    int-to-float v0, v0

    move/from16 v45, v0

    move/from16 v0, v45

    invoke-static {v9, v0}, Ljava/lang/Math;->min(FF)F

    move-result v10

    .line 762
    .local v10, f4:F
    const v45, 0x3fb4fdf4

    mul-float v11, v10, v45

    .line 764
    .local v11, f5:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderY1:F

    move/from16 v45, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mTouchY:F

    move/from16 v46, v0

    sub-float v45, v45, v46

    move/from16 v0, v45

    float-to-double v0, v0

    move-wide/from16 v23, v0

    .line 765
    .local v23, l1:D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mTouchX:F

    move/from16 v45, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderX1:F

    move/from16 v46, v0

    sub-float v45, v45, v46

    move/from16 v0, v45

    float-to-double v0, v0

    move-wide/from16 v31, v0

    .line 766
    .local v31, l2:D
    const-wide/16 v4, 0x0

    .line 767
    .local v4, d1:D
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mIsLBorRT:Z

    move/from16 v45, v0

    if-nez v45, :cond_0

    .line 768
    move-wide/from16 v0, v23

    move-wide/from16 v2, v31

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v45

    const-wide v47, 0x4002d70a3d70a3d7L

    sub-double v4, v45, v47

    .line 773
    :goto_0
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v45

    float-to-double v0, v11

    move-wide/from16 v47, v0

    mul-double v6, v45, v47

    .line 774
    .local v6, d3:D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mTouchX:F

    move/from16 v45, v0

    move/from16 v0, v45

    float-to-double v0, v0

    move-wide/from16 v45, v0

    sub-double v21, v45, v6

    .line 775
    .local v21, i6:D
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v45

    move-wide/from16 v0, v45

    double-to-float v0, v0

    move/from16 v45, v0

    mul-float v12, v45, v11

    .line 777
    .local v12, f7:F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mIsLBorRT:Z

    move/from16 v45, v0

    if-nez v45, :cond_1

    .line 778
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mTouchY:F

    move/from16 v45, v0

    add-float v13, v45, v12

    .line 787
    .local v13, f8:F
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderX1:F

    move/from16 v45, v0

    move/from16 v0, v45

    float-to-double v0, v0

    move-wide/from16 v45, v0

    sub-double v33, v21, v45

    .line 788
    .local v33, l5:D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderY1:F

    move/from16 v45, v0

    sub-float v45, v13, v45

    move/from16 v0, v45

    float-to-double v0, v0

    move-wide/from16 v35, v0

    .line 789
    .local v35, l6:D
    invoke-static/range {v33 .. v36}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v45

    const-wide/high16 v47, 0x3ff0

    add-double v45, v45, v47

    move-wide/from16 v0, v45

    double-to-float v14, v0

    .line 790
    .local v14, f9:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderX2:F

    move/from16 v45, v0

    move/from16 v0, v45

    float-to-double v0, v0

    move-wide/from16 v45, v0

    sub-double v37, v21, v45

    .line 791
    .local v37, l7:D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderY2:F

    move/from16 v45, v0

    sub-float v45, v13, v45

    move/from16 v0, v45

    float-to-double v0, v0

    move-wide/from16 v39, v0

    .line 792
    .local v39, l8:D
    invoke-static/range {v37 .. v40}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v45

    const-wide/high16 v47, 0x3ff0

    add-double v45, v45, v47

    move-wide/from16 v0, v45

    double-to-float v8, v0

    .line 793
    .local v8, f10:F
    const/16 v44, 0x0

    .line 794
    .local v44, localGradientDrawable1:Landroid/graphics/drawable/GradientDrawable;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mIsLBorRT:Z

    move/from16 v45, v0

    if-nez v45, :cond_2

    .line 795
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderX2:F

    move/from16 v45, v0

    sub-float v45, v45, v10

    const/high16 v46, 0x3f80

    sub-float v45, v45, v46

    move/from16 v0, v45

    float-to-int v15, v0

    .line 796
    .local v15, i11:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderX2:F

    move/from16 v45, v0

    const/high16 v46, 0x3f80

    add-float v45, v45, v46

    move/from16 v0, v45

    float-to-int v0, v0

    move/from16 v16, v0

    .line 797
    .local v16, i12:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderY2:F

    move/from16 v45, v0

    const/high16 v46, 0x3f80

    sub-float v45, v45, v46

    move/from16 v0, v45

    float-to-int v0, v0

    move/from16 v17, v0

    .line 798
    .local v17, i13:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderY2:F

    move/from16 v45, v0

    add-float v45, v45, v8

    const/high16 v46, 0x3f80

    add-float v45, v45, v46

    move/from16 v0, v45

    float-to-int v0, v0

    move/from16 v18, v0

    .line 799
    .local v18, i14:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFrontShadowDrawableVRL:Landroid/graphics/drawable/GradientDrawable;

    move-object/from16 v44, v0

    .line 807
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mPath1:Landroid/graphics/Path;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/graphics/Path;->reset()V

    .line 808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mPath1:Landroid/graphics/Path;

    move-object/from16 v45, v0

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v46, v0

    move-object/from16 v0, v45

    move/from16 v1, v46

    invoke-virtual {v0, v1, v13}, Landroid/graphics/Path;->moveTo(FF)V

    .line 809
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mPath1:Landroid/graphics/Path;

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mTouchX:F

    move/from16 v46, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mTouchY:F

    move/from16 v47, v0

    invoke-virtual/range {v45 .. v47}, Landroid/graphics/Path;->lineTo(FF)V

    .line 810
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mPath1:Landroid/graphics/Path;

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderX2:F

    move/from16 v46, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderY2:F

    move/from16 v47, v0

    invoke-virtual/range {v45 .. v47}, Landroid/graphics/Path;->lineTo(FF)V

    .line 811
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mPath1:Landroid/graphics/Path;

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderX22:F

    move/from16 v46, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderY22:F

    move/from16 v47, v0

    invoke-virtual/range {v45 .. v47}, Landroid/graphics/Path;->lineTo(FF)V

    .line 812
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mPath1:Landroid/graphics/Path;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/graphics/Path;->close()V

    .line 814
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 815
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mPath0:Landroid/graphics/Path;

    move-object/from16 v45, v0

    sget-object v46, Landroid/graphics/Region$Op;->XOR:Landroid/graphics/Region$Op;

    move-object/from16 v0, p1

    move-object/from16 v1, v45

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 816
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mPath1:Landroid/graphics/Path;

    move-object/from16 v45, v0

    sget-object v46, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object/from16 v0, p1

    move-object/from16 v1, v45

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 817
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderX2:F

    move/from16 v45, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mTouchX:F

    move/from16 v46, v0

    sub-float v45, v45, v46

    move/from16 v0, v45

    float-to-double v0, v0

    move-wide/from16 v41, v0

    .line 818
    .local v41, l9:D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mTouchY:F

    move/from16 v45, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderY2:F

    move/from16 v46, v0

    sub-float v45, v45, v46

    move/from16 v0, v45

    float-to-double v0, v0

    move-wide/from16 v25, v0

    .line 819
    .local v25, l10:D
    move-wide/from16 v0, v41

    move-wide/from16 v2, v25

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v45

    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v45

    move-wide/from16 v0, v45

    double-to-float v0, v0

    move/from16 v19, v0

    .line 820
    .local v19, i27:F
    move-object/from16 v43, p1

    .line 822
    .local v43, localCanvas3:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderX2:F

    move/from16 v45, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderY2:F

    move/from16 v46, v0

    move-object/from16 v0, v43

    move/from16 v1, v19

    move/from16 v2, v45

    move/from16 v3, v46

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 824
    move-object/from16 v0, v44

    move/from16 v1, v17

    move/from16 v2, v16

    move/from16 v3, v18

    invoke-virtual {v0, v15, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 825
    move-object/from16 v0, v44

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 826
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 828
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mPath1:Landroid/graphics/Path;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/graphics/Path;->reset()V

    .line 829
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mPath1:Landroid/graphics/Path;

    move-object/from16 v45, v0

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v46, v0

    move-object/from16 v0, v45

    move/from16 v1, v46

    invoke-virtual {v0, v1, v13}, Landroid/graphics/Path;->moveTo(FF)V

    .line 830
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mPath1:Landroid/graphics/Path;

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mTouchX:F

    move/from16 v46, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mTouchY:F

    move/from16 v47, v0

    invoke-virtual/range {v45 .. v47}, Landroid/graphics/Path;->lineTo(FF)V

    .line 831
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mPath1:Landroid/graphics/Path;

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderX1:F

    move/from16 v46, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderY1:F

    move/from16 v47, v0

    invoke-virtual/range {v45 .. v47}, Landroid/graphics/Path;->lineTo(FF)V

    .line 832
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mPath1:Landroid/graphics/Path;

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderX11:F

    move/from16 v46, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderY11:F

    move/from16 v47, v0

    invoke-virtual/range {v45 .. v47}, Landroid/graphics/Path;->lineTo(FF)V

    .line 833
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mPath1:Landroid/graphics/Path;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/graphics/Path;->close()V

    .line 834
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mIsLBorRT:Z

    move/from16 v45, v0

    if-nez v45, :cond_3

    .line 835
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderY1:F

    move/from16 v45, v0

    const/high16 v46, 0x3f80

    sub-float v45, v45, v46

    move/from16 v0, v45

    float-to-int v0, v0

    move/from16 v17, v0

    .line 836
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderX1:F

    move/from16 v45, v0

    sub-float v45, v45, v14

    const/high16 v46, 0x3f80

    sub-float v45, v45, v46

    move/from16 v0, v45

    float-to-int v15, v0

    .line 837
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderX1:F

    move/from16 v45, v0

    const/high16 v46, 0x3f80

    add-float v45, v45, v46

    move/from16 v0, v45

    float-to-int v0, v0

    move/from16 v16, v0

    .line 838
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderY1:F

    move/from16 v45, v0

    add-float v45, v45, v10

    const/high16 v46, 0x3f80

    add-float v45, v45, v46

    move/from16 v0, v45

    float-to-int v0, v0

    move/from16 v18, v0

    .line 839
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFrontShadowDrawableHTB:Landroid/graphics/drawable/GradientDrawable;

    move-object/from16 v44, v0

    .line 850
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 851
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mPath0:Landroid/graphics/Path;

    move-object/from16 v45, v0

    sget-object v46, Landroid/graphics/Region$Op;->XOR:Landroid/graphics/Region$Op;

    move-object/from16 v0, p1

    move-object/from16 v1, v45

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 852
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mPath1:Landroid/graphics/Path;

    move-object/from16 v45, v0

    sget-object v46, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object/from16 v0, p1

    move-object/from16 v1, v45

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 854
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderY1:F

    move/from16 v45, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mTouchY:F

    move/from16 v46, v0

    sub-float v45, v45, v46

    move/from16 v0, v45

    float-to-double v0, v0

    move-wide/from16 v27, v0

    .line 855
    .local v27, l11:D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderX1:F

    move/from16 v45, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mTouchX:F

    move/from16 v46, v0

    sub-float v45, v45, v46

    move/from16 v0, v45

    float-to-double v0, v0

    move-wide/from16 v29, v0

    .line 856
    .local v29, l12:D
    invoke-static/range {v27 .. v30}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v45

    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v45

    move-wide/from16 v0, v45

    double-to-float v0, v0

    move/from16 v20, v0

    .line 857
    .local v20, i52:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderX1:F

    move/from16 v45, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderY1:F

    move/from16 v46, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v45

    move/from16 v3, v46

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 859
    move-object/from16 v0, v44

    move/from16 v1, v17

    move/from16 v2, v16

    move/from16 v3, v18

    invoke-virtual {v0, v15, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 860
    move-object/from16 v0, v44

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 862
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 863
    return-void

    .line 770
    .end local v6           #d3:D
    .end local v8           #f10:F
    .end local v12           #f7:F
    .end local v13           #f8:F
    .end local v14           #f9:F
    .end local v15           #i11:I
    .end local v16           #i12:I
    .end local v17           #i13:I
    .end local v18           #i14:I
    .end local v19           #i27:F
    .end local v20           #i52:F
    .end local v21           #i6:D
    .end local v25           #l10:D
    .end local v27           #l11:D
    .end local v29           #l12:D
    .end local v33           #l5:D
    .end local v35           #l6:D
    .end local v37           #l7:D
    .end local v39           #l8:D
    .end local v41           #l9:D
    .end local v43           #localCanvas3:Landroid/graphics/Canvas;
    .end local v44           #localGradientDrawable1:Landroid/graphics/drawable/GradientDrawable;
    :cond_0
    move-wide/from16 v0, v23

    move-wide/from16 v2, v31

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v45

    move-wide/from16 v0, v45

    neg-double v0, v0

    move-wide/from16 v45, v0

    const-wide v47, 0x4002d70a3d70a3d7L

    sub-double v4, v45, v47

    goto/16 :goto_0

    .line 780
    .restart local v6       #d3:D
    .restart local v12       #f7:F
    .restart local v21       #i6:D
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mTouchY:F

    move/from16 v45, v0

    sub-float v13, v45, v12

    .restart local v13       #f8:F
    goto/16 :goto_1

    .line 801
    .restart local v8       #f10:F
    .restart local v14       #f9:F
    .restart local v33       #l5:D
    .restart local v35       #l6:D
    .restart local v37       #l7:D
    .restart local v39       #l8:D
    .restart local v44       #localGradientDrawable1:Landroid/graphics/drawable/GradientDrawable;
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderX2:F

    move/from16 v45, v0

    const/high16 v46, 0x3f80

    sub-float v45, v45, v46

    move/from16 v0, v45

    float-to-int v15, v0

    .line 802
    .restart local v15       #i11:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderX2:F

    move/from16 v45, v0

    add-float v45, v45, v10

    const/high16 v46, 0x3f80

    add-float v45, v45, v46

    move/from16 v0, v45

    float-to-int v0, v0

    move/from16 v16, v0

    .line 803
    .restart local v16       #i12:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderY2:F

    move/from16 v45, v0

    const/high16 v46, 0x3f80

    sub-float v45, v45, v46

    move/from16 v0, v45

    float-to-int v0, v0

    move/from16 v17, v0

    .line 804
    .restart local v17       #i13:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderY2:F

    move/from16 v45, v0

    add-float v45, v45, v8

    const/high16 v46, 0x3f80

    add-float v45, v45, v46

    move/from16 v0, v45

    float-to-int v0, v0

    move/from16 v18, v0

    .line 805
    .restart local v18       #i14:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFrontShadowDrawableVLR:Landroid/graphics/drawable/GradientDrawable;

    move-object/from16 v44, v0

    goto/16 :goto_2

    .line 841
    .restart local v19       #i27:F
    .restart local v25       #l10:D
    .restart local v41       #l9:D
    .restart local v43       #localCanvas3:Landroid/graphics/Canvas;
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderX1:F

    move/from16 v45, v0

    sub-float v45, v45, v14

    const/high16 v46, 0x3f80

    sub-float v45, v45, v46

    move/from16 v0, v45

    float-to-int v15, v0

    .line 842
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderX1:F

    move/from16 v45, v0

    const/high16 v46, 0x3f80

    add-float v45, v45, v46

    move/from16 v0, v45

    float-to-int v0, v0

    move/from16 v16, v0

    .line 843
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderY1:F

    move/from16 v45, v0

    sub-float v45, v45, v10

    const/high16 v46, 0x3f80

    sub-float v45, v45, v46

    move/from16 v0, v45

    float-to-int v0, v0

    move/from16 v17, v0

    .line 844
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderY1:F

    move/from16 v45, v0

    const/high16 v46, 0x3f80

    add-float v45, v45, v46

    move/from16 v0, v45

    float-to-int v0, v0

    move/from16 v18, v0

    .line 845
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFrontShadowDrawableHBT:Landroid/graphics/drawable/GradientDrawable;

    move-object/from16 v44, v0

    goto/16 :goto_3
.end method

.method public final fliping(FF)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 866
    iput p1, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mTouchX:F

    .line 867
    iput p2, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mTouchY:F

    .line 868
    invoke-direct {p0}, Lcom/oppo/model/ms4d/OppoSeatEffect;->calcPoints()V

    .line 869
    return-void
.end method

.method public getCurrentX()F
    .locals 1

    .prologue
    .line 1076
    iget v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mCurrentX:F

    return v0
.end method

.method public getCurrentY()F
    .locals 1

    .prologue
    .line 1080
    iget v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mCurrentY:F

    return v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mMode:I

    return v0
.end method

.method public getScroller()Landroid/widget/Scroller;
    .locals 1

    .prologue
    .line 946
    iget-object v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method public final isAnimation()Z
    .locals 2

    .prologue
    .line 872
    const/4 v0, 0x0

    .line 873
    .local v0, bool:Z
    iget-object v1, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mScroller:Landroid/widget/Scroller;

    if-eqz v1, :cond_0

    .line 874
    iget-object v1, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_0

    .line 875
    const/4 v0, 0x1

    .line 878
    :cond_0
    return v0
.end method

.method public isTop()Z
    .locals 1

    .prologue
    .line 249
    iget-boolean v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mIsLBorRT:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "paramBitmap1"
    .parameter "paramBitmap2"

    .prologue
    .line 1033
    iput-object p1, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFrontBitmap:Landroid/graphics/Bitmap;

    .line 1034
    iput-object p2, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mBackBitmap:Landroid/graphics/Bitmap;

    .line 1035
    return-void
.end method

.method public setFolderBgColor(II)V
    .locals 15
    .parameter "paramInt"
    .parameter "color"

    .prologue
    .line 909
    const v1, 0x888888

    .line 910
    .local v1, i:I
    const/high16 v10, 0x42a0

    .line 911
    .local v10, j:I
    const v11, 0x3f0ccccd

    .line 912
    .local v11, k:I
    const/4 v12, 0x1

    .line 913
    .local v12, l:I
    const/4 v2, 0x0

    .line 915
    .local v2, i1:I
    const v13, 0x111111

    move/from16 v0, p1

    if-ne v0, v13, :cond_1

    .line 916
    iget-object v13, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mBackShadowColors:[I

    const v14, -0x777778

    aput v14, v13, v2

    .line 917
    iget-object v13, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mBackShadowColors:[I

    aput v1, v13, v12

    .line 918
    move/from16 v0, p1

    if-le v0, v1, :cond_0

    .line 943
    :goto_0
    return-void

    .line 921
    :cond_0
    iget-object v13, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFrontShadowColors:[I

    const v14, -0x7fddddde

    aput v14, v13, v2

    .line 922
    iget-object v13, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFrontShadowColors:[I

    const v14, 0x222222

    aput v14, v13, v12

    .line 927
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->red(I)I

    move-result v13

    mul-int/2addr v13, v11

    add-int/2addr v13, v10

    and-int/lit16 v3, v13, 0xff

    .line 928
    .local v3, i2:I
    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->green(I)I

    move-result v13

    mul-int/2addr v13, v11

    add-int/2addr v13, v10

    and-int/lit16 v4, v13, 0xff

    .line 929
    .local v4, i3:I
    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->blue(I)I

    move-result v13

    mul-int/2addr v13, v11

    add-int/2addr v13, v10

    and-int/lit16 v5, v13, 0xff

    .line 930
    .local v5, i4:I
    shl-int/lit8 v6, v3, 0x10

    .line 931
    .local v6, i5:I
    const/high16 v13, -0x100

    or-int v7, v13, v6

    .line 932
    .local v7, i6:I
    shl-int/lit8 v8, v4, 0x8

    .line 933
    .local v8, i7:I
    or-int v13, v7, v8

    or-int v9, v13, v5

    .line 935
    .local v9, i8:I
    move/from16 v0, p2

    iput v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFolderBgColor:I

    .line 939
    iget-object v13, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mBackShadowColors:[I

    const v14, -0x50eeeeef

    aput v14, v13, v2

    .line 940
    iget-object v13, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mBackShadowColors:[I

    const v14, 0x111111

    aput v14, v13, v12

    .line 941
    iget-object v13, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFrontShadowColors:[I

    const v14, -0x7f777778

    aput v14, v13, v2

    .line 942
    iget-object v13, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFrontShadowColors:[I

    aput v1, v13, v12

    goto :goto_0
.end method

.method public setFrontShadowColor(II)V
    .locals 9
    .parameter "startColor"
    .parameter "endColor"

    .prologue
    const/4 v4, -0x1

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 886
    if-eq p1, v4, :cond_0

    if-eq p2, v4, :cond_0

    .line 887
    iget-object v4, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFrontShadowColors:[I

    aput p1, v4, v6

    .line 888
    iget-object v4, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFrontShadowColors:[I

    aput p2, v4, v7

    .line 890
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 891
    .local v1, orientationFive:Landroid/graphics/drawable/GradientDrawable$Orientation;
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    new-array v5, v8, [I

    aput p1, v5, v6

    aput p2, v5, v7

    invoke-direct {v4, v1, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v4, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFrontShadowDrawableVLR:Landroid/graphics/drawable/GradientDrawable;

    .line 892
    iget-object v4, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFrontShadowDrawableVLR:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v4, v6}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 894
    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 895
    .local v3, orientationSix:Landroid/graphics/drawable/GradientDrawable$Orientation;
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    new-array v5, v8, [I

    aput p1, v5, v6

    aput p2, v5, v7

    invoke-direct {v4, v3, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v4, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFrontShadowDrawableVRL:Landroid/graphics/drawable/GradientDrawable;

    .line 896
    iget-object v4, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFrontShadowDrawableVRL:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v4, v6}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 898
    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 899
    .local v2, orientationSeven:Landroid/graphics/drawable/GradientDrawable$Orientation;
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    new-array v5, v8, [I

    aput p1, v5, v6

    aput p2, v5, v7

    invoke-direct {v4, v2, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v4, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFrontShadowDrawableHTB:Landroid/graphics/drawable/GradientDrawable;

    .line 900
    iget-object v4, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFrontShadowDrawableHTB:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v4, v6}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 902
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 903
    .local v0, orientationEight:Landroid/graphics/drawable/GradientDrawable$Orientation;
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    new-array v5, v8, [I

    aput p1, v5, v6

    aput p2, v5, v7

    invoke-direct {v4, v0, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v4, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFrontShadowDrawableHBT:Landroid/graphics/drawable/GradientDrawable;

    .line 904
    iget-object v4, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mFrontShadowDrawableHBT:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v4, v6}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 906
    .end local v0           #orientationEight:Landroid/graphics/drawable/GradientDrawable$Orientation;
    .end local v1           #orientationFive:Landroid/graphics/drawable/GradientDrawable$Orientation;
    .end local v2           #orientationSeven:Landroid/graphics/drawable/GradientDrawable$Orientation;
    .end local v3           #orientationSix:Landroid/graphics/drawable/GradientDrawable$Orientation;
    :cond_0
    return-void
.end method

.method public setMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 166
    iput p1, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mMode:I

    .line 167
    return-void
.end method

.method public startAnimation(Landroid/content/Context;I)Z
    .locals 9
    .parameter "paramContext"
    .parameter "paramInt"

    .prologue
    .line 1009
    const/4 v6, 0x0

    .line 1012
    .local v6, flag:Z
    iget-object v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mScroller:Landroid/widget/Scroller;

    if-nez v0, :cond_0

    .line 1013
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mScroller:Landroid/widget/Scroller;

    .line 1015
    :cond_0
    iget v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mCornerX:I

    if-lez v0, :cond_2

    .line 1016
    iget v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mTouchX:F

    add-float/2addr v0, v1

    neg-float v7, v0

    .line 1017
    .local v7, i1:F
    iget v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mCornerY:I

    int-to-float v0, v0

    iget v1, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mTouchY:F

    sub-float v8, v0, v1

    .line 1023
    .local v8, i4:F
    :goto_0
    iget-object v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mTouchX:F

    float-to-int v1, v1

    iget v2, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mTouchY:F

    float-to-int v2, v2

    float-to-int v3, v7

    float-to-int v4, v8

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1025
    iget-boolean v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mIsLeft:Z

    if-nez v0, :cond_1

    .line 1026
    const/4 v6, 0x1

    .line 1029
    :cond_1
    return v6

    .line 1019
    .end local v7           #i1:F
    .end local v8           #i4:F
    :cond_2
    iget v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mTouchX:F

    sub-float v7, v0, v1

    .line 1020
    .restart local v7       #i1:F
    iget v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mCornerY:I

    int-to-float v0, v0

    iget v1, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mTouchY:F

    sub-float v8, v0, v1

    .restart local v8       #i4:F
    goto :goto_0
.end method

.method public startBackAnimation(Landroid/content/Context;I)Z
    .locals 9
    .parameter "paramContext"
    .parameter "paramInt"

    .prologue
    const/high16 v2, 0x4000

    .line 950
    const/4 v6, 0x0

    .line 953
    .local v6, flag:Z
    iget-object v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mScroller:Landroid/widget/Scroller;

    if-nez v0, :cond_0

    .line 954
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mScroller:Landroid/widget/Scroller;

    .line 957
    :cond_0
    iget v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mCornerX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mTouchX:F

    sub-float/2addr v0, v1

    sub-float v7, v0, v2

    .line 959
    .local v7, i1:F
    iget-boolean v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mIsLBorRT:Z

    if-eqz v0, :cond_2

    .line 960
    iget v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mCornerY:I

    int-to-float v0, v0

    iget v1, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mTouchY:F

    sub-float/2addr v0, v1

    sub-float v8, v0, v2

    .line 965
    .local v8, i4:F
    :goto_0
    iget-object v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mTouchX:F

    float-to-int v1, v1

    iget v2, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mTouchY:F

    float-to-int v2, v2

    float-to-int v3, v7

    float-to-int v4, v8

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 967
    iget-boolean v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mIsLeft:Z

    if-eqz v0, :cond_1

    .line 968
    const/4 v6, 0x1

    .line 970
    :cond_1
    return v6

    .line 962
    .end local v8           #i4:F
    :cond_2
    iget v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mCornerY:I

    int-to-float v0, v0

    iget v1, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mTouchY:F

    sub-float/2addr v0, v1

    add-float v8, v0, v2

    .restart local v8       #i4:F
    goto :goto_0
.end method

.method public final startFlip(FF)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1068
    iput p1, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mTouchX:F

    .line 1069
    iput p2, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mTouchY:F

    .line 1070
    iget v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mWidth:I

    int-to-double v0, v0

    iget v2, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mHeight:I

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mMaxLength:F

    .line 1071
    invoke-direct {p0, p1, p2}, Lcom/oppo/model/ms4d/OppoSeatEffect;->calcCornerXY(FF)V

    .line 1072
    invoke-direct {p0}, Lcom/oppo/model/ms4d/OppoSeatEffect;->calcPoints()V

    .line 1073
    return-void
.end method

.method public startLastAnimation(Landroid/content/Context;I)V
    .locals 8
    .parameter "paramContext"
    .parameter "paramInt"

    .prologue
    .line 976
    iget-object v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mScroller:Landroid/widget/Scroller;

    if-nez v0, :cond_0

    .line 977
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mScroller:Landroid/widget/Scroller;

    .line 980
    :cond_0
    iget v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mWidth:I

    neg-int v1, v0

    .line 981
    .local v1, x:I
    iget v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mCornerY:I

    add-int/lit8 v0, v0, -0x64

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 983
    .local v2, y:I
    iget v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mCornerX:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x2

    int-to-float v6, v0

    .line 984
    .local v6, i1:F
    iget-boolean v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mIsLBorRT:Z

    if-eqz v0, :cond_1

    .line 985
    iget v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mCornerY:I

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x2

    int-to-float v7, v0

    .line 990
    .local v7, i4:F
    :goto_0
    iget-object v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mScroller:Landroid/widget/Scroller;

    float-to-int v3, v6

    float-to-int v4, v7

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 991
    return-void

    .line 987
    .end local v7           #i4:F
    :cond_1
    iget v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mCornerY:I

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x2

    int-to-float v7, v0

    .restart local v7       #i4:F
    goto :goto_0
.end method

.method public startNextAnimation(Landroid/content/Context;I)V
    .locals 10
    .parameter "paramContext"
    .parameter "paramInt"

    .prologue
    .line 996
    iget-object v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mScroller:Landroid/widget/Scroller;

    if-nez v0, :cond_0

    .line 997
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mScroller:Landroid/widget/Scroller;

    .line 1000
    :cond_0
    iget v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mWidth:I

    neg-int v8, v0

    .line 1001
    .local v8, x:I
    iget v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mCornerY:I

    add-int/lit8 v0, v0, -0x32

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v9

    .line 1002
    .local v9, y:I
    iget v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mCornerX:I

    sub-int v0, v8, v0

    int-to-float v6, v0

    .line 1003
    .local v6, i1:F
    iget v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mCornerY:I

    sub-int v0, v9, v0

    int-to-float v7, v0

    .line 1005
    .local v7, i4:F
    iget-object v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mCornerX:I

    iget v2, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mCornerY:I

    float-to-int v3, v6

    float-to-int v4, v7

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1006
    return-void
.end method

.method public startUpAnimation(Landroid/content/Context;)Z
    .locals 9
    .parameter "paramContext"

    .prologue
    .line 1038
    const/4 v6, 0x0

    .line 1042
    .local v6, flag:Z
    iget v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mCurrentX:F

    iget v1, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mCurrentY:F

    invoke-direct {p0, v0, v1}, Lcom/oppo/model/ms4d/OppoSeatEffect;->calcCornerXY(FF)V

    .line 1044
    iget v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mCurrentX:F

    iget v1, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 1045
    iget v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mCurrentX:F

    sub-float v7, v0, v1

    .line 1050
    .local v7, i1:F
    :goto_0
    iget v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mCurrentCornY:I

    int-to-float v0, v0

    iget v1, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mCurrentY:F

    sub-float v8, v0, v1

    .line 1052
    .local v8, i4:F
    iget-object v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mScroller:Landroid/widget/Scroller;

    if-nez v0, :cond_0

    .line 1053
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mScroller:Landroid/widget/Scroller;

    .line 1056
    :cond_0
    iget-object v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mCurrentX:F

    float-to-int v1, v1

    iget v2, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mCurrentY:F

    float-to-int v2, v2

    float-to-int v3, v7

    float-to-int v4, v8

    const/16 v5, 0x1f4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1058
    iget v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mCurrentX:F

    iget v1, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mCurrentIsLeft:Z

    if-eqz v0, :cond_2

    :cond_1
    iget v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mCurrentX:F

    iget v1, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_4

    iget-boolean v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mCurrentIsLeft:Z

    if-eqz v0, :cond_4

    .line 1059
    :cond_2
    const/4 v6, 0x0

    .line 1064
    :goto_1
    return v6

    .line 1047
    .end local v7           #i1:F
    .end local v8           #i4:F
    :cond_3
    iget v0, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mWidth:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/oppo/model/ms4d/OppoSeatEffect;->mCurrentX:F

    sub-float v7, v0, v1

    .restart local v7       #i1:F
    goto :goto_0

    .line 1061
    .restart local v8       #i4:F
    :cond_4
    const/4 v6, 0x1

    goto :goto_1
.end method
