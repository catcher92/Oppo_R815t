.class public Lcom/oppo/widget/Oppo3DLomoCmView;
.super Lcom/oppo/widget/Oppo3DGLView;
.source "Oppo3DLomoCmView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;
    }
.end annotation


# static fields
.field public static final CONDITION_CM_CLOSE:I = -0x1

.field public static final CONDITION_CM_OPEN:I = 0x1

.field private static final ENABLE_LIGHT:Z = true

.field private static final FOUR_MODE:I = 0x4

.field private static final FRONT_FIRST_FRAME:F = 0.0f

.field private static final FRONT_TEXTURE_INDEX:I = 0x0

.field private static final LOGD:Z = true

.field private static final MD_ANIMATION_FPS:I = 0x30

.field private static final ONE_MODE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Oppo3DLomoCmView"

.field private static final THREE_MODE:I = 0x3

.field private static TOTAL_FRAME:F = 0.0f

.field private static final TWO_MODE:I = 0x2

.field private static mAnimateMode:I

.field private static final sTextureIndex:[I

.field private static final sTextureName:[Ljava/lang/String;


# instance fields
.field private MODEL_HEIGHT_PORTRAIT:F

.field private MODEL_WIDTH_PORTRAIT:F

.field private m3DX:F

.field private m3DY:F

.field private m3DZ:F

.field private mCondition:I

.field private mContext:Landroid/content/Context;

.field private mFrame:F

.field private mFrontTexture:Landroid/graphics/Bitmap;

.field private mFrontTextureId:I

.field private mInit3DX:F

.field private mInit3DY:F

.field private mInit3DZ:F

.field private mLastTime:J

.field private mLightPos:[F

.field private mMatModel:Lcom/oppo/model/lib/Matrix4f;

.field private mMatProject:Lcom/oppo/model/lib/Matrix4f;

.field private mMatView:Lcom/oppo/model/lib/Matrix4f;

.field private mMatrixProjectArray:[F

.field private mModel:Lcom/oppo/model/ms3d/MsModel;

.field private mNeedupdateTexture:Z

.field mOppoLomoCmView:Lcom/oppo/widget/Oppo3DLomoCmView;

.field private mRenderer:Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;

.field private mScaleX:F

.field private mScaleY:F

.field private mTransferX:F

.field private mTransferY:F

.field private mTransferZ:F

.field private mViewport:[I

.field private matTrans:Lcom/oppo/model/lib/Matrix4f;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 67
    const/high16 v0, 0x41a0

    sput v0, Lcom/oppo/widget/Oppo3DLomoCmView;->TOTAL_FRAME:F

    .line 78
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "front.bmp"

    aput-object v1, v0, v2

    sput-object v0, Lcom/oppo/widget/Oppo3DLomoCmView;->sTextureName:[Ljava/lang/String;

    .line 80
    new-array v0, v3, [I

    aput v2, v0, v2

    sput-object v0, Lcom/oppo/widget/Oppo3DLomoCmView;->sTextureIndex:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 121
    invoke-direct {p0, p1}, Lcom/oppo/widget/Oppo3DGLView;-><init>(Landroid/content/Context;)V

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->mCondition:I

    .line 73
    const/high16 v0, 0x42a0

    iput v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->MODEL_WIDTH_PORTRAIT:F

    .line 74
    const/high16 v0, 0x4240

    iput v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->MODEL_HEIGHT_PORTRAIT:F

    .line 88
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->mViewport:[I

    .line 89
    new-instance v0, Lcom/oppo/model/lib/Matrix4f;

    invoke-direct {v0}, Lcom/oppo/model/lib/Matrix4f;-><init>()V

    iput-object v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->mMatProject:Lcom/oppo/model/lib/Matrix4f;

    .line 90
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->mMatrixProjectArray:[F

    .line 91
    new-instance v0, Lcom/oppo/model/lib/Matrix4f;

    invoke-direct {v0}, Lcom/oppo/model/lib/Matrix4f;-><init>()V

    iput-object v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->mMatView:Lcom/oppo/model/lib/Matrix4f;

    .line 92
    new-instance v0, Lcom/oppo/model/lib/Matrix4f;

    invoke-direct {v0}, Lcom/oppo/model/lib/Matrix4f;-><init>()V

    iput-object v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->mMatModel:Lcom/oppo/model/lib/Matrix4f;

    .line 109
    iput v1, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->mTransferX:F

    .line 110
    iput v1, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->mTransferY:F

    .line 111
    iput v1, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->mTransferZ:F

    .line 112
    iput v1, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->m3DX:F

    .line 113
    iput v1, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->m3DY:F

    .line 114
    iput v1, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->m3DZ:F

    .line 116
    iput v1, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->mInit3DX:F

    .line 117
    iput v1, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->mInit3DY:F

    .line 118
    iput v1, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->mInit3DZ:F

    .line 122
    invoke-direct {p0, p1}, Lcom/oppo/widget/Oppo3DLomoCmView;->init(Landroid/content/Context;)V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 126
    invoke-direct {p0, p1, p2}, Lcom/oppo/widget/Oppo3DGLView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->mCondition:I

    .line 73
    const/high16 v0, 0x42a0

    iput v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->MODEL_WIDTH_PORTRAIT:F

    .line 74
    const/high16 v0, 0x4240

    iput v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->MODEL_HEIGHT_PORTRAIT:F

    .line 88
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->mViewport:[I

    .line 89
    new-instance v0, Lcom/oppo/model/lib/Matrix4f;

    invoke-direct {v0}, Lcom/oppo/model/lib/Matrix4f;-><init>()V

    iput-object v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->mMatProject:Lcom/oppo/model/lib/Matrix4f;

    .line 90
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->mMatrixProjectArray:[F

    .line 91
    new-instance v0, Lcom/oppo/model/lib/Matrix4f;

    invoke-direct {v0}, Lcom/oppo/model/lib/Matrix4f;-><init>()V

    iput-object v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->mMatView:Lcom/oppo/model/lib/Matrix4f;

    .line 92
    new-instance v0, Lcom/oppo/model/lib/Matrix4f;

    invoke-direct {v0}, Lcom/oppo/model/lib/Matrix4f;-><init>()V

    iput-object v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->mMatModel:Lcom/oppo/model/lib/Matrix4f;

    .line 109
    iput v1, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->mTransferX:F

    .line 110
    iput v1, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->mTransferY:F

    .line 111
    iput v1, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->mTransferZ:F

    .line 112
    iput v1, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->m3DX:F

    .line 113
    iput v1, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->m3DY:F

    .line 114
    iput v1, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->m3DZ:F

    .line 116
    iput v1, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->mInit3DX:F

    .line 117
    iput v1, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->mInit3DY:F

    .line 118
    iput v1, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->mInit3DZ:F

    .line 127
    invoke-direct {p0, p1}, Lcom/oppo/widget/Oppo3DLomoCmView;->init(Landroid/content/Context;)V

    .line 128
    return-void
.end method

.method static synthetic access$100(Lcom/oppo/widget/Oppo3DLomoCmView;)Lcom/oppo/model/lib/Matrix4f;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->matTrans:Lcom/oppo/model/lib/Matrix4f;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/oppo/widget/Oppo3DLomoCmView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->mInit3DX:F

    return v0
.end method

.method static synthetic access$102(Lcom/oppo/widget/Oppo3DLomoCmView;Lcom/oppo/model/lib/Matrix4f;)Lcom/oppo/model/lib/Matrix4f;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->matTrans:Lcom/oppo/model/lib/Matrix4f;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/oppo/widget/Oppo3DLomoCmView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->m3DY:F

    return v0
.end method

.method static synthetic access$1102(Lcom/oppo/widget/Oppo3DLomoCmView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput p1, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->m3DY:F

    return p1
.end method

.method static synthetic access$1200(Lcom/oppo/widget/Oppo3DLomoCmView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->mInit3DY:F

    return v0
.end method

.method static synthetic access$1300(Lcom/oppo/widget/Oppo3DLomoCmView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->mFrontTextureId:I

    return v0
.end method

.method static synthetic access$1302(Lcom/oppo/widget/Oppo3DLomoCmView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput p1, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->mFrontTextureId:I

    return p1
.end method

.method static synthetic access$1400(Lcom/oppo/widget/Oppo3DLomoCmView;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->mFrontTexture:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/oppo/widget/Oppo3DLomoCmView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->mNeedupdateTexture:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/oppo/widget/Oppo3DLomoCmView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->mNeedupdateTexture:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/oppo/widget/Oppo3DLomoCmView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->mTransferX:F

    return v0
.end method

.method static synthetic access$1602(Lcom/oppo/widget/Oppo3DLomoCmView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput p1, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->mTransferX:F

    return p1
.end method

.method static synthetic access$1700(Lcom/oppo/widget/Oppo3DLomoCmView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->mTransferY:F

    return v0
.end method

.method static synthetic access$1702(Lcom/oppo/widget/Oppo3DLomoCmView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput p1, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->mTransferY:F

    return p1
.end method

.method static synthetic access$1800(Lcom/oppo/widget/Oppo3DLomoCmView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->mTransferZ:F

    return v0
.end method

.method static synthetic access$1802(Lcom/oppo/widget/Oppo3DLomoCmView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput p1, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->mTransferZ:F

    return p1
.end method

.method static synthetic access$1900(Lcom/oppo/widget/Oppo3DLomoCmView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->mCondition:I

    return v0
.end method

.method static synthetic access$1902(Lcom/oppo/widget/Oppo3DLomoCmView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput p1, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->mCondition:I

    return p1
.end method

.method static synthetic access$200(Lcom/oppo/widget/Oppo3DLomoCmView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->mScaleX:F

    return v0
.end method

.method static synthetic access$2000(Lcom/oppo/widget/Oppo3DLomoCmView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->mFrame:F

    return v0
.end method

.method static synthetic access$2002(Lcom/oppo/widget/Oppo3DLomoCmView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput p1, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->mFrame:F

    return p1
.end method

.method static synthetic access$2008(Lcom/oppo/widget/Oppo3DLomoCmView;)F
    .locals 2
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->mFrame:F

    const/high16 v1, 0x3f80

    add-float/2addr v1, v0

    iput v1, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->mFrame:F

    return v0
.end method

.method static synthetic access$2010(Lcom/oppo/widget/Oppo3DLomoCmView;)F
    .locals 2
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->mFrame:F

    const/high16 v1, 0x3f80

    sub-float v1, v0, v1

    iput v1, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->mFrame:F

    return v0
.end method

.method static synthetic access$202(Lcom/oppo/widget/Oppo3DLomoCmView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput p1, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->mScaleX:F

    return p1
.end method

.method static synthetic access$2024(Lcom/oppo/widget/Oppo3DLomoCmView;F)F
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iget v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->mFrame:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->mFrame:F

    return v0
.end method

.method static synthetic access$2100()F
    .locals 1

    .prologue
    .line 55
    sget v0, Lcom/oppo/widget/Oppo3DLomoCmView;->TOTAL_FRAME:F

    return v0
.end method

.method static synthetic access$2200(Lcom/oppo/widget/Oppo3DLomoCmView;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->mLastTime:J

    return-wide v0
.end method

.method static synthetic access$2202(Lcom/oppo/widget/Oppo3DLomoCmView;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-wide p1, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->mLastTime:J

    return-wide p1
.end method

.method static synthetic access$2300()I
    .locals 1

    .prologue
    .line 55
    sget v0, Lcom/oppo/widget/Oppo3DLomoCmView;->mAnimateMode:I

    return v0
.end method

.method static synthetic access$2400(Lcom/oppo/widget/Oppo3DLomoCmView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->MODEL_HEIGHT_PORTRAIT:F

    return v0
.end method

.method static synthetic access$2500(Lcom/oppo/widget/Oppo3DLomoCmView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->m3DZ:F

    return v0
.end method

.method static synthetic access$300(Lcom/oppo/widget/Oppo3DLomoCmView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->mScaleY:F

    return v0
.end method

.method static synthetic access$302(Lcom/oppo/widget/Oppo3DLomoCmView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput p1, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->mScaleY:F

    return p1
.end method

.method static synthetic access$400(Lcom/oppo/widget/Oppo3DLomoCmView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/oppo/widget/Oppo3DLomoCmView;->load()V

    return-void
.end method

.method static synthetic access$500(Lcom/oppo/widget/Oppo3DLomoCmView;)Lcom/oppo/model/ms3d/MsModel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->mModel:Lcom/oppo/model/ms3d/MsModel;

    return-object v0
.end method

.method static synthetic access$600()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/oppo/widget/Oppo3DLomoCmView;->sTextureName:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700()[I
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/oppo/widget/Oppo3DLomoCmView;->sTextureIndex:[I

    return-object v0
.end method

.method static synthetic access$800(Lcom/oppo/widget/Oppo3DLomoCmView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->MODEL_WIDTH_PORTRAIT:F

    return v0
.end method

.method static synthetic access$900(Lcom/oppo/widget/Oppo3DLomoCmView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->m3DX:F

    return v0
.end method

.method static synthetic access$902(Lcom/oppo/widget/Oppo3DLomoCmView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput p1, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->m3DX:F

    return p1
.end method

.method private init(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    const/16 v1, 0x8

    .line 131
    iput-object p1, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->mContext:Landroid/content/Context;

    .line 133
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->mFrame:F

    .line 135
    iput-boolean v6, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->mNeedupdateTexture:Z

    .line 136
    const/16 v5, 0x10

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(IIIIII)V

    .line 139
    new-instance v0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;

    iget-object v1, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p0}, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;-><init>(Lcom/oppo/widget/Oppo3DLomoCmView;Landroid/content/Context;Lcom/oppo/widget/Oppo3DLomoCmView;)V

    iput-object v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->mRenderer:Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;

    .line 140
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->mRenderer:Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;

    invoke-virtual {p0, v0}, Lcom/oppo/widget/Oppo3DGLView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 142
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 143
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 144
    invoke-virtual {p0, v6}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 145
    return-void
.end method

.method private load()V
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->mModel:Lcom/oppo/model/ms3d/MsModel;

    if-nez v0, :cond_0

    .line 267
    const-string v0, "Oppo3DLomoCmView"

    const-string v1, "load model start ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const-string v0, "cameraface.ms3d"

    invoke-direct {p0, v0}, Lcom/oppo/widget/Oppo3DLomoCmView;->loadModel(Ljava/lang/String;)V

    .line 273
    const-string v0, "Oppo3DLomoCmView"

    const-string v1, "load model end ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_0
    return-void
.end method

.method private loadModel(Ljava/lang/String;)V
    .locals 7
    .parameter "modelName"

    .prologue
    .line 285
    :try_start_0
    iget-object v3, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 286
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

    .line 288
    .local v2, is:Ljava/io/InputStream;
    new-instance v3, Lcom/oppo/model/ms3d/MsModel;

    invoke-direct {v3}, Lcom/oppo/model/ms3d/MsModel;-><init>()V

    iput-object v3, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->mModel:Lcom/oppo/model/ms3d/MsModel;

    .line 290
    iget-object v3, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->mModel:Lcom/oppo/model/ms3d/MsModel;

    invoke-virtual {v3, v2}, Lcom/oppo/model/ms3d/MsModel;->Load(Ljava/io/InputStream;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 291
    iget-object v3, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->mModel:Lcom/oppo/model/ms3d/MsModel;

    invoke-virtual {v3}, Lcom/oppo/model/ms3d/MsModel;->setupJoints()V

    .line 292
    iget-object v3, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->mModel:Lcom/oppo/model/ms3d/MsModel;

    iget v4, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->mFrame:F

    invoke-virtual {v3, v4}, Lcom/oppo/model/ms3d/MsModel;->setFrame(F)V

    .line 293
    iget-object v3, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->mModel:Lcom/oppo/model/ms3d/MsModel;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/oppo/model/ms3d/MsModel;->fillRenderBuffer(IFF)V

    .line 299
    :goto_0
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 303
    .end local v0           #am:Landroid/content/res/AssetManager;
    .end local v2           #is:Ljava/io/InputStream;
    :goto_1
    return-void

    .line 296
    .restart local v0       #am:Landroid/content/res/AssetManager;
    .restart local v2       #is:Ljava/io/InputStream;
    :cond_0
    const-string v3, "Oppo3DLomoCmView"

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
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 300
    .end local v0           #am:Landroid/content/res/AssetManager;
    .end local v2           #is:Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 301
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public StartAnimateStation(I)V
    .locals 4
    .parameter "mode"

    .prologue
    const/high16 v3, 0x4220

    const/high16 v2, 0x41c0

    const/high16 v1, -0x3de0

    const/high16 v0, -0x3e40

    .line 213
    sput p1, Lcom/oppo/widget/Oppo3DLomoCmView;->mAnimateMode:I

    .line 214
    packed-switch p1, :pswitch_data_0

    .line 238
    :goto_0
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->mRenderer:Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;

    #calls: Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->initPosition()V
    invoke-static {v0}, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->access$000(Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;)V

    .line 239
    return-void

    .line 216
    :pswitch_0
    iput v1, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->mInit3DX:F

    .line 217
    iput v2, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->mInit3DY:F

    goto :goto_0

    .line 221
    :pswitch_1
    iput v3, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->mInit3DX:F

    .line 222
    iput v2, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->mInit3DY:F

    goto :goto_0

    .line 226
    :pswitch_2
    iput v1, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->mInit3DX:F

    .line 227
    iput v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->mInit3DY:F

    goto :goto_0

    .line 231
    :pswitch_3
    iput v3, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->mInit3DX:F

    .line 232
    iput v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->mInit3DY:F

    goto :goto_0

    .line 214
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public StartCloseAnimate()V
    .locals 2

    .prologue
    .line 191
    const-string v0, "Oppo3DLomoCmView"

    const-string v1, "StartCloseAnimate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->mRenderer:Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->setCondition(I)V

    .line 194
    invoke-virtual {p0}, Lcom/oppo/widget/Oppo3DLomoCmView;->requestRender()V

    .line 195
    return-void
.end method

.method public StartOpenAnimate()V
    .locals 2

    .prologue
    .line 171
    const-string v0, "Oppo3DLomoCmView"

    const-string v1, "StartOpenAnimate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->mRenderer:Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->setCondition(I)V

    .line 174
    invoke-virtual {p0}, Lcom/oppo/widget/Oppo3DLomoCmView;->requestRender()V

    .line 175
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 160
    const-string v0, "Oppo3DLomoCmView"

    const-string v1, "onDetachedFromWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-super {p0}, Lcom/oppo/widget/Oppo3DGLView;->onDetachedFromWindow()V

    .line 163
    invoke-virtual {p0}, Lcom/oppo/widget/Oppo3DLomoCmView;->releaseData()V

    .line 164
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 149
    invoke-super {p0}, Lcom/oppo/widget/Oppo3DGLView;->onPause()V

    .line 150
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 154
    invoke-super {p0}, Lcom/oppo/widget/Oppo3DGLView;->onResume()V

    .line 155
    return-void
.end method

.method public releaseData()V
    .locals 2

    .prologue
    .line 256
    const-string v0, "Oppo3DLomoCmView"

    const-string v1, "releaseData()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->mModel:Lcom/oppo/model/ms3d/MsModel;

    invoke-virtual {v0}, Lcom/oppo/model/ms3d/MsModel;->releaseModel()V

    .line 259
    return-void
.end method

.method public requestRender()V
    .locals 1

    .prologue
    .line 678
    invoke-virtual {p0}, Lcom/oppo/widget/Oppo3DGLView;->isDirtyRenderMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 679
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 681
    :cond_0
    return-void
.end method

.method public setTexture(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "front"

    .prologue
    .line 247
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->mNeedupdateTexture:Z

    .line 248
    iput-object p1, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->mFrontTexture:Landroid/graphics/Bitmap;

    .line 249
    return-void
.end method

.method public setTotalframe(F)V
    .locals 0
    .parameter "frame"

    .prologue
    .line 183
    sput p1, Lcom/oppo/widget/Oppo3DLomoCmView;->TOTAL_FRAME:F

    .line 184
    return-void
.end method

.method public stopAnimate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 202
    const-string v0, "Oppo3DLomoCmView"

    const-string v1, "******> stopAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    sget-object v0, Lcom/oppo/widget/Oppo3DGLView$EventCode;->EVENT_SCROLL_COMPLETE:Lcom/oppo/widget/Oppo3DGLView$EventCode;

    iget v1, p0, Lcom/oppo/widget/Oppo3DLomoCmView;->mCondition:I

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/oppo/widget/Oppo3DGLView;->postInvokeOn3DEvent(Lcom/oppo/widget/Oppo3DGLView$EventCode;III)V

    .line 205
    return-void
.end method
