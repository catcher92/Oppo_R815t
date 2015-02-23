.class Lcom/oppo/widget/Oppo3DSavePhotoView$SavePhotoRenderer;
.super Ljava/lang/Object;
.source "Oppo3DSavePhotoView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/Oppo3DSavePhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SavePhotoRenderer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/Oppo3DSavePhotoView;


# direct methods
.method public constructor <init>(Lcom/oppo/widget/Oppo3DSavePhotoView;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 436
    iput-object p1, p0, Lcom/oppo/widget/Oppo3DSavePhotoView$SavePhotoRenderer;->this$0:Lcom/oppo/widget/Oppo3DSavePhotoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 440
    const/4 v0, 0x0

    #setter for: Lcom/oppo/widget/Oppo3DSavePhotoView;->mModel:Lcom/oppo/model/md2/MdModel;
    invoke-static {p1, v0}, Lcom/oppo/widget/Oppo3DSavePhotoView;->access$102(Lcom/oppo/widget/Oppo3DSavePhotoView;Lcom/oppo/model/md2/MdModel;)Lcom/oppo/model/md2/MdModel;

    .line 441
    const-string v0, "savephoto_land.md2"

    #calls: Lcom/oppo/widget/Oppo3DSavePhotoView;->loadModel(Ljava/lang/String;)V
    invoke-static {p1, v0}, Lcom/oppo/widget/Oppo3DSavePhotoView;->access$200(Lcom/oppo/widget/Oppo3DSavePhotoView;Ljava/lang/String;)V

    .line 442
    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .parameter "gl"

    .prologue
    .line 511
    const/16 v0, 0x4100

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 513
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DSavePhotoView$SavePhotoRenderer;->this$0:Lcom/oppo/widget/Oppo3DSavePhotoView;

    #calls: Lcom/oppo/widget/Oppo3DSavePhotoView;->updateTime()V
    invoke-static {v0}, Lcom/oppo/widget/Oppo3DSavePhotoView;->access$1200(Lcom/oppo/widget/Oppo3DSavePhotoView;)V

    .line 515
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 516
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DSavePhotoView$SavePhotoRenderer;->this$0:Lcom/oppo/widget/Oppo3DSavePhotoView;

    #calls: Lcom/oppo/widget/Oppo3DSavePhotoView;->drawModel(Ljavax/microedition/khronos/opengles/GL10;)V
    invoke-static {v0, p1}, Lcom/oppo/widget/Oppo3DSavePhotoView;->access$1300(Lcom/oppo/widget/Oppo3DSavePhotoView;Ljavax/microedition/khronos/opengles/GL10;)V

    .line 517
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 518
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 9
    .parameter "gl"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 469
    invoke-interface {p1, v2, v2, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 470
    int-to-float v4, p2

    int-to-float v5, p3

    div-float v1, v4, v5

    .line 471
    .local v1, ratio:F
    invoke-static {}, Lcom/oppo/widget/Oppo3DSavePhotoView;->access$400()[I

    move-result-object v4

    aget v4, v4, v7

    if-ne v4, p2, :cond_0

    invoke-static {}, Lcom/oppo/widget/Oppo3DSavePhotoView;->access$400()[I

    move-result-object v4

    aget v4, v4, v8

    if-eq v4, p3, :cond_2

    :cond_0
    move v0, v3

    .line 474
    .local v0, init:Z
    :goto_0
    invoke-static {}, Lcom/oppo/widget/Oppo3DSavePhotoView;->access$400()[I

    move-result-object v4

    aput v2, v4, v2

    .line 475
    invoke-static {}, Lcom/oppo/widget/Oppo3DSavePhotoView;->access$400()[I

    move-result-object v4

    aput v2, v4, v3

    .line 476
    invoke-static {}, Lcom/oppo/widget/Oppo3DSavePhotoView;->access$400()[I

    move-result-object v3

    aput p2, v3, v7

    .line 477
    invoke-static {}, Lcom/oppo/widget/Oppo3DSavePhotoView;->access$400()[I

    move-result-object v3

    aput p3, v3, v8

    .line 479
    if-eqz v0, :cond_1

    .line 480
    invoke-static {}, Lcom/oppo/widget/Oppo3DSavePhotoView;->access$500()Lcom/oppo/model/lib/Vector3f;

    move-result-object v3

    const/high16 v4, 0x42a0

    div-float/2addr v4, v1

    const v5, 0x3f9a8279

    mul-float/2addr v4, v5

    iput v4, v3, Lcom/oppo/model/lib/Vector3f;->z:F

    .line 481
    iget-object v3, p0, Lcom/oppo/widget/Oppo3DSavePhotoView$SavePhotoRenderer;->this$0:Lcom/oppo/widget/Oppo3DSavePhotoView;

    #getter for: Lcom/oppo/widget/Oppo3DSavePhotoView;->mModel:Lcom/oppo/model/md2/MdModel;
    invoke-static {v3}, Lcom/oppo/widget/Oppo3DSavePhotoView;->access$100(Lcom/oppo/widget/Oppo3DSavePhotoView;)Lcom/oppo/model/md2/MdModel;

    move-result-object v3

    invoke-virtual {v3, v2, v6, v6}, Lcom/oppo/model/md2/MdModel;->fillRenderBuffer(ZFF)V

    .line 482
    invoke-static {}, Lcom/oppo/widget/Oppo3DSavePhotoView;->access$600()Lcom/oppo/model/lib/Vector3f;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/widget/Oppo3DSavePhotoView$SavePhotoRenderer;->this$0:Lcom/oppo/widget/Oppo3DSavePhotoView;

    #getter for: Lcom/oppo/widget/Oppo3DSavePhotoView;->mModel:Lcom/oppo/model/md2/MdModel;
    invoke-static {v3}, Lcom/oppo/widget/Oppo3DSavePhotoView;->access$100(Lcom/oppo/widget/Oppo3DSavePhotoView;)Lcom/oppo/model/md2/MdModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oppo/model/md2/MdModel;->getSphereCenter()Lcom/oppo/model/lib/Vector3f;

    move-result-object v3

    iget v3, v3, Lcom/oppo/model/lib/Vector3f;->x:F

    iput v3, v2, Lcom/oppo/model/lib/Vector3f;->x:F

    .line 483
    invoke-static {}, Lcom/oppo/widget/Oppo3DSavePhotoView;->access$600()Lcom/oppo/model/lib/Vector3f;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/widget/Oppo3DSavePhotoView$SavePhotoRenderer;->this$0:Lcom/oppo/widget/Oppo3DSavePhotoView;

    #getter for: Lcom/oppo/widget/Oppo3DSavePhotoView;->mModel:Lcom/oppo/model/md2/MdModel;
    invoke-static {v3}, Lcom/oppo/widget/Oppo3DSavePhotoView;->access$100(Lcom/oppo/widget/Oppo3DSavePhotoView;)Lcom/oppo/model/md2/MdModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oppo/model/md2/MdModel;->getSphereCenter()Lcom/oppo/model/lib/Vector3f;

    move-result-object v3

    iget v3, v3, Lcom/oppo/model/lib/Vector3f;->y:F

    iput v3, v2, Lcom/oppo/model/lib/Vector3f;->y:F

    .line 484
    invoke-static {}, Lcom/oppo/widget/Oppo3DSavePhotoView;->access$600()Lcom/oppo/model/lib/Vector3f;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/widget/Oppo3DSavePhotoView$SavePhotoRenderer;->this$0:Lcom/oppo/widget/Oppo3DSavePhotoView;

    #getter for: Lcom/oppo/widget/Oppo3DSavePhotoView;->mModel:Lcom/oppo/model/md2/MdModel;
    invoke-static {v3}, Lcom/oppo/widget/Oppo3DSavePhotoView;->access$100(Lcom/oppo/widget/Oppo3DSavePhotoView;)Lcom/oppo/model/md2/MdModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oppo/model/md2/MdModel;->getSphereCenter()Lcom/oppo/model/lib/Vector3f;

    move-result-object v3

    iget v3, v3, Lcom/oppo/model/lib/Vector3f;->z:F

    iput v3, v2, Lcom/oppo/model/lib/Vector3f;->z:F

    .line 491
    :cond_1
    const/16 v2, 0x1701

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 492
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 493
    const/high16 v2, 0x4234

    const/high16 v3, 0x3f80

    const v4, 0x459c4000

    invoke-static {}, Lcom/oppo/widget/Oppo3DSavePhotoView;->access$700()Lcom/oppo/model/lib/Matrix4f;

    move-result-object v5

    invoke-static {v2, v1, v3, v4, v5}, Lcom/oppo/model/lib/Matrix4f;->gluPersective(FFFFLcom/oppo/model/lib/Matrix4f;)V

    .line 495
    invoke-static {}, Lcom/oppo/widget/Oppo3DSavePhotoView;->access$700()Lcom/oppo/model/lib/Matrix4f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oppo/model/lib/Matrix4f;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixf(Ljava/nio/FloatBuffer;)V

    .line 496
    invoke-static {}, Lcom/oppo/widget/Oppo3DSavePhotoView;->access$700()Lcom/oppo/model/lib/Matrix4f;

    move-result-object v2

    invoke-static {}, Lcom/oppo/widget/Oppo3DSavePhotoView;->access$800()[F

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oppo/model/lib/Matrix4f;->fillFloatArray([F)V

    .line 498
    const/16 v2, 0x1700

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 500
    iget-object v2, p0, Lcom/oppo/widget/Oppo3DSavePhotoView$SavePhotoRenderer;->this$0:Lcom/oppo/widget/Oppo3DSavePhotoView;

    #calls: Lcom/oppo/widget/Oppo3DSavePhotoView;->setUpCamera(Ljavax/microedition/khronos/opengles/GL10;)V
    invoke-static {v2, p1}, Lcom/oppo/widget/Oppo3DSavePhotoView;->access$900(Lcom/oppo/widget/Oppo3DSavePhotoView;Ljavax/microedition/khronos/opengles/GL10;)V

    .line 502
    iget-object v2, p0, Lcom/oppo/widget/Oppo3DSavePhotoView$SavePhotoRenderer;->this$0:Lcom/oppo/widget/Oppo3DSavePhotoView;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    #setter for: Lcom/oppo/widget/Oppo3DSavePhotoView;->mLastTime:J
    invoke-static {v2, v3, v4}, Lcom/oppo/widget/Oppo3DSavePhotoView;->access$1002(Lcom/oppo/widget/Oppo3DSavePhotoView;J)J

    .line 503
    iget-object v2, p0, Lcom/oppo/widget/Oppo3DSavePhotoView$SavePhotoRenderer;->this$0:Lcom/oppo/widget/Oppo3DSavePhotoView;

    #setter for: Lcom/oppo/widget/Oppo3DSavePhotoView;->mFrame:F
    invoke-static {v2, v6}, Lcom/oppo/widget/Oppo3DSavePhotoView;->access$1102(Lcom/oppo/widget/Oppo3DSavePhotoView;F)F

    .line 504
    return-void

    .end local v0           #init:Z
    :cond_2
    move v0, v2

    .line 471
    goto/16 :goto_0
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 3
    .parameter "gl"
    .parameter "config"

    .prologue
    const/4 v2, 0x0

    .line 449
    const/16 v0, 0xbd0

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 450
    const/16 v0, 0xc50

    const/16 v1, 0x1102

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glHint(II)V

    .line 451
    invoke-interface {p1, v2, v2, v2, v2}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 452
    const/16 v0, 0x1d01

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    .line 453
    const/16 v0, 0x900

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glFrontFace(I)V

    .line 454
    const/16 v0, 0xb44

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 455
    const/16 v0, 0x405

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glCullFace(I)V

    .line 457
    const/16 v0, 0xb71

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 458
    const/16 v0, 0xb50

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 459
    const/16 v0, 0xbe2

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 461
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DSavePhotoView$SavePhotoRenderer;->this$0:Lcom/oppo/widget/Oppo3DSavePhotoView;

    const/4 v1, 0x0

    #setter for: Lcom/oppo/widget/Oppo3DSavePhotoView;->mSnapshotTextureID:I
    invoke-static {v0, v1}, Lcom/oppo/widget/Oppo3DSavePhotoView;->access$302(Lcom/oppo/widget/Oppo3DSavePhotoView;I)I

    .line 462
    return-void
.end method
