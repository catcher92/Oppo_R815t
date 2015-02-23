.class public Lcom/oppo/widget/Oppo3DSavePhotoView;
.super Landroid/opengl/GLSurfaceView;
.source "Oppo3DSavePhotoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/Oppo3DSavePhotoView$SavePhotoRenderer;,
        Lcom/oppo/widget/Oppo3DSavePhotoView$OnAnimationListener;
    }
.end annotation


# static fields
.field private static final CAMERA_WINDOW_OFFSET:I = 0xa0

.field private static final ENABLE_LIGHT:Z = false

.field private static final LANDSCAPE_END_FRAME:F = 12.0f

.field private static final LANDSCAPE_START_FRAME:F = 0.0f

.field private static final LOGD:Z = false

.field private static final MD_ANIMATION_FPS:I = 0x18

.field private static final MODEL_INIT_FRAME:F = 0.0f

.field private static final RENDERMODE_DIRTY:Z = true

.field private static final TAG:Ljava/lang/String; = "Oppo3DSavePhotoView-"

.field private static mLightPos:[F = null

.field private static mMatModel:Lcom/oppo/model/lib/Matrix4f; = null

.field private static mMatProject:Lcom/oppo/model/lib/Matrix4f; = null

.field private static mMatView:Lcom/oppo/model/lib/Matrix4f; = null

.field private static mMatrixProjectArray:[F = null

.field private static final mModelName:Ljava/lang/String; = "savephoto_land.md2"

.field private static mViewport:[I

.field private static matTrans:Lcom/oppo/model/lib/Matrix4f;

.field private static mvCenter:Lcom/oppo/model/lib/Vector3f;

.field private static mvEye:Lcom/oppo/model/lib/Vector3f;

.field private static mvSphereCenter:Lcom/oppo/model/lib/Vector3f;


# instance fields
.field private mAnimationFlag:Z

.field private mCollectTexture:Landroid/graphics/Bitmap;

.field private mCollectTextureID:I

.field private mContext:Landroid/content/Context;

.field private mFrame:F

.field private mLastTime:J

.field private mModel:Lcom/oppo/model/md2/MdModel;

.field private mNeedupdateTexture:Z

.field private mOnAnimationListener:Lcom/oppo/widget/Oppo3DSavePhotoView$OnAnimationListener;

.field private mRenderer:Lcom/oppo/widget/Oppo3DSavePhotoView$SavePhotoRenderer;

.field private mSnapshotTexture:Landroid/graphics/Bitmap;

.field private mSnapshotTextureID:I

.field private mUpdateCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 61
    new-array v0, v2, [I

    sput-object v0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mViewport:[I

    .line 62
    new-instance v0, Lcom/oppo/model/lib/Matrix4f;

    invoke-direct {v0}, Lcom/oppo/model/lib/Matrix4f;-><init>()V

    sput-object v0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mMatProject:Lcom/oppo/model/lib/Matrix4f;

    .line 63
    const/16 v0, 0x10

    new-array v0, v0, [F

    sput-object v0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mMatrixProjectArray:[F

    .line 64
    new-instance v0, Lcom/oppo/model/lib/Matrix4f;

    invoke-direct {v0}, Lcom/oppo/model/lib/Matrix4f;-><init>()V

    sput-object v0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mMatView:Lcom/oppo/model/lib/Matrix4f;

    .line 65
    new-instance v0, Lcom/oppo/model/lib/Matrix4f;

    invoke-direct {v0}, Lcom/oppo/model/lib/Matrix4f;-><init>()V

    sput-object v0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mMatModel:Lcom/oppo/model/lib/Matrix4f;

    .line 67
    new-instance v0, Lcom/oppo/model/lib/Vector3f;

    const v1, -0x3d69d99a

    invoke-direct {v0, v1, v3, v3}, Lcom/oppo/model/lib/Vector3f;-><init>(FFF)V

    sput-object v0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mvSphereCenter:Lcom/oppo/model/lib/Vector3f;

    .line 68
    new-instance v0, Lcom/oppo/model/lib/Vector3f;

    invoke-direct {v0, v3, v3, v3}, Lcom/oppo/model/lib/Vector3f;-><init>(FFF)V

    sput-object v0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mvEye:Lcom/oppo/model/lib/Vector3f;

    .line 69
    new-instance v0, Lcom/oppo/model/lib/Vector3f;

    invoke-direct {v0, v3, v3, v3}, Lcom/oppo/model/lib/Vector3f;-><init>(FFF)V

    sput-object v0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mvCenter:Lcom/oppo/model/lib/Vector3f;

    .line 70
    new-array v0, v2, [F

    const/4 v1, 0x0

    sget-object v2, Lcom/oppo/widget/Oppo3DSavePhotoView;->mvEye:Lcom/oppo/model/lib/Vector3f;

    iget v2, v2, Lcom/oppo/model/lib/Vector3f;->x:F

    aput v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/oppo/widget/Oppo3DSavePhotoView;->mvEye:Lcom/oppo/model/lib/Vector3f;

    iget v2, v2, Lcom/oppo/model/lib/Vector3f;->y:F

    aput v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/oppo/widget/Oppo3DSavePhotoView;->mvEye:Lcom/oppo/model/lib/Vector3f;

    iget v2, v2, Lcom/oppo/model/lib/Vector3f;->z:F

    aput v2, v0, v1

    const/4 v1, 0x3

    aput v3, v0, v1

    sput-object v0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mLightPos:[F

    .line 71
    new-instance v0, Lcom/oppo/model/lib/Matrix4f;

    invoke-direct {v0}, Lcom/oppo/model/lib/Matrix4f;-><init>()V

    sput-object v0, Lcom/oppo/widget/Oppo3DSavePhotoView;->matTrans:Lcom/oppo/model/lib/Matrix4f;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 109
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 73
    iput v0, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mUpdateCount:I

    .line 78
    iput-boolean v0, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mNeedupdateTexture:Z

    .line 79
    iput-object v1, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mSnapshotTexture:Landroid/graphics/Bitmap;

    .line 80
    iput v0, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mSnapshotTextureID:I

    .line 81
    iput-object v1, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mCollectTexture:Landroid/graphics/Bitmap;

    .line 82
    iput v0, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mCollectTextureID:I

    .line 110
    invoke-direct {p0, p1}, Lcom/oppo/widget/Oppo3DSavePhotoView;->init(Landroid/content/Context;)V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 114
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    iput v0, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mUpdateCount:I

    .line 78
    iput-boolean v0, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mNeedupdateTexture:Z

    .line 79
    iput-object v1, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mSnapshotTexture:Landroid/graphics/Bitmap;

    .line 80
    iput v0, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mSnapshotTextureID:I

    .line 81
    iput-object v1, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mCollectTexture:Landroid/graphics/Bitmap;

    .line 82
    iput v0, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mCollectTextureID:I

    .line 115
    invoke-direct {p0, p1}, Lcom/oppo/widget/Oppo3DSavePhotoView;->init(Landroid/content/Context;)V

    .line 116
    return-void
.end method

.method static synthetic access$000(Lcom/oppo/widget/Oppo3DSavePhotoView;)Lcom/oppo/widget/Oppo3DSavePhotoView$OnAnimationListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mOnAnimationListener:Lcom/oppo/widget/Oppo3DSavePhotoView$OnAnimationListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oppo/widget/Oppo3DSavePhotoView;)Lcom/oppo/model/md2/MdModel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mModel:Lcom/oppo/model/md2/MdModel;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/oppo/widget/Oppo3DSavePhotoView;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-wide p1, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mLastTime:J

    return-wide p1
.end method

.method static synthetic access$102(Lcom/oppo/widget/Oppo3DSavePhotoView;Lcom/oppo/model/md2/MdModel;)Lcom/oppo/model/md2/MdModel;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mModel:Lcom/oppo/model/md2/MdModel;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/oppo/widget/Oppo3DSavePhotoView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput p1, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mFrame:F

    return p1
.end method

.method static synthetic access$1200(Lcom/oppo/widget/Oppo3DSavePhotoView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/oppo/widget/Oppo3DSavePhotoView;->updateTime()V

    return-void
.end method

.method static synthetic access$1300(Lcom/oppo/widget/Oppo3DSavePhotoView;Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/oppo/widget/Oppo3DSavePhotoView;->drawModel(Ljavax/microedition/khronos/opengles/GL10;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oppo/widget/Oppo3DSavePhotoView;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/oppo/widget/Oppo3DSavePhotoView;->loadModel(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$302(Lcom/oppo/widget/Oppo3DSavePhotoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput p1, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mSnapshotTextureID:I

    return p1
.end method

.method static synthetic access$400()[I
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mViewport:[I

    return-object v0
.end method

.method static synthetic access$500()Lcom/oppo/model/lib/Vector3f;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mvEye:Lcom/oppo/model/lib/Vector3f;

    return-object v0
.end method

.method static synthetic access$600()Lcom/oppo/model/lib/Vector3f;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mvSphereCenter:Lcom/oppo/model/lib/Vector3f;

    return-object v0
.end method

.method static synthetic access$700()Lcom/oppo/model/lib/Matrix4f;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mMatProject:Lcom/oppo/model/lib/Matrix4f;

    return-object v0
.end method

.method static synthetic access$800()[F
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mMatrixProjectArray:[F

    return-object v0
.end method

.method static synthetic access$900(Lcom/oppo/widget/Oppo3DSavePhotoView;Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/oppo/widget/Oppo3DSavePhotoView;->setUpCamera(Ljavax/microedition/khronos/opengles/GL10;)V

    return-void
.end method

.method private drawModel(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 6
    .parameter "gl"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 257
    const/16 v0, 0xb50

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 258
    const/16 v0, 0x4000

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 260
    iget-boolean v0, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mNeedupdateTexture:Z

    if-eqz v0, :cond_0

    .line 261
    invoke-direct {p0, p1}, Lcom/oppo/widget/Oppo3DSavePhotoView;->updateTexture(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 262
    iput-boolean v4, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mNeedupdateTexture:Z

    .line 269
    :cond_0
    iget v0, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mFrame:F

    const/high16 v1, 0x4100

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 270
    sget-object v0, Lcom/oppo/widget/Oppo3DSavePhotoView;->matTrans:Lcom/oppo/model/lib/Matrix4f;

    invoke-virtual {v0}, Lcom/oppo/model/lib/Matrix4f;->setIdentity()V

    .line 271
    sget-object v0, Lcom/oppo/widget/Oppo3DSavePhotoView;->matTrans:Lcom/oppo/model/lib/Matrix4f;

    const/high16 v1, 0x3f00

    const v2, 0x3e99999a

    invoke-virtual {v0, v1, v2, v3}, Lcom/oppo/model/lib/Matrix4f;->setTranslation(FFF)V

    .line 272
    sget-object v0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mMatModel:Lcom/oppo/model/lib/Matrix4f;

    sget-object v1, Lcom/oppo/widget/Oppo3DSavePhotoView;->matTrans:Lcom/oppo/model/lib/Matrix4f;

    invoke-virtual {v0, v1}, Lcom/oppo/model/lib/Matrix4f;->set(Lcom/oppo/model/lib/Matrix4f;)V

    .line 274
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mModel:Lcom/oppo/model/md2/MdModel;

    iget v1, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mFrame:F

    invoke-virtual {v0, v1}, Lcom/oppo/model/md2/MdModel;->setFrame(F)V

    .line 275
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mModel:Lcom/oppo/model/md2/MdModel;

    invoke-virtual {v0, v5}, Lcom/oppo/model/md2/MdModel;->setDirtFlag(Z)V

    .line 276
    sget-object v0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mMatModel:Lcom/oppo/model/lib/Matrix4f;

    invoke-virtual {v0}, Lcom/oppo/model/lib/Matrix4f;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf(Ljava/nio/FloatBuffer;)V

    .line 278
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mModel:Lcom/oppo/model/md2/MdModel;

    const v1, 0x3f7c64f5

    const v2, 0x3f81dae6

    invoke-virtual {v0, v4, v1, v2}, Lcom/oppo/model/md2/MdModel;->fillRenderBuffer(ZFF)V

    .line 290
    :goto_0
    invoke-direct {p0, p1}, Lcom/oppo/widget/Oppo3DSavePhotoView;->render(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 291
    return-void

    .line 280
    :cond_1
    sget-object v0, Lcom/oppo/widget/Oppo3DSavePhotoView;->matTrans:Lcom/oppo/model/lib/Matrix4f;

    invoke-virtual {v0}, Lcom/oppo/model/lib/Matrix4f;->setIdentity()V

    .line 281
    sget-object v0, Lcom/oppo/widget/Oppo3DSavePhotoView;->matTrans:Lcom/oppo/model/lib/Matrix4f;

    const/high16 v1, 0x4070

    invoke-virtual {v0, v1, v3, v3}, Lcom/oppo/model/lib/Matrix4f;->setTranslation(FFF)V

    .line 282
    sget-object v0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mMatModel:Lcom/oppo/model/lib/Matrix4f;

    sget-object v1, Lcom/oppo/widget/Oppo3DSavePhotoView;->matTrans:Lcom/oppo/model/lib/Matrix4f;

    invoke-virtual {v0, v1}, Lcom/oppo/model/lib/Matrix4f;->set(Lcom/oppo/model/lib/Matrix4f;)V

    .line 284
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mModel:Lcom/oppo/model/md2/MdModel;

    iget v1, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mFrame:F

    invoke-virtual {v0, v1}, Lcom/oppo/model/md2/MdModel;->setFrame(F)V

    .line 285
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mModel:Lcom/oppo/model/md2/MdModel;

    invoke-virtual {v0, v5}, Lcom/oppo/model/md2/MdModel;->setDirtFlag(Z)V

    .line 286
    sget-object v0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mMatModel:Lcom/oppo/model/lib/Matrix4f;

    invoke-virtual {v0}, Lcom/oppo/model/lib/Matrix4f;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf(Ljava/nio/FloatBuffer;)V

    .line 287
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mModel:Lcom/oppo/model/md2/MdModel;

    const/high16 v1, 0x3fa0

    const/high16 v2, 0x3f80

    invoke-virtual {v0, v4, v1, v2}, Lcom/oppo/model/md2/MdModel;->fillRenderBuffer(ZFF)V

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    const/16 v1, 0x8

    .line 119
    iput-object p1, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mContext:Landroid/content/Context;

    .line 120
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mFrame:F

    .line 121
    iput-boolean v6, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mAnimationFlag:Z

    .line 123
    const/16 v5, 0x10

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(IIIIII)V

    .line 125
    new-instance v0, Lcom/oppo/widget/Oppo3DSavePhotoView$SavePhotoRenderer;

    iget-object v1, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/oppo/widget/Oppo3DSavePhotoView$SavePhotoRenderer;-><init>(Lcom/oppo/widget/Oppo3DSavePhotoView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mRenderer:Lcom/oppo/widget/Oppo3DSavePhotoView$SavePhotoRenderer;

    .line 126
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mRenderer:Lcom/oppo/widget/Oppo3DSavePhotoView$SavePhotoRenderer;

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 128
    invoke-virtual {p0, v6}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 133
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 134
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 135
    return-void
.end method

.method private invokeOnAnimationListener()V
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mOnAnimationListener:Lcom/oppo/widget/Oppo3DSavePhotoView$OnAnimationListener;

    if-eqz v0, :cond_0

    .line 370
    new-instance v0, Lcom/oppo/widget/Oppo3DSavePhotoView$1;

    invoke-direct {v0, p0}, Lcom/oppo/widget/Oppo3DSavePhotoView$1;-><init>(Lcom/oppo/widget/Oppo3DSavePhotoView;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 378
    :cond_0
    return-void
.end method

.method private loadModel(Ljava/lang/String;)V
    .locals 6
    .parameter "modelName"

    .prologue
    .line 162
    iget-object v3, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mModel:Lcom/oppo/model/md2/MdModel;

    if-eqz v3, :cond_0

    .line 183
    :goto_0
    return-void

    .line 166
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 167
    .local v0, am:Landroid/content/res/AssetManager;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "model/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 169
    .local v2, is:Ljava/io/InputStream;
    iget-object v3, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mModel:Lcom/oppo/model/md2/MdModel;

    if-nez v3, :cond_1

    .line 170
    new-instance v3, Lcom/oppo/model/md2/MdModel;

    invoke-direct {v3}, Lcom/oppo/model/md2/MdModel;-><init>()V

    iput-object v3, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mModel:Lcom/oppo/model/md2/MdModel;

    .line 173
    :cond_1
    iget-object v3, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mModel:Lcom/oppo/model/md2/MdModel;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lcom/oppo/model/md2/MdModel;->Load(Ljava/io/InputStream;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 174
    iget-object v3, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mModel:Lcom/oppo/model/md2/MdModel;

    iget v4, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mFrame:F

    invoke-virtual {v3, v4}, Lcom/oppo/model/md2/MdModel;->setFrame(F)V

    .line 179
    :goto_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 180
    .end local v0           #am:Landroid/content/res/AssetManager;
    .end local v2           #is:Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 181
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 176
    .end local v1           #ex:Ljava/lang/Exception;
    .restart local v0       #am:Landroid/content/res/AssetManager;
    .restart local v2       #is:Ljava/io/InputStream;
    :cond_2
    :try_start_1
    const-string v3, "Oppo3DSavePhotoView-"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Load Model Failed. modelName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private releaseModel()V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mModel:Lcom/oppo/model/md2/MdModel;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mModel:Lcom/oppo/model/md2/MdModel;

    invoke-virtual {v0}, Lcom/oppo/model/md2/MdModel;->releaseModel()V

    .line 191
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mModel:Lcom/oppo/model/md2/MdModel;

    .line 193
    :cond_0
    return-void
.end method

.method private render(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 8
    .parameter "gl"

    .prologue
    const/16 v7, 0x1406

    const v6, 0x8078

    const/4 v5, 0x0

    const/16 v4, 0xde1

    const/high16 v1, 0x3f80

    .line 208
    invoke-interface {p1, v1, v1, v1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 210
    const v1, 0x8074

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 215
    const/4 v0, 0x0

    .line 216
    .local v0, useTextureID:I
    iget v1, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mFrame:F

    const/high16 v2, 0x4100

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mCollectTextureID:I

    if-eqz v1, :cond_0

    .line 217
    iget v0, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mCollectTextureID:I

    .line 221
    :goto_0
    if-eqz v0, :cond_1

    .line 222
    const/16 v1, 0x2300

    const/16 v2, 0x2200

    const/high16 v3, 0x4604

    invoke-interface {p1, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 223
    invoke-interface {p1, v4, v0}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 225
    invoke-interface {p1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 227
    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 228
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mModel:Lcom/oppo/model/md2/MdModel;

    invoke-virtual {v2}, Lcom/oppo/model/md2/MdModel;->getTextureCoordsBuf()Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-interface {p1, v1, v7, v5, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 239
    :goto_1
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mModel:Lcom/oppo/model/md2/MdModel;

    invoke-virtual {v2}, Lcom/oppo/model/md2/MdModel;->getVertexBuf()Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-interface {p1, v1, v7, v5, v2}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 241
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mModel:Lcom/oppo/model/md2/MdModel;

    invoke-virtual {v2}, Lcom/oppo/model/md2/MdModel;->getNumTriangles()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    invoke-interface {p1, v1, v5, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 244
    const v1, 0x8074

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 245
    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 246
    const v1, 0x8075

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 247
    invoke-interface {p1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 248
    return-void

    .line 219
    :cond_0
    iget v0, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mSnapshotTextureID:I

    goto :goto_0

    .line 231
    :cond_1
    invoke-interface {p1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 232
    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    goto :goto_1
.end method

.method private setUpCamera(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .parameter "gl"

    .prologue
    .line 201
    const/16 v0, 0x1700

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 202
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 203
    sget-object v0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mvEye:Lcom/oppo/model/lib/Vector3f;

    sget-object v1, Lcom/oppo/widget/Oppo3DSavePhotoView;->mvCenter:Lcom/oppo/model/lib/Vector3f;

    sget-object v2, Lcom/oppo/model/lib/ModelUtils;->UP_DIRECT:Lcom/oppo/model/lib/Vector3f;

    sget-object v3, Lcom/oppo/widget/Oppo3DSavePhotoView;->mMatView:Lcom/oppo/model/lib/Matrix4f;

    invoke-static {v0, v1, v2, v3}, Lcom/oppo/model/lib/Matrix4f;->gluLookAt(Lcom/oppo/model/lib/Vector3f;Lcom/oppo/model/lib/Vector3f;Lcom/oppo/model/lib/Vector3f;Lcom/oppo/model/lib/Matrix4f;)V

    .line 204
    sget-object v0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mMatView:Lcom/oppo/model/lib/Matrix4f;

    invoke-virtual {v0}, Lcom/oppo/model/lib/Matrix4f;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixf(Ljava/nio/FloatBuffer;)V

    .line 205
    return-void
.end method

.method private updateTexture(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3
    .parameter "gl"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 340
    iget v0, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mSnapshotTextureID:I

    if-lez v0, :cond_0

    .line 341
    iget v0, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mSnapshotTextureID:I

    invoke-static {p1, v0}, Lcom/oppo/model/lib/TextureFactory;->deleteTexture(Ljavax/microedition/khronos/opengles/GL10;I)Z

    .line 342
    iput v1, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mSnapshotTextureID:I

    .line 344
    :cond_0
    iget v0, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mCollectTextureID:I

    if-lez v0, :cond_1

    .line 345
    iget v0, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mCollectTextureID:I

    invoke-static {p1, v0}, Lcom/oppo/model/lib/TextureFactory;->deleteTexture(Ljavax/microedition/khronos/opengles/GL10;I)Z

    .line 346
    iput v1, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mCollectTextureID:I

    .line 348
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mSnapshotTexture:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mSnapshotTexture:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 349
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mSnapshotTexture:Landroid/graphics/Bitmap;

    invoke-static {v0, p1, v1}, Lcom/oppo/model/lib/TextureFactory;->getTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;)I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mSnapshotTextureID:I

    .line 350
    iput-object v2, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mSnapshotTexture:Landroid/graphics/Bitmap;

    .line 355
    :goto_0
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mCollectTexture:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mCollectTexture:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 356
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mCollectTexture:Landroid/graphics/Bitmap;

    invoke-static {v0, p1, v1}, Lcom/oppo/model/lib/TextureFactory;->getTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;)I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mCollectTextureID:I

    .line 357
    iput-object v2, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mCollectTexture:Landroid/graphics/Bitmap;

    .line 366
    :goto_1
    return-void

    .line 352
    :cond_2
    const-string v0, "Oppo3DSavePhotoView-"

    const-string v1, "<-updateTexture-> The snapshot texture is null or recycled, CAN NOT get a texture ID!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 359
    :cond_3
    const-string v0, "Oppo3DSavePhotoView-"

    const-string v1, "<-updateTexture-> The mCollectTexture is null or recycled, CAN NOT get a texture ID!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private updateTime()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x4140

    const/high16 v6, 0x3f80

    .line 300
    iget-boolean v3, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mAnimationFlag:Z

    if-eqz v3, :cond_2

    .line 301
    iget v0, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mFrame:F

    .line 302
    .local v0, lastframe:F
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 303
    .local v1, time:J
    iget v3, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mFrame:F

    const/high16 v4, 0x4000

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    .line 304
    iget v3, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mFrame:F

    const/high16 v4, 0x3f00

    add-float/2addr v3, v4

    iput v3, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mFrame:F

    .line 314
    :goto_0
    iget v3, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mFrame:F

    sub-float/2addr v3, v0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_0

    .line 315
    add-float v3, v0, v6

    iput v3, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mFrame:F

    .line 317
    :cond_0
    iput-wide v1, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mLastTime:J

    .line 319
    iget v3, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mFrame:F

    cmpl-float v3, v3, v7

    if-ltz v3, :cond_1

    .line 320
    iget v3, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mUpdateCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mUpdateCount:I

    .line 321
    iput v7, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mFrame:F

    .line 322
    iget v3, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mUpdateCount:I

    const/4 v4, 0x2

    if-le v3, v4, :cond_1

    .line 323
    iput-boolean v8, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mAnimationFlag:Z

    .line 324
    invoke-direct {p0}, Lcom/oppo/widget/Oppo3DSavePhotoView;->invokeOnAnimationListener()V

    .line 325
    iput v8, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mUpdateCount:I

    .line 330
    :cond_1
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 334
    .end local v0           #lastframe:F
    .end local v1           #time:J
    :cond_2
    return-void

    .line 306
    .restart local v0       #lastframe:F
    .restart local v1       #time:J
    :cond_3
    iget v3, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mFrame:F

    iget-wide v4, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mLastTime:J

    sub-long v4, v1, v4

    long-to-float v4, v4

    const/high16 v5, 0x447a

    div-float/2addr v4, v5

    const/high16 v5, 0x41c0

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mFrame:F

    goto :goto_0
.end method


# virtual methods
.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 152
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onDetachedFromWindow()V

    .line 153
    invoke-direct {p0}, Lcom/oppo/widget/Oppo3DSavePhotoView;->releaseModel()V

    .line 154
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 139
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 140
    const/high16 v0, 0x4140

    iput v0, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mFrame:F

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mAnimationFlag:Z

    .line 142
    const/16 v0, 0x8

    invoke-super {p0, v0}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 143
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 147
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 148
    return-void
.end method

.method public setOnAnimationListener(Lcom/oppo/widget/Oppo3DSavePhotoView$OnAnimationListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 386
    iput-object p1, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mOnAnimationListener:Lcom/oppo/widget/Oppo3DSavePhotoView$OnAnimationListener;

    .line 387
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 428
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 432
    :goto_0
    return-void

    .line 431
    :cond_0
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->setVisibility(I)V

    goto :goto_0
.end method

.method public show(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 395
    iget-boolean v0, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mAnimationFlag:Z

    if-eqz v0, :cond_0

    .line 396
    const-string v0, "Oppo3DSavePhotoView-"

    const-string v1, " !!!! show   mAnimationFlag == true, return!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :goto_0
    return-void

    .line 399
    :cond_0
    iput-object p1, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mSnapshotTexture:Landroid/graphics/Bitmap;

    .line 400
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mNeedupdateTexture:Z

    .line 402
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mFrame:F

    .line 403
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mAnimationFlag:Z

    goto :goto_0
.end method

.method public show(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "firstBitmap"
    .parameter "lastBitmap"

    .prologue
    .line 413
    iput-object p2, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mCollectTexture:Landroid/graphics/Bitmap;

    .line 414
    invoke-virtual {p0, p1}, Lcom/oppo/widget/Oppo3DSavePhotoView;->show(Landroid/graphics/Bitmap;)V

    .line 415
    return-void
.end method

.method public startAnimation()V
    .locals 1

    .prologue
    .line 421
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mFrame:F

    .line 422
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/Oppo3DSavePhotoView;->mAnimationFlag:Z

    .line 423
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 424
    return-void
.end method
