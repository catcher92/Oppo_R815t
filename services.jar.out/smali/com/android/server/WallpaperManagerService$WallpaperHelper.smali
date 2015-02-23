.class public Lcom/android/server/WallpaperManagerService$WallpaperHelper;
.super Ljava/lang/Object;
.source "WallpaperManagerService.java"


# annotations
.annotation build Landroid/annotation/OppoHook;
    level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_CLASS:Landroid/annotation/OppoHook$OppoHookType;
    note = "gaoliang add for oppo-wallpaper"
    property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WallpaperHelper"
.end annotation


# instance fields
.field private final DEFAULT_WALLPAPER_RES_ID:I

.field private final MTK_PLATFORM_PROP:Ljava/lang/String;

.field public final WALLPAPER_SCREENS_SPAN:F

.field private mWidthOfDefaultWallpaper:I

.field final synthetic this$0:Lcom/android/server/WallpaperManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/WallpaperManagerService;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/server/WallpaperManagerService$WallpaperHelper;->this$0:Lcom/android/server/WallpaperManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperHelper;->mWidthOfDefaultWallpaper:I

    .line 116
    const/high16 v0, 0x4000

    iput v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperHelper;->WALLPAPER_SCREENS_SPAN:F

    .line 117
    const-string v0, "ro.mediatek.platform"

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperHelper;->MTK_PLATFORM_PROP:Ljava/lang/String;

    .line 118
    const v0, #android:drawable@default_wallpaper#t

    iput v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperHelper;->DEFAULT_WALLPAPER_RES_ID:I

    .line 124
    invoke-direct {p0, p2}, Lcom/android/server/WallpaperManagerService$WallpaperHelper;->getDefaultWallpaperWidth(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperHelper;->mWidthOfDefaultWallpaper:I

    .line 125
    return-void
.end method

.method static synthetic access$400(Lcom/android/server/WallpaperManagerService$WallpaperHelper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/server/WallpaperManagerService$WallpaperHelper;->checkSingleWallpaper()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/WallpaperManagerService$WallpaperHelper;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperHelper;->mWidthOfDefaultWallpaper:I

    return v0
.end method

.method private checkSingleWallpaper()V
    .locals 15

    .prologue
    .line 272
    iget-object v12, p0, Lcom/android/server/WallpaperManagerService$WallpaperHelper;->this$0:Lcom/android/server/WallpaperManagerService;

    invoke-virtual {v12}, Lcom/android/server/WallpaperManagerService;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v11

    .line 278
    .local v11, wpi:Landroid/app/WallpaperInfo;
    :try_start_0
    iget-object v12, p0, Lcom/android/server/WallpaperManagerService$WallpaperHelper;->this$0:Lcom/android/server/WallpaperManagerService;

    invoke-virtual {v12}, Lcom/android/server/WallpaperManagerService;->getWidthHint()I

    move-result v3

    .line 281
    .local v3, desiredMinimumWidth:I
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 282
    .local v6, displayMetrics:Landroid/util/DisplayMetrics;
    iget-object v12, p0, Lcom/android/server/WallpaperManagerService$WallpaperHelper;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v12, v12, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string v13, "window"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/WindowManager;

    .line 283
    .local v10, wm:Landroid/view/WindowManager;
    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v12

    invoke-virtual {v12, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 284
    iget v12, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v13, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 286
    .local v7, maxDim:I
    iget v12, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v13, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 295
    .local v8, minDim:I
    move v5, v8

    .line 296
    .local v5, dimWidth:I
    move v4, v7

    .line 298
    .local v4, dimHeight:I
    new-instance v0, Landroid/graphics/Point;

    const/4 v12, -0x1

    const/4 v13, -0x1

    invoke-direct {v0, v12, v13}, Landroid/graphics/Point;-><init>(II)V

    .line 299
    .local v0, bitmapSize:Landroid/graphics/Point;
    invoke-direct {p0, v0}, Lcom/android/server/WallpaperManagerService$WallpaperHelper;->getCurrentImageWallpaperInfo(Landroid/graphics/Point;)V

    .line 300
    const-string v12, "wallpaperDebug"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "new bitmap width = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const-string v12, "wallpaperDebug"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "new bitmap height = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget v12, v0, Landroid/graphics/Point;->x:I

    if-lez v12, :cond_4

    .line 303
    iget v2, v0, Landroid/graphics/Point;->x:I

    .line 304
    .local v2, bmWidth:I
    iget v1, v0, Landroid/graphics/Point;->y:I

    .line 311
    .local v1, bmHeight:I
    const/4 v9, 0x1

    .line 312
    .local v9, ratio:I
    if-ge v1, v7, :cond_0

    .line 313
    div-int v9, v7, v1

    .line 316
    :cond_0
    mul-int v12, v9, v2

    if-gt v12, v8, :cond_2

    if-eq v3, v8, :cond_2

    .line 318
    invoke-virtual {p0, v5, v4}, Lcom/android/server/WallpaperManagerService$WallpaperHelper;->setDimensionHints_extra(II)V

    .line 341
    .end local v0           #bitmapSize:Landroid/graphics/Point;
    .end local v1           #bmHeight:I
    .end local v2           #bmWidth:I
    .end local v3           #desiredMinimumWidth:I
    .end local v4           #dimHeight:I
    .end local v5           #dimWidth:I
    .end local v6           #displayMetrics:Landroid/util/DisplayMetrics;
    .end local v7           #maxDim:I
    .end local v8           #minDim:I
    .end local v9           #ratio:I
    .end local v10           #wm:Landroid/view/WindowManager;
    :cond_1
    :goto_0
    return-void

    .line 319
    .restart local v0       #bitmapSize:Landroid/graphics/Point;
    .restart local v1       #bmHeight:I
    .restart local v2       #bmWidth:I
    .restart local v3       #desiredMinimumWidth:I
    .restart local v4       #dimHeight:I
    .restart local v5       #dimWidth:I
    .restart local v6       #displayMetrics:Landroid/util/DisplayMetrics;
    .restart local v7       #maxDim:I
    .restart local v8       #minDim:I
    .restart local v9       #ratio:I
    .restart local v10       #wm:Landroid/view/WindowManager;
    :cond_2
    mul-int v12, v9, v2

    if-le v12, v8, :cond_1

    if-gt v3, v8, :cond_1

    .line 321
    iget-object v12, p0, Lcom/android/server/WallpaperManagerService$WallpaperHelper;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v12, v12, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v12}, Lcom/android/server/WallpaperManagerService$WallpaperHelper;->isScreenLarge(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 322
    int-to-float v12, v7

    invoke-virtual {p0, v7, v8}, Lcom/android/server/WallpaperManagerService$WallpaperHelper;->wallpaperTravelToScreenWidthRatio(II)F

    move-result v13

    mul-float/2addr v12, v13

    float-to-int v5, v12

    .line 327
    :goto_1
    invoke-virtual {p0, v5, v4}, Lcom/android/server/WallpaperManagerService$WallpaperHelper;->setDimensionHints_extra(II)V

    goto :goto_0

    .line 337
    .end local v0           #bitmapSize:Landroid/graphics/Point;
    .end local v1           #bmHeight:I
    .end local v2           #bmWidth:I
    .end local v3           #desiredMinimumWidth:I
    .end local v4           #dimHeight:I
    .end local v5           #dimWidth:I
    .end local v6           #displayMetrics:Landroid/util/DisplayMetrics;
    .end local v7           #maxDim:I
    .end local v8           #minDim:I
    .end local v9           #ratio:I
    .end local v10           #wm:Landroid/view/WindowManager;
    :catch_0
    move-exception v12

    goto :goto_0

    .line 324
    .restart local v0       #bitmapSize:Landroid/graphics/Point;
    .restart local v1       #bmHeight:I
    .restart local v2       #bmWidth:I
    .restart local v3       #desiredMinimumWidth:I
    .restart local v4       #dimHeight:I
    .restart local v5       #dimWidth:I
    .restart local v6       #displayMetrics:Landroid/util/DisplayMetrics;
    .restart local v7       #maxDim:I
    .restart local v8       #minDim:I
    .restart local v9       #ratio:I
    .restart local v10       #wm:Landroid/view/WindowManager;
    :cond_3
    int-to-float v12, v8

    const/high16 v13, 0x4000

    mul-float/2addr v12, v13

    float-to-int v12, v12

    invoke-static {v12, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_1

    .line 330
    .end local v1           #bmHeight:I
    .end local v2           #bmWidth:I
    .end local v9           #ratio:I
    :cond_4
    const/4 v12, -0x1

    iget v13, p0, Lcom/android/server/WallpaperManagerService$WallpaperHelper;->mWidthOfDefaultWallpaper:I

    if-eq v12, v13, :cond_1

    iget v12, p0, Lcom/android/server/WallpaperManagerService$WallpaperHelper;->mWidthOfDefaultWallpaper:I

    if-eq v3, v12, :cond_1

    .line 332
    iget v5, p0, Lcom/android/server/WallpaperManagerService$WallpaperHelper;->mWidthOfDefaultWallpaper:I

    .line 333
    invoke-virtual {p0, v5, v4}, Lcom/android/server/WallpaperManagerService$WallpaperHelper;->setDimensionHints_extra(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private getCurrentImageWallpaperInfo(Landroid/graphics/Point;)V
    .locals 8
    .parameter "bmpInfo"

    .prologue
    .line 235
    const/4 v0, 0x0

    .line 237
    .local v0, bm:Landroid/graphics/Bitmap;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 238
    .local v4, params:Landroid/os/Bundle;
    new-instance v5, Lcom/android/server/WallpaperManagerService$WallpaperHelper$1;

    invoke-direct {v5, p0}, Lcom/android/server/WallpaperManagerService$WallpaperHelper$1;-><init>(Lcom/android/server/WallpaperManagerService$WallpaperHelper;)V

    .line 243
    .local v5, wpmcb:Landroid/app/IWallpaperManagerCallback;
    iget-object v6, p0, Lcom/android/server/WallpaperManagerService$WallpaperHelper;->this$0:Lcom/android/server/WallpaperManagerService;

    invoke-virtual {v6, v5, v4}, Lcom/android/server/WallpaperManagerService;->getWallpaper(Landroid/app/IWallpaperManagerCallback;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 247
    .local v2, fd:Landroid/os/ParcelFileDescriptor;
    if-eqz v2, :cond_0

    .line 249
    :try_start_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 250
    .local v3, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x1

    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 251
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7, v3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 253
    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v6, p1, Landroid/graphics/Point;->x:I

    .line 254
    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v6, p1, Landroid/graphics/Point;->y:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :try_start_1
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 265
    .end local v3           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_0
    :goto_0
    return-void

    .line 255
    :catch_0
    move-exception v1

    .line 256
    .local v1, e:Ljava/lang/OutOfMemoryError;
    :try_start_2
    const-string v6, "WallpaperService"

    const-string v7, "getCurrentImageWallpaperInfo(): Can\'t decode file"

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 259
    :try_start_3
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 260
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v6

    goto :goto_0

    .line 258
    :catchall_0
    move-exception v6

    .line 259
    :try_start_4
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 258
    :goto_1
    throw v6

    .line 260
    :catch_2
    move-exception v7

    goto :goto_1
.end method

.method private getDefaultWallpaperWidth(Landroid/content/Context;)I
    .locals 8
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 130
    const/4 v4, -0x1

    .line 133
    .local v4, width:I
    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 134
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 136
    const-string v5, "non-mtk"

    const-string v6, "ro.mediatek.platform"

    const-string v7, "non-mtk"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 139
    .local v1, isMtkPlatform:Z
    :goto_0
    if-eqz v1, :cond_0

    .line 145
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 146
    .local v3, r:Landroid/content/res/Resources;
    const v5, #android:drawable@default_wallpaper#t

    invoke-static {v3, v5, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 147
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 148
    const-string v5, "WallpaperService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDefaultWallpaperWidth(): width = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    .end local v1           #isMtkPlatform:Z
    .end local v2           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v3           #r:Landroid/content/res/Resources;
    :goto_1
    return v4

    .line 136
    .restart local v2       #options:Landroid/graphics/BitmapFactory$Options;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 149
    .end local v2           #options:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v0

    .line 150
    .local v0, e:Ljava/lang/OutOfMemoryError;
    const-string v5, "WallpaperService"

    const-string v6, "getDefaultWallpaperWidth(): Can\'t decode res:"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public isScreenLarge(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 161
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v2, 0xf

    .line 163
    .local v1, screenSize:I
    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 170
    .local v0, isScreenLarge:Z
    :goto_0
    return v0

    .line 163
    .end local v0           #isScreenLarge:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDimensionHints_extra(II)V
    .locals 6
    .parameter "width"
    .parameter "height"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 210
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService$WallpaperHelper;->this$0:Lcom/android/server/WallpaperManagerService;

    const-string v3, "android.permission.SET_WALLPAPER_HINTS"

    #calls: Lcom/android/server/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/WallpaperManagerService;->access$000(Lcom/android/server/WallpaperManagerService;Ljava/lang/String;)V

    .line 211
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService$WallpaperHelper;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v3, v2, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 212
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 213
    .local v0, userId:I
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService$WallpaperHelper;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v2, v2, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WallpaperManagerService$WallpaperData;

    .line 214
    .local v1, wallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;
    if-nez v1, :cond_0

    .line 215
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wallpaper not yet initialized for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 227
    .end local v0           #userId:I
    .end local v1           #wallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 217
    .restart local v0       #userId:I
    .restart local v1       #wallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;
    :cond_0
    if-lez p1, :cond_1

    if-gtz p2, :cond_2

    .line 218
    :cond_1
    :try_start_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "width and height must be > 0"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 221
    :cond_2
    iget v2, v1, Lcom/android/server/WallpaperManagerService$WallpaperData;->width:I

    if-ne p1, v2, :cond_3

    iget v2, v1, Lcom/android/server/WallpaperManagerService$WallpaperData;->height:I

    if-eq p2, v2, :cond_4

    .line 222
    :cond_3
    iput p1, v1, Lcom/android/server/WallpaperManagerService$WallpaperData;->width:I

    .line 223
    iput p2, v1, Lcom/android/server/WallpaperManagerService$WallpaperData;->height:I

    .line 224
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService$WallpaperHelper;->this$0:Lcom/android/server/WallpaperManagerService;

    #calls: Lcom/android/server/WallpaperManagerService;->saveSettingsLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;)V
    invoke-static {v2, v1}, Lcom/android/server/WallpaperManagerService;->access$100(Lcom/android/server/WallpaperManagerService;Lcom/android/server/WallpaperManagerService$WallpaperData;)V

    .line 227
    :cond_4
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 228
    return-void
.end method

.method public wallpaperTravelToScreenWidthRatio(II)F
    .locals 9
    .parameter "width"
    .parameter "height"

    .prologue
    .line 180
    int-to-float v7, p1

    int-to-float v8, p2

    div-float v4, v7, v8

    .line 187
    .local v4, aspectRatio:F
    const v0, 0x3fcccccd

    .line 188
    .local v0, ASPECT_RATIO_LANDSCAPE:F
    const/high16 v1, 0x3f20

    .line 189
    .local v1, ASPECT_RATIO_PORTRAIT:F
    const/high16 v2, 0x3fc0

    .line 190
    .local v2, WALLPAPER_WIDTH_TO_SCREEN_RATIO_LANDSCAPE:F
    const v3, 0x3f99999a

    .line 197
    .local v3, WALLPAPER_WIDTH_TO_SCREEN_RATIO_PORTRAIT:F
    const v5, 0x3e9d89d7

    .line 200
    .local v5, x:F
    const v6, 0x3f80fc10

    .line 201
    .local v6, y:F
    const v7, 0x3e9d89d7

    mul-float/2addr v7, v4

    const v8, 0x3f80fc10

    add-float/2addr v7, v8

    return v7
.end method
